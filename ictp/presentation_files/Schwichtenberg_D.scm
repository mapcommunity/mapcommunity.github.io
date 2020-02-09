; triest08demo.scm
; 2008-07-28

(load "~/minlog/init.scm")
(set! DOT-NOTATION #f)

(set! COMMENT-FLAG #f)
(libload "nat.scm")
(libload "list.scm")
(set! COMMENT-FLAG #t)
(remove-var-name "n" "m" "k")


; 1.  Formalization of the weak existence proof
; =============================================

(add-var-name "Rev" (py "list nat=>list nat=>boole"))

(add-var-name "x" "y" "n" "m" "k" (py "nat"))
(add-var-name "v" "w" "u" (py "list nat"))


; "ListAppendNilNat"
(set-goal (pf "all v v:+:(Nil nat)=v"))
(ind)
(use "Truth-Axiom")
(assume "n" "v" "IH")
(ng)
(use "IH")
; Proof finished.
(save "ListAppendNilNat")


; "ListAppendConsNat"
(set-goal (pf "all v,x,u v:+:(x::u)=v:+:x: :+:u"))
(ind)
(strip)
(use "Truth-Axiom")
(assume "x" "v" "IH")
(assume "y" "u")
(ng)
(use "IH")
; Proof finished.
(save "ListAppendConsNat")


; "AssocL"
(set-goal (pf "all v,v1,x,v2(v1:+:(x::v2)=v -> v1:+:x: :+:v2=v)"))
(assume "v")
(ind)

; Base
(assume "x" "v2" "H")
(use "H")

(assume "y" "v1" "IH" "x" "v2" "H")
(ng)
(simphyp "H" "ListAppendConsNat")
(use 3)
; Proof finished.
(save "AssocL")


; "InitSegNonRevStep"
(set-goal
 (pf "all Rev(
  all v,w,x(Rev v w -> Rev(v:+:x:)(x::w)) -> 
  all v,x,v2(
   all v1(v1:+:v2=v -> all w(Rev v1 w -> bot)) -> 
   all v1(v1:+:(x::v2)=v -> all w(Rev v1 w -> bot))))"))
(assume "Rev" "GenRev" "v" "x" "v2" "IH" "v1" "H1" "w" "H2")
(use-with "IH" (pt "v1:+:x:") "?" (pt "x::w") "?")
(use "AssocL")
(use "H1")
(use "GenRev")
(use "H2")
; Proof finished.
(save "InitSegNonRevStep")


; "InitSegNonRev"
(set-goal
 (pf "all Rev(
  all v,w,x(Rev v w -> Rev(v:+:x:)(x::w)) -> 
  all v(
   all w(Rev v w -> bot) -> 
   all v2 all v1(v1:+:v2=v -> all w(Rev v1 w -> bot))))"))
(assume "Rev" "GenRev" "v" "Hyp")
(ind)

; Base
(assume "v1" "v1Nil=v" "w" "Rev v1 w")
(simphyp "v1Nil=v" "ListAppendNilNat")
(drop "v1Nil=v")
(simphyp "Rev v1 w" 5)
(use "Hyp" (pt "w"))
(use 6)

; Step
(assume "x" "v2" "IH")
(use "InitSegNonRevStep")
(use "GenRev")
(use "IH")
; Proof finished.
(save "InitSegNonRev")


; "RevClass"
(set-goal
 (pf "all Rev,v(
      Rev(Nil nat)(Nil nat) -> 
      all v,w,x(Rev v w -> Rev(v:+:x:)(x::w)) ->
      excl w Rev v w)"))
(assume "Rev" "v" "InitRev" "GenRev")
(assume "Hyp")
(use-with "InitSegNonRev"
	  (pt "Rev") "GenRev" (pt "v") "Hyp" (pt "v")
	  (pt "(Nil nat)") "Truth-Axiom" (pt "(Nil nat)")
	  "InitRev")
; Proof finished.
(save "RevClass")


; 2.  Translation into an existence proof
; =======================================

(define min-excl-proof (theorem-name-to-proof "RevClass"))

(define ex-proof (atr-min-excl-proof-to-ex-proof min-excl-proof))
(add-var-name "g" (py "list nat=>list nat=>list nat"))

(define nproof (np ex-proof))
(define neproof (np (expand-theorems-with-positive-content nproof)))
(proof-to-expr-with-formulas neproof)

(pp (nt (proof-to-extracted-term neproof)))


; 3.  Optimal decoration
; ======================

(define decproof (decorate neproof))
(proof-to-expr-with-formulas decproof)

(add-var-name "f" (py "list nat=>list nat"))
(define neterm (nt (proof-to-extracted-term decproof)))
(pp neterm)

(pp (nt (mk-term-in-app-form neterm (pt "Rev") (pt "0::1::2::3::4:"))))
