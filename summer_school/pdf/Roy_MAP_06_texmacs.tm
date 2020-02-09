<TeXmacs|1.0.6.2>

<style|<tuple|article|bprnew|maxima>>

<\body>
  \;

  <doc-data|<doc-title|History of algorithms in real algebraic
  geometry>|<\doc-author-data|<author-name|Marie-Francoise
  Roy>|<\author-address>
    IRMAR (Université de Rennes 1/CNRS)
  </author-address>|<\author-address>
    MAP School Genova\ 

    28 august 2 september 2006
  </author-address>>
    \;
  </doc-author-data|<\author-address>
    \;
  </author-address>>||>

  \;

  <\unfolded-std>
    <section|Introduction>
  <|unfolded-std>
    Thanks to the project ``Sources in real algebraic geometry/Aux sources de
    la géométrie algébrique réelle'' (sources = before 1970).

    <\itemize-minus>
      <item>scientific committee: Hourya Benis Sinaceur, Michel Coste,
      Catherine Godstein, Alain Herreman, M-F R.

      <item>so far 25 participants\ 

      <\detailed-std>
        \ list of participants
      <|detailed-std>
        list of participants

        <\with|par-columns|2>
          Francesca Acquistapace

          <with|color|brown|Liliane Alfonsi>

          Saugata Basu

          <with|color|brown|Hourya Benis Sinaceur>

          Fabrizio Broglia

          <with|color|brown|Jean-Luc Chabert>

          Solen Corvez

          Michel Coste

          Martin Davis

          Charles Delzell

          Max Dichmann

          Eric Féron

          Danielle Gondard

          <\with|color|brown>
            Catherine Goldstein

            Alain Herreman
          </with>

          Johan Huisman

          Alain Lascoux

          Henri Lombardi

          Hervé Perdry

          Daniel Perrucci

          Richard Pollack

          Alex Prestel

          Marie-Françoise Roy

          <with|color|brown|Norbert Schappacher>

          Niels Schwartz
        </with>
      </detailed-std>

      <item>read sources, combining mathematicians and
      <with|color|brown|historians of mathematics>

      <item>make a website of <hlink|bibliographical references on real
      algebraic geometry|>

      http://thamous.univ-rennes1.fr/sites/gar/

      <item>including on line versions and comments for a list of identified
      ``sources texts''\ 

      <item>publish a source-book as a subset

      <item>various activities

      <\unfolded-std>
        activities
      <|unfolded-std>
        <\itemize-minus>
          <item><hlink|working group in Rennes|http://www.math.univ-rennes1.fr/geomreel/gtsources.html>
          since 2004\ 

          http://www.math.univ-rennes1.fr/geomreel/gtsources.html

          <item><hlink|Belle Ile workshop|http://thamous.univ-rennes1.fr/public/index.php?id=378&style=BurlyWood>
          2005

          <item><hlink|special day in Paris|>: séminaire d'histoire des
          mathématiques, trimester on real geometry at Centre Emile Borel,
          IHP

          <item><hlink|Cortona workshop|http://thamous.univ-rennes1.fr/public/index.php?id=529&style=BurlyWood>
          2006

          <item>CIRM workshop 2007
        </itemize-minus>
      </unfolded-std>

      <item>support: IRMAR, Centre Emile Borel, Institut Henri Poincaré
      (trimester on real geometry), Real Algebraic and Analytic Geometry
      network

      <item>not limited to algorithmic aspects of real algebraic geometry but
      including them

      <item>should be linked to interactive book <cite|BPR>.
    </itemize-minus>

    These two lectures: a first try to communicate information about this
    activity without reading together.
  </unfolded-std>

  <\unfolded-std>
    <section|Answers and remarks>
  <|unfolded-std>
    <\itemize-minus>
      <item>Why real algebra ? In complex algebra, a univariate polynomial
      has always roots. The only problem is the question of singularities:
      are the roots multiple ? This is done through gcd computations, or
      elimination (resultants, discriminants). In the real case there might
      be no roots. The miracle in the real case is that the same computations
      (carefully done: take care of signs) provides also the information on
      the number of real roots. Sturm is gcd computation + right signs.
      Hermite (see today's lecture) is computing the signature of the matrix
      whose determinant is the discriminant .... So more information, but not
      much mopre computations. In several cases, algebraic computation
      followed by sign conditions.

      <item>Why algorithms in real algebraic geometry ? There is not one
      generic case, there are many, and we want to know what is what !

      <item>Resolution of algebraic equations: splitting of one problem into
      many

      <\itemize-minus>
        <item>Laplace Gauss: add the root of an equation of big odd degree,
        and then extraction of square roots

        <item>Abel and Galois: no general resolution of algebraic equations
        by radicals, group theoretic conditions. Solvable groups, effective
        Galois theory

        <item>deciding the existence of real roots: exact methods

        <item>isolating real roots exactly

        <item>numerical methods
      </itemize-minus>

      <item>Sturm and Newton: Sturm does quote Newton method once he
      approached the root by decimalchotomy (cut into 10 rather than in 2).
    </itemize-minus>
  </unfolded-std>

  <\unfolded-std>
    <section|Real root counting >
  <|unfolded-std>
    <\unfolded-std>
      <subsection|Descartes, Budan-Fourier>
    <|unfolded-std>
      <\itemize-minus>
        <item>Descartes : number of roots by sign of coefficients

        <\unfolded-std>
          <hlink|Gallica BNF |> <cite|Des> page 57
        <|unfolded-std>
          Descartes takes one example

          <\equation*>
            x<rsup|4>-4*x<rsup|3>-19*x<rsup|2>+106*x-120=0
          </equation*>

          3 sign changes: 3 positive roots (``true'')

          changing <with|mode|math|x> in <with|mode|math|-x>:\ 

          <\equation*>
            x<rsup|4>+4*x<rsup|3>-19*x<rsup|2>-106*x-120=0
          </equation*>

          1 sign change: 1 negative root (``false'')

          <\unfolded-std>
            Compute\ 
          <|unfolded-std>
            <with|prog-language|maxima|prog-session|default|<\session>
              <\output>
                \;

                Maxima 5.9.3 http://maxima.sourceforge.net

                Using Lisp CLISP 2.34 (2005-07-20)

                Distributed under the GNU Public License. See the file
                COPYING.

                Dedicated to the memory of William Schelter.

                \;
              </output>

              <\input|<with|<with|color|red|(<with|math-font-family|rm|%i>1)
              <with|color|black|>>>>
                factor(x^4-4*x^3-19*x^2+106*x-120);
              </input>

              <\output>
                <with|<with|mode|math|math-display|true|<with|mode|text|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
                <with|color|black|>><left|(>x-4<right|)>*<left|(>x-3<right|)>*<left|(>x-2<right|)>*<left|(>x+5<right|)>>>
              </output>

              \;
            </session>>
          </unfolded-std>
        </unfolded-std>

        in the section where he proves that a polynomial of degree
        <with|mode|math|d> has at most <with|mode|math|d> roots

        <item>Budan <cite|Bud>, Fourier <cite|Fou>: number of roots in an
        interval by signs of the derivatives

        <item>modern statement <cite|BPR>

        <\unfolded-std>
          Budan-Fourier in modern terms
        <|unfolded-std>
          <\notation>
            <namenot|Sign variations> <label|2:def:signchanges>The
            <with|font-series|bold|number of sign variations><index|Number of
            sign variations>, <with|mode|math|<V>(a)<label|2:not-13>>, in a
            sequence, <with|mode|math|a=a<rsub|0>,\<cdots\>,a<rsub|p>>, of
            elements in <with|mode|math|<R>\<setminus\>{0}> is defined by
            induction on <with|mode|math|p> by:

            <\eqnarray*>
              <tformat|<table|<row|<cell|<V>(a<rsub|0>)>|<cell|=>|<cell|0>>|<row|<cell|<V>(a<rsub|0>,\<cdots\>,a<rsub|p>)>|<cell|=>|<cell|<cases|<tformat|<table|<row|<cell|<V>(a<rsub|1>,\<cdots\>,a<rsub|p>)+1>|<cell|<with|mode|text|if
              <with|mode|math|<space|0.75spc>a<rsub|0>*a<rsub|1>\<less\>0>>>>|<row|<cell|<V>(a<rsub|1>,\<cdots\>,a<rsub|p>)>|<cell|<with|mode|text|if
              <with|mode|math|<space|0.75spc>a<rsub|0>*a<rsub|1>\<gtr\>0>>>>>>>>>>>
            </eqnarray*>

            This definition extends to any finite sequence <with|mode|math|a>
            of elements in <with|mode|math|<R>> by considering the finite
            sequence <with|mode|math|b> obtained by dropping the zeros in
            <with|mode|math|a> and defining

            <\equation*>
              <with|mode|text|<with|mode|math|<V>(a)=<V>(b)>,
              <with|mode|math|<V>(\<emptyset\>)=0>.>
            </equation*>

            For example <with|mode|math|<V>(1,\<um\>1,2,0,0,3,4,\<um\>5,\<um\>2,0,3)=4>.
          </notation>

          <\notation>
            <namenot|Sign variations in a sequence of polynomials at
            <with|mode|math|a>> <label|2:not:variationsbetween>Let
            <with|mode|math|<with|math-font|cal|P>=P<rsub|0>,P<rsub|1>,\<ldots\>,P<rsub|d>>
            be a sequence of polynomials and let <with|mode|math|a> be an
            element of <with|mode|math|<R>\<cup\>{\<um\>\<infty\>,\<upl\>\<infty\>}>.
            The <with|font-series|bold|number of sign variations> of
            <with|mode|math|math-font|cal|P> at <with|mode|math|a>, denoted
            by<nbsp><with|mode|math|<V>(<with|math-font|cal|P>;a)><label|2:not-16>,
            is <with|mode|math|<V>(P<rsub|0>(a),\<ldots\>,P<rsub|d>(a))> (at
            <with|mode|math|\<um\>\<infty\>> and
            <with|mode|math|\<upl\>\<infty\>> the signs to consider are the
            signs of the leading monomials).\ 

            Given <with|mode|math|a> and <with|mode|math|b> in
            <with|mode|math|<R>\<cup\>{\<um\>\<infty\>,\<upl\>\<infty\>}>, we
            denote

            <\equation*>
              <with|mode|text|<with|mode|math|<V>(<with|math-font|cal|P>;a,b)>=<with|mode|math|<V>(<with|math-font|cal|P>;a)-<V>(<with|math-font|cal|P>;b).>>
            </equation*>

            \;
          </notation>

          We denote by <with|mode|math|<num>(P;(a,b])><label|1:not:numberwithmult><label|2:not-17>
          the number of roots of <with|mode|math|P> in <with|mode|math|(a,b]>
          counted with multiplicities.

          <\theorem>
            <nametheo|Budan-Fourier theorem><label|2:the:general descartes
            law of signs><index|Budan-Fourier theorem> Let <with|mode|math|P>
            be a univariate polynomial of degree <with|mode|math|p> in
            <with|mode|math|<R>[X]>. Given <with|mode|math|a> and
            <with|mode|math|b> in <with|mode|math|<R>\<cup\>{\<um\>\<infty\>,\<upl\>\<infty\>}>

            <\itemize-minus>
              <item><with|mode|math|<V>(<Der>(P);a,b)\<geq\><num>(P;(a,b])>,

              <item><with|mode|math|<V>(<Der>(P);a,b)-<num>(P;(a,b])> is
              even.
            </itemize-minus>
          </theorem>
        </unfolded-std>

        <item>recent research <cite|CLLR> <cite|BPR>

        <\unfolded-std>
          Virtual roots
        <|unfolded-std>
          A natural question when looking at Budan-Fourier's Theorem, is to
          interpret the even difference <with|mode|math|<V>(<Der>(P);a,b)-<num>(P;(a,b])>.
          This can be done through the notion of virtual roots.

          The <with|mode|math|><with|mode|math|>virtual roots of
          <with|mode|math|><with|mode|math|P> will enjoy the following
          properties:

          <\enumerate-alpha>
            <item> <with|mode|math|>the number of virtual roots of
            <with|mode|math|P> counted with virtual multiplicities is equal
            to the degree <with|mode|math|p> of <with|mode|math|P,>

            <item>on an open interval defined by its virtual roots, the sign
            of <with|mode|math|><with|mode|math|P> is fixed,

            <item><with|mode|math|>virtual roots of
            <with|mode|math|><with|mode|math|P> and <with|mode|math|>virtual
            roots of<with|mode|math|> <with|mode|math|P<rprime|'>> are
            interlaced: if <with|mode|math|x<rsub|1>\<le\>\<ldots\>\<le\>x<rsub|p>>
            are the virtual roots of <with|mode|math|P> and
            <with|mode|math|y<rsub|1>\<le\>\<ldots\>\<le\>y<rsub|p-1>> are
            the virtual roots of <with|mode|math|P,> then

            <\equation*>
              x<rsub|1>\<le\>y<rsub|1>\<le\>\<ldots\>\<le\>x<rsub|p-1>\<le\>y<rsub|p-1>\<le\>x<rsub|p>.
            </equation*>
          </enumerate-alpha>

          Given these properties, in the particular case where
          <with|mode|math|><with|mode|math|P> is a polynomial of degree
          <with|mode|math|p> with all its roots real and simple, virtual
          roots and real roots clearly coincide.\ 

          <\definition>
            <namenot|Virtual roots> The definition of
            <with|mode|math|><strong|virtual roots> <subindex|Virtual|roots>
            <label|2:def:virtual roots>proceeds by induction on
            <with|mode|math|><with|mode|math|p=deg<rsub|>(P)>. We prove
            simultaneously that properties a), b), c) hold.

            If <with|mode|math|p=0>, <with|mode|math|P> has no virtual root
            and properties a), b), c) hold.

            Suppose that properties a), b), c) hold for the virtual roots of
            <with|mode|math|P<rprime|'>>.

            <\enumerate-roman>
              By induction hypothesis the <with|mode|math|>virtual roots of
              P' are <with|mode|math|y<rsub|1>\<le\>\<ldots\>\<le\>y<rsub|p-1>>.
              Let

              <\equation*>
                I<rsub|1>=(-\<infty\>,y<rsub|1>],\<ldots\>,I<rsub|i>=[y<rsub|i-1>,y<rsub|i>],\<ldots\>,I<rsub|p>=[y<rsub|p-1>,+\<infty\>).
              </equation*>

              By induction hypothesis, the sign of
              <with|mode|math|P<rprime|'>><with|mode|math|> is fixed on the
              interior of each <with|mode|math|I<rsub|i>>. Let
              <with|mode|math|x<rsub|i>> be unique value in
              <with|mode|math|I<rsub|i>> such that the absolute value of
              <with|mode|math|P> on <with|mode|math|I<rsub|i>> reaches its
              minimum. The <with|mode|math|>virtual roots of<with|mode|math|
              ><with|mode|math|P> are <with|mode|math|x<rsub|1>\<le\>\<ldots\>\<le\>x<rsub|p>>.
            </enumerate-roman>

            According to this inductive definition, properties a), b) and c)
            are clear for <with|mode|math|>virtual roots of
            <with|mode|math|P>. Note that the virtual roots of
            <with|mode|math|P> are always roots of a derivative of
            <with|mode|math|P>.

            The <with|mode|math|><strong|virtual multiplicity>
            <subindex|Multiplicity|virtual ->
            <subindex|Virtual|multiplicity>of <with|mode|math|x> with respect
            to <with|mode|math|P>, denoted
            <with|mode|math|v(P,x)><label|2:not-virtual1> is the number of
            times <with|mode|math|x> is repeated in the list
            <with|mode|math|x<rsub|1>\<le\>\<ldots\>,\<le\>x<rsub|p>> of
            <with|mode|math|>virtual roots of <with|mode|math|P>. In
            particular, if <with|mode|math|x> is not a
            <with|mode|math|>virtual root of <with|mode|math|P>, its virtual
            multiplicity is equal to <with|mode|math|0>. Note that if
            <with|mode|math|x> is a <with|mode|math|>virtual root of
            <with|mode|math|P<rprime|'>> with <with|mode|math|>virtual
            multiplicity <with|mode|math|\<nu\>> with respect to
            <with|mode|math|P>, the <with|mode|math|>virtual multiplicity of
            <with|mode|math|x> with respect to <with|mode|math|P<rprime|'>>
            can only be <with|mode|math|\<nu\>>, <with|mode|math|\<nu\>+1> or
            <with|mode|math|\<nu\>-1>. Moreover, if <with|mode|math|x> is a
            root of <with|mode|math|P<rprime|'>>, the
            <with|mode|math|>virtual multiplicity of <with|mode|math|x> with
            respect to <with|mode|math|P<rprime|'>> is necessarily
            <with|mode|math|\<nu\>+1>.\ 
          </definition>

          <\example>
            The virtual roots of a polynomial <with|mode|math|P> of degree
            <with|mode|math|2> are

            <\itemize-minus>
              <item>the two roots of <with|mode|math|P> with
              <with|mode|math|>virtual multiplicity 1 if <with|mode|math|P>
              has two distinct real roots,

              <item>the root of <with|mode|math|P<rprime|'>> with
              <with|mode|math|>virtual multiplicity 2 if <with|mode|math|P>
              does not have two distinct real roots.
            </itemize-minus>
          </example>

          Given <with|mode|math|a> and <with|mode|math|b>, we denote by
          <with|mode|math|v<rsub|>(P;(a,b])> <label|2:not-virtual2>the number
          of <with|mode|math|>virtual roots of
          <with|mode|math|><with|mode|math|P> in <with|mode|math|(a,b]>
          counted with <with|mode|math|>virtual multiplicities.

          <\theorem>
            <label|2:the:virtual>

            <\equation*>
              v<rsub|>(P;(a,b])=<V>(<Der><rsub|>(P);a,b).
            </equation*>
          </theorem>

          <\lemma>
            All the roots of <with|mode|math|P> are virtual roots of
            <with|mode|math|P>. The virtual multiplicity is at least equal to
            the multiplicity and the difference is even.
          </lemma>
        </unfolded-std>

        <item>issues in constructive mathematics: virtual roots can be
        followed continuously while real roots cannot, might be useful in
        real algebraic geometry with real numbers (where the sign cannot be
        decided).
      </itemize-minus>
    </unfolded-std>

    <\unfolded-std>
      <subsection|Laplace Gauss>
    <|unfolded-std>
      <\itemize-minus>
        <item>Laplace gave an algebraic proof of the fundamental theorem of
        algebra : every even degree real polynomial factors in products of
        quadratic factors. <cite|Lap>

        <item>Reduces the existence of a complex root for a real polynomial
        <with|mode|math|P> of degree <with|mode|math|2<rsup|i>s> to the
        existence of a complex root for real polynomials
        <with|mode|math|Q<rsub|m>> , <with|mode|math|m\<in\>\<bbb-Z\>><with|mode|math|
        >of degree <with|mode|math|2<rsup|i-1>*s(2<rsup|
        i>*s-1)=2<rsup|i-1>s<rprime|'>> with <with|mode|math|s<rprime|'>>
        odd, whose roots are

        <\equation*>
          a+b+m*a*b,
        </equation*>

        for <with|mode|math|a> and <with|mode|math|b> roots of
        <with|mode|math|P>. Use pidgeon hole principle (since
        <with|mode|math|\<bbb-Z\>> is infinite) as well as resolution of
        equation of degree 2. Finally, get a polynomial of odd degree
        <with|mode|math|O(d<rsup|d>)>. Polynomial of odd degrees have real
        roots.

        <item>Discussion by Gauss <cite|Gauss>: assume the existence of roots
        is not correct (section 1). Beautiful work on elementary symmetric
        functions: talk about the roots without assuming having the existence
        of the roots. Same mechanism as Laplace (who is not quoted) (section
        19).

        <inactive|><item>modern statement <cite|BPR>

        <\unfolded-std>
          Laplace-Gauss in modern terms
        <|unfolded-std>
          <label|2:def:real closed field>A <with|font-series|bold|real closed
          field><subindex|Field|real closed -> <with|mode|math|<R>> is an
          ordered field whose positive cone is the set of squares
          <with|mode|math|<R><rsup|(2)>> and such that every polynomial in
          <with|mode|math|<R>[X]> of odd degree has a root in
          <with|mode|math|<R>>.

          <\theorem>
            <label|2:the:real closed field equivalents>If
            <with|mode|math|<R>> is a real closed field then
            <with|mode|math|<R>[i]=<R>[T]/(T<rsup|2>+1)> is an algebraically
            closed field.
          </theorem>
        </unfolded-std>

        <item>issues in constructive mathematics: the discussion Laplace
        versus Gauss plays a role on on going research on effective
        positivstellensatz (Lombardi/R.): Gaus gives smaller degree estimates
        than Laplace.
      </itemize-minus>
    </unfolded-std>

    <\unfolded-std>
      <subsection|Sturm>
    <|unfolded-std>
      <\itemize-minus>
        <item>Sturm: number of roots by euclidean division\ 

        <\unfolded-std>
          <hlink|Gallica BNF |> <cite|Stu>\ 
        <|unfolded-std>
          <\itemize-minus>
            <item>quotes Lagrange (exhaustion of intervals knowing the
            minimal distance between the roots), but too many computations,
            Fourier (not Budan) but sometime there are no roots

            <item>statement section 2

            <item>rigourous proof starting from section 3

            <item>examples of degree 3, including a symbolic one section 17

            <item>numerical methods in the case of very close roots, using
            decimal notation
          </itemize-minus>
        </unfolded-std>

        <item>modern statement <cite|BPR>

        <\unfolded-std>
          Sturm in modern terms
        <|unfolded-std>
          <\definition>
            <namenot|Signed remainder sequence> <label|1:def:ssrem>Given
            <with|mode|math|P,Q\<in\>K[X]>, not both <with|mode|math|0>, we
            define the <with|font-series|bold|signed remainder sequence of>
            <with|mode|math|P> <with|font-series|bold|and>
            <with|mode|math|Q,><label|1:not-10>

            <\eqnarray*>
              <tformat|<table|<row|<cell|<SSQ><rsub|0>(P,Q)>|<cell|=>|<cell|P,>>|<row|<cell|<SSQ><rsub|1>(P,Q)>|<cell|=>|<cell|Q,>>|<row|<cell|<SSQ><rsub|2>(P,Q)>|<cell|=>|<cell|\<um\><rem>(<SSQ><rsub|0>(P,Q),<SSQ><rsub|1>(P,Q)),>>|<row|<cell|>|<cell|\<vdots\>>|<cell|>>|<row|<cell|<SSQ><rsub|k>(P,Q)>|<cell|=>|<cell|\<um\><rem>(<SSQ><rsub|k-2>(P,Q),<SSQ><rsub|k-1>(P,Q))\<neq\>0,>>|<row|<cell|<SSQ><rsub|k+1>(P,Q)>|<cell|=>|<cell|\<um\><rem>(<SSQ><rsub|k-1>(P,Q),<SSQ><rsub|k>(P,Q))=0.>>>>
            </eqnarray*>

            Note the signs.
          </definition>

          <\theorem>
            <nametheo|Sturm's theorem><label|2:the:oldsturmtheorem><index|Sturm's
            theorem> Given <with|mode|math|a> and <with|mode|math|b> in
            <with|mode|math|<R>\<cup\>{\<um\>\<infty\>,\<upl\>\<infty\>}>,

            <\equation*>
              <V>(<SSQ>(P,P<rprime|'>);a,b)
            </equation*>

            is the number of roots of <with|mode|math|P> in the interval
            <with|mode|math|(a,b).>
          </theorem>
        </unfolded-std>

        <\unfolded-std>
          Compute\ 
        <|unfolded-std>
          <with|prog-language|maxima|prog-session|default|<\session>
            <\output>
              \;

              Maxima 5.9.3 http://maxima.sourceforge.net

              Using Lisp CLISP 2.34 (2005-07-20)

              Distributed under the GNU Public License. See the file COPYING.

              Dedicated to the memory of William Schelter.

              \;
            </output>

            <with|prog-language|maxima|prog-session|default|<\session>
              <\input|<with|color|red|(<with|math-font-family|rm|%i>6)
              <with|color|black|>>>
                load("./sarag/loadSARAG.mc");
              </input>

              <\output>
                <with|<with|mode|math|math-display|true|<with|mode|text|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
                <with|color|black|>><with|mode|text|./sarag/loadSARAG.mc>>>
              </output>

              <\input|<with|<with|color|red|(<with|math-font-family|rm|%i>3)
              <with|color|black|>>>>
                V0:x^3-2*x+5;
              </input>

              <\output>
                <with|<with|mode|math|math-display|true|<with|mode|text|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
                <with|color|black|>>x<rsup|3>-2*x+5>>
              </output>

              <\input|<with|<with|color|red|(<with|math-font-family|rm|%i>8)
              <with|color|black|>>>>
                V1:diff(V0,x);
              </input>

              <\output>
                <with|<with|mode|math|math-display|true|<with|mode|text|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
                <with|color|black|>>3*x<rsup|2>-2>>
              </output>

              <\input|<with|<with|color|red|(<with|math-font-family|rm|%i>9)
              <with|color|black|>>>>
                V2:-remainder(V0,V1,x);
              </input>

              <\output>
                <with|<with|mode|math|math-display|true|<with|mode|text|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
                <with|color|black|>><frac|4*x-15|3>>>
              </output>

              <\input|<with|<with|color|red|(<with|math-font-family|rm|%i>10)
              <with|color|black|>>>>
                V3:-remainder(V1,V2,x);
              </input>

              <\output>
                <with|<with|mode|math|math-display|true|<with|mode|text|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
                <with|color|black|>>-<frac|643|16>>>
              </output>

              <\input|<with|<with|color|red|(<with|math-font-family|rm|%i>11)
              <with|color|black|>>>>
                signChanges([1,3,4,-643]);
              </input>

              <\output>
                <with|<with|mode|math|math-display|true|<with|mode|text|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
                <with|color|black|>>1>>
              </output>

              <\input|<with|<with|color|red|(<with|math-font-family|rm|%i>12)
              <with|color|black|>>>>
                \;
              </input>
            </session>>
          </session>>
        </unfolded-std>

        <item>more generally: Cauchy index, already in Sturm (section 20)

        <\unfolded-std>
          Cauchy index
        <|unfolded-std>
          <\definition>
            <namenot|Cauchy index>\ 

            <with|font-series|bold|Cauchy index> of <with|mode|math|Q/P> on
            <with|mode|math|(a,b)>,<index|Cauchy index>
            <with|mode|math|<Ind><left|(>Q/P;a,b<right|)><label|2:not-18>>,
            to be the number of jumps of the function <with|mode|math|Q/P>
            from <with|mode|math|\<um\>\<infty\>> to
            <with|mode|math|\<upl\>\<infty\>> minus the number of jumps of
            the function<nbsp><with|mode|math|<group|Q/P>> from
            <with|mode|math|\<upl\>\<infty\>> to
            <with|mode|math|\<um\>\<infty\>> on the open interval
            <with|mode|math|(a,b)>.
          </definition>

          <\theorem>
            <label|2:the:sturmtheorem>Let <with|mode|math|P>,
            <with|mode|math|P\<neq\>0>, and <with|mode|math|Q> be two
            polynomials with coefficients in a real closed field
            <with|mode|math|<R>>, and let <with|mode|math|a> and
            <with|mode|math|b> (with <with|mode|math|a\<less\>b>) be elements
            of <group|<with|mode|math|<R>\<cup\>{\<um\>\<infty\>,\<upl\>\<infty\>}>>
            that are not roots of <with|mode|math|P>. Then,

            <\equation*>
              <V>(<SSQ>(P,Q);a,b)=<Ind><left|(>Q/P;a,b<right|)>.
            </equation*>
          </theorem>
        </unfolded-std>

        <item>method of proof: from left to right through real roots.

        <item>issues in constructive mathematics: computation made in the
        field generated by the coefficients (typically
        <with|mode|math|\<bbb-Q\>>); needs the field to be discrete (the sign
        of an element can be decided); complexity
        <with|mode|math|O(d<rsup|2>)> where <with|mode|math|d> is the degree,
        growth of size of coefficients
      </itemize-minus>
    </unfolded-std>

    <\unfolded-std>
      <subsection|Hermite>
    <|unfolded-std>
      <\itemize-minus>
        <item>Hermite number of roots given by the signature of a quadratic
        form

        <\unfolded-std>
          <hlink|references |> <cite|Her>\ 
        <|unfolded-std>
          <\eqnarray*>
            <tformat|<table|<row|<cell|P>|<cell|=>|<cell|X<rsup|p>+a<rsub|p-1>X<rsup|p-1>+\<cdots\>+a<rsub|1>X+a<rsub|0>>>>>
          </eqnarray*>

          \ <with|font-series|bold|Hermite quadratic form>
          <with|mode|math|<Her>(P)><subindex|Hermite|quadratic form>
          <label|4:not-17>depending of the <with|mode|math|p>
          variables<nbsp><with|mode|math|<group|f<rsub|1>,\<ldots\>,f<rsub|p>>>
          :

          <\equation*>
            <Her>(P)(f<rsub|1>,\<ldots\>,f<rsub|p>)=<big|sum><rsub|x\<in\><ZZ>(P,<with|mode|text|font-family|rm|C>)>\<mu\>(x)(f<rsub|1>+f<rsub|2>*x+\<cdots\>+f<rsub|p>*x<rsup|p-1>)<rsup|2>,
          </equation*>

          where <with|mode|math|\<mu\>(x)> is the multiplicity of
          <with|mode|math|x>. Note that

          <\eqnarray*>
            <tformat|<table|<row|<cell|<Her>(P)>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|p><big|sum><rsub|j=1><rsup|p><big|sum><rsub|x\<in\><ZZ>(P,<with|mode|text|font-family|rm|C>)>>|<cell|\<mu\>(x)*x<rsup|k+j-2>f<rsub|k>*f<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|p><big|sum><rsub|j=1><rsup|p>N<rsub|k+j-2>f<rsub|k>*f<rsub|j>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>>>>
          </eqnarray*>

          where <with|mode|math|N<rsub|n>> is the <with|mode|math|n>-th
          Newton sum of <with|mode|math|P>

          <\equation*>
            N<rsub|i>=<big|sum><rsub|x\<in\><ZZ>(P,<with|mode|text|font-family|rm|C>)>\<mu\>(x)*x<rsup|i>.
          </equation*>

          Matrix of Newton sums associated to Hermite's quadratic
          form<label|4:not-4>

          <\equation*>
            <Newton><rsub|>(P)=<left|[><tabular*|<tformat|<table|<row|<cell|N<rsub|0>>|<cell|N<rsub|1>>|<cell|\<udots\>>|<cell|>|<cell|\<udots\>>|<cell|N<rsub|p-1>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|N<rsub|1>>|<cell|\<udots\>>|<cell|>|<cell|\<udots\>>|<cell|N<rsub|p-1>>|<cell|N<rsub|p>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|\<udots\>>|<cell|>|<cell|\<udots\>>|<cell|N<rsub|p-1>>|<cell|N<rsub|p>>|<cell|\<udots\>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|\<udots\>>|<cell|N<rsub|p-1>>|<cell|N<rsub|p>>|<cell|\<udots\>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|\<udots\>>|<cell|N<rsub|p-1>>|<cell|N<rsub|p>>|<cell|\<udots\>>|<cell|>|<cell|\<udots\>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|N<rsub|p-1>>|<cell|N<rsub|p>>|<cell|\<udots\>>|<cell|>|<cell|\<udots\>>|<cell|N<rsub|2p-2>>>>>><right|]>
          </equation*>

          with entries the Newton sums of the monic polynomial
          <with|mode|math|P> of degree <with|mode|math|p>.

          Hermite Sylvester formulae <cite|S>

          <\eqnarray*>
            <tformat|<table|<row|<cell|Disc(P)=det(Newt(P))>|<cell|=>|<cell|<big|prod><rsub|p\<ge\>i\<gtr\>j\<ge\>1>(x<rsub|i>-x<rsub|j>)<rsup|2>>>|<row|<cell|sDiscP<rsub|p-k>(P)=det(\<ldots\>.)>|<cell|=>|<cell|<big|sum><rsub|<rsub|<stack|<tformat|<table|<row|<cell|I\<subset\>{1,\<ldots\>,p<right|}>>>|<row|<cell|#(I)=k>>>>>><stack|<tformat|<table|<row|<cell|>>>>>><big|prod><rsub|<rsub|<stack|<tformat|<table|<row|<cell|(j,\<ell\>)\<in\>I>>|<row|<cell|\<ell\>\<gtr\>j>>>>>><stack|<tformat|<table|<row|<cell|>>>>>>(x<rsub|j>-x<rsub|\<ell\>>)<rsup|2><big|prod><rsub|<rsub|<stack|<tformat|<table|<row|<cell|n\<notin\>I>>|<row|<cell|>>>>>><stack|<tformat|<table|<row|<cell|>>>>>>(X-x<rsub|n>)>>>>
          </eqnarray*>

          algebraic identities expressing naturally the gcd of
          <with|mode|math|P> and <with|mode|math|P<rprime|'>>

          <\theorem>
            <nametheo|Hermite><label|4:the:hermitemet><index|Hermite
            theorem><label|4:the:hermitesturm> The rank of
            <with|mode|math|<Her>(P)> is equal to the number of roots of
            <with|mode|math|P> in <with|mode|math|<C>>. The signature of
            <with|mode|math|<Her>(P)> is equal to the number of roots of
            <with|mode|math|P> in <with|mode|math|<R>>.
          </theorem>
        </unfolded-std>

        <item>modern statement <cite|BPR>

        <\unfolded-std>
          Hermite in modern terms
        <|unfolded-std>
          \;

          <with|mode|math|<Her>(P)> expressed in terms of the trace map.
          <with|mode|math|<Tr>> the usual
          <with|font-series|bold|trace><index|Trace> <label|4:def:trace>of a
          linear map from a finite dimensional vector space
          <with|mode|math|<A>> to <with|mode|math|<A>>.

          <\notation>
            <namenot|Multiplication map><label|4:not:multiplication><index|Multiplication
            map> For <with|mode|math|f\<in\><A>><with|mode|math|=<K>[X]/(P)>,
            denote by <with|mode|math|L<rsub|f>:<A>\<rightarrow\><A>>
            <label|4:not-18>the linear map of multiplication by
            <with|mode|math|f>, sending any <with|mode|math|g\<in\><A>> to
            the remainder of<nbsp><with|mode|math|f*g> in the euclidean
            division by <with|mode|math|P>.\ 
          </notation>

          <\proposition>
            <label|4:prop:hermtrace>The quadratic form
            <with|mode|math|<Her>(P)> is the quadratic form associating to

            <\equation*>
              f=f<rsub|1>+f<rsub|2>*X\<cdots\>+f<rsub|p>*X<rsup|p-1>\<in\><A>=<K>[X]/(P)
            </equation*>

            the expression <with|mode|math|<Tr>(L<rsub|*f<rsup|2>>)>.
          </proposition>
        </unfolded-std>

        <item>generalization (not known in 19 th century)

        <\unfolded-std>
          Generalized Hermite
        <|unfolded-std>
          <\eqnarray*>
            <tformat|<table|<row|<cell|P>|<cell|=>|<cell|X<rsup|p>+a<rsub|p-1>X<rsup|p-1>+\<cdots\>+a<rsub|1>X+a<rsub|0>>>|<row|<cell|Q>|<cell|=>|<cell|b<rsub|q>X<rsup|q>+b<rsub|q-1>X<rsup|q-1>+\<cdots\>+b<rsub|1>X+b<rsub|0>.>>>>
          </eqnarray*>

          <with|font-series|bold|Hermite quadratic form>
          <with|mode|math|<Her>(P,Q)><subindex|Hermite|quadratic form>
          <label|4:not-17>depending of the <with|mode|math|p>
          variables<nbsp><with|mode|math|<group|f<rsub|1>,\<ldots\>,f<rsub|p>>>\ 

          <\equation*>
            <Her>(P,Q)(f<rsub|1>,\<ldots\>,f<rsub|p>)=<big|sum><rsub|x\<in\><ZZ>(P,<with|mode|text|font-family|rm|C>)>\<mu\>(x)Q(x)(f<rsub|1>+f<rsub|2>*x+\<cdots\>+f<rsub|p>*x<rsup|p-1>)<rsup|2>,
          </equation*>

          where <with|mode|math|\<mu\>(x)> is the multiplicity of
          <with|mode|math|x>. Note that

          <\equation*>
            <Her>(P,Q)=<big|sum><rsub|k=1><rsup|p><big|sum><rsub|j=1><rsup|p><big|sum><rsub|x\<in\><ZZ>(P,<with|mode|text|font-family|rm|C>)>\<mu\>(x)*Q(x)*x<rsup|k+j-2>*f<rsub|k>*f<rsub|j>.
          </equation*>

          When <with|mode|math|Q=1>, we get <with|mode|math|Her(P)>.

          <\notation>
            <namenot|Tarski-query> \ <with|font-series|bold|Tarski-query><index|Tarski-query>
            of <with|mode|math|Q> for <with|mode|math|P>\ 

            <\eqnarray*>
              <tformat|<table|<row|<cell|<with|mode|math|<SQ>(Q,P)>>|<cell|=>|<cell|<big|sum><rsub|x\<in\>\<bbb-R\>,P(x)=0>sign(Q(x)).>>>>
            </eqnarray*>

            Note that <with|mode|math|<SQ>(Q,P) >is equal to

            <\equation*>
              #({x\<in\>\<bbb-R\>\<mid\>P(x)=0\<wedge\>Q(x)\<gtr\>0})-#({x\<in\>\<bbb-R\>\<mid\>P(x)=0\<wedge\>Q(x)\<less\>0})
            </equation*>
          </notation>

          <\theorem>
            <nametheo|Hermite><label|4:the:hermitemet><index|Hermite theorem>

            <\eqnarray*>
              <tformat|<table|<row|<cell|<Rank>(<Her>(P,Q))>|<cell|=>|<cell|#{x\<in\><C>\<mid\>P(x)=0\<wedge\>Q(x)\<neq\>0},>>|<row|<cell|<Sign>(<Her>(P,Q))>|<cell|=>|<cell|<SQ>(Q,P).>>>>
            </eqnarray*>
          </theorem>

          Tarski queries are related to Cauchy index and can be computed also
          through Sturm sequences since it is clear that

          <\eqnarray*>
            <tformat|<table|<row|<cell|<with|mode|math|<SQ>(Q,P)>>|<cell|=>|<cell|Ind(P<rprime|'>Q/P).>>>>
          </eqnarray*>
        </unfolded-std>

        <item>recent research <cite|P> <cite|PRS> <cite|BPR>

        <\unfolded-std>
          Multivariate Hermite
        <|unfolded-std>
          Zero dimensional polynomial system
          <with|mode|math|<with|math-font|cal|P>>, i.e. with a finite number
          of complex solutions and <with|mode|math|<A>=<K>[X<rsub|1>,\<ldots\>,X<rsub|k>]/(<with|math-font|cal|P>)>
          \ finite dimensional vector space <cite|BPR><with|mode|math|>.
          Tarski-query of <with|mode|math|Q> for
          <with|mode|math|<with|math-font|cal|P>> as <label|4:not-38bis>

          <\equation*>
            <SQ>(Q,<with|math-font|cal|P>)=<big|sum><rsub|x\<in\><ZZ>(<with|math-font|cal|P>,<R><rsup|k>)>sign(Q(x))
          </equation*>

          \ <with|font-series|bold|Hermite's quadratic
          form>,<subindex|Hermite|quadratic form><label|4:not-37>

          <\equation*>
            <tabular*|<tformat|<table|<row|<cell|<Her>(<with|math-font|cal|P>,Q):>|<cell|<A>>|<cell|\<longrightarrow\>>|<cell|K>>|<row|<cell|>|<cell|f>|<cell|\<longmapsto\>>|<cell|<Tr>(L<rsub|f<rsup|2>*Q>)>>>>>.
          </equation*>

          <\theorem>
            <nametheo|Multivariate Hermite><label|4:the:Hermite><subindex|Hermite
            theorem|multivariate ->

            <\eqnarray*>
              <tformat|<table|<row|<cell|<Rank>(<Her>(<with|math-font|cal|P>,Q))>|<cell|=>|<cell|#{x\<in\><ZZ>(<with|math-font|cal|P>,<C><rsup|k>)\<mid\>Q(x)\<neq\>0},>>|<row|<cell|<Sign>(<Her>(<with|math-font|cal|P>,Q))>|<cell|=>|<cell|<SQ>(Q,<with|math-font|cal|P>).>>>>
            </eqnarray*>
          </theorem>
        </unfolded-std>

        <item>method of proof: conjugate complex roots dont contribute

        <item>issues in constructive mathematics: in the univariate case,
        complexity also <with|mode|math|O(d<rsup|2>)> because Hankel matrix;
        \ in the multivariate case, needed to know a basis of the quotient:
        Groebner bases. Wanted: algebraic identities expressing the signature
        without looking at the roots.\ 
      </itemize-minus>
    </unfolded-std>

    <\unfolded-std>
      <subsection|Habicht>
    <|unfolded-std>
      <\itemize-minus>
        <item>Habicht: compute ``Sturm sequence without denominators''\ 

        <\unfolded-std>
          <hlink|reference |> <cite|Ha>\ 
        <|unfolded-std>
          <\unfolded-std>
            Habicht (simple case: no drop of degree in the euclidean
            sequence)
          <|unfolded-std>
            <\definition>
              <namenot|Subresultant sequence> <label|1:def:ssrem>

              <\eqnarray*>
                <tformat|<table|<row|<cell|sResP<rsub|d>(P,Q)>|<cell|=>|<cell|P,>>|<row|<cell|sResP<rsub|d-1>(P,Q)>|<cell|=>|<cell|Q,>>|<row|<cell|sResP<rsub|d-2>(P,Q)>|<cell|=>|<cell|\<um\><rem>(s<rsub|d-1><rsup|2>*sResP<rsub|d>(P,Q),sResP<rsub|d-1>(P,Q)),>>|<row|<cell|>|<cell|\<vdots\>>|<cell|>>|<row|<cell|sresP<rsub|k-1>(P,Q)>|<cell|=>|<cell|\<um\><rem>(s<rsub|k><rsup|2>*<SSQ><rsub|k+1>(P,Q),<SSQ><rsub|k>(P,Q))/s<rsub|k+1><rsup|2>,>>|<row|<cell|>|<cell|\<vdots\>>|<cell|>>|<row|<cell|with
                s<rsub|k>>|<cell|=>|<cell|lcoff(sResP<rsub|k>(P,Q)>>>>
              </eqnarray*>
            </definition>

            Slight modificatin of the signed remainder sequence

            No denominators: <with|mode|math|sResP<rsub|i>(P,Q)\<in\><D>[X]>:
            coefficients are determinants extracted from the Sylvester matrix
            of <with|mode|math|><with|mode|math|P> and <with|mode|math|Q>.

            <\theorem>
              \ 

              <\equation*>
                <V>(sResP(P,P<rprime|'>))
              </equation*>

              is the number of roots of <with|mode|math|P>.
            </theorem>
          </unfolded-std>
        </unfolded-std>

        \;

        <\unfolded-std>
          Sylvester formulae
        <|unfolded-std>
          <\eqnarray*>
            <tformat|<table|<row|<cell|sResP<rsub|0>(P,P<rprime|'>)=Disc(P)>|<cell|=>|<cell|<big|prod><rsub|p\<ge\>i\<gtr\>j\<ge\>1>(x<rsub|i>-x<rsub|j>)<rsup|2>>>|<row|<cell|sResP<rsub|p-k>(P,P<rprime|'>)=sDiscP<rsub|p-k>(P)>|<cell|=>|<cell|<big|sum><rsub|<rsub|<stack|<tformat|<table|<row|<cell|I\<subset\>{1,\<ldots\>,p<right|}>>>|<row|<cell|#(I)=k>>>>>><stack|<tformat|<table|<row|<cell|>>>>>><big|prod><rsub|<rsub|<stack|<tformat|<table|<row|<cell|(j,\<ell\>)\<in\>I>>|<row|<cell|\<ell\>\<gtr\>j>>>>>><stack|<tformat|<table|<row|<cell|>>>>>>(x<rsub|j>-x<rsub|\<ell\>>)<rsup|2><big|prod><rsub|<rsub|<stack|<tformat|<table|<row|<cell|n\<notin\>I>>|<row|<cell|>>>>>><stack|<tformat|<table|<row|<cell|>>>>>>(X-x<rsub|n>)>>>>
          </eqnarray*>
        </unfolded-std>

        <item>very active topic of research

        <item>issues in constructive mathematics: complexity
        (<with|mode|math|O(d*log<rsup|2>d) rather than
        ><with|mode|math|O(d<rsup|2>)>. What is going on in the non generic
        case in terms of expression of the roots ?
      </itemize-minus>
    </unfolded-std>
  </unfolded-std>

  <\unfolded-std>
    <section|Quantifier elimination >
  <|unfolded-std>
    <\unfolded-std>
      <subsection|Tarski>
    <|unfolded-std>
      <\itemize-minus>
        <item>Tarski

        <\unfolded-std>
          <hlink|my webpage |> <cite|Tarski51>\ 
        <|unfolded-std>
          Tarski proves the decidability of the theory of the reals, through
          quantifier elimination. Any first order formula in the language of
          ordered fields is equivalent to a formula without quantifiers in
          the theory of real closed fields.
        </unfolded-std>

        <item>modern statement <cite|BPR>

        <\unfolded-std>
          Tarski in modern terms
        <|unfolded-std>
          logical statement: the theory of real closed fields admits
          quantifier elimination in the language of ordered fields (needs
          symbol <with|mode|math|\<gtr\>>)

          geometric statement: semi-algebraic sets are stable under
          projection
        </unfolded-std>

        <item>language is important (by Skoleim always possible to eliminate
        quantifiers when you can add a lot of functions); without
        <with|mode|math|y\<gtr\>0> you cannot eliminate quantifiers, even
        though

        <\equation*>
          y\<gtr\>0 can be replaced by \<exists\>x x<rsup|2>=y
        </equation*>

        <item>method of proof: based on Tarski-query (hence the terminology),
        induction on the number of variables, signed remainder sequence with
        discussions when coefficients vanish

        <item>start with equalities, get inequalities

        <item>example of polynomial of degree 4

        <\unfolded-std>
          example
        <|unfolded-std>
          G<label|1:ex:degree4>eneral polynomial of degree 4
          <with|mode|math|P=X<rsup|4>+a*X<rsup|2>+b*X+c>.

          \ Signed remainder sequence of <with|mode|math|P> and
          <with|mode|math|P<rprime|'>>

          <eqnarray*|<tformat|<table|<row|<cell|P>|<cell|=>|<cell|X<rsup|4>+a*X<rsup|2>+b*X+c>>|<row|<cell|P<rprime|'>>|<cell|=>|<cell|4*X<rsup|3>+2*a*X+b>>|<row|<cell|S<rsub|2>>|<cell|=>|<cell|\<um\><rem>(P,P<rprime|'>)>>|<row|<cell|>|<cell|=>|<cell|\<um\><frac|1|2>*a*X<rsup|2>-<frac|3|4>*b*X-c>>|<row|<cell|S<rsub|3>>|<cell|=>|<cell|\<um\><rem>(P<rprime|'>,S<rsub|2>)>>|<row|<cell|>|<cell|=>|<cell|<frac|<left|(>8*a*c-9*b<rsup|2>-2*a<rsup|3><right|)>*X|a<rsup|2>>-<frac|b<left|(>12*c+a<rsup|2><right|)>|a<rsup|2>>>>|<row|<cell|S<rsub|4>>|<cell|=>|<cell|\<um\><rem>(S<rsub|2>,S<rsub|3>)>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4><space|0.25spc><frac|a<rsup|2><left|(>256*c<rsup|3>-128*a<rsup|2>*c<rsup|2>+144*a*c*b<rsup|2>-16*a<rsup|4>*c-27*b<rsup|4>-4*b<rsup|2>*a<rsup|3><right|)>|<left|(>8*a*c-9*b<rsup|2>-2*a<rsup|3><right|)><rsup|2>>>>>>>

          Note that when <with|mode|math|(a,b,c)> are specialized to values
          in <with|mode|math|<with|math-font|Bbb|C><rsup|3>> for which
          <with|mode|math|a=0> or<nbsp><with|mode|math|8*a*c-9*b<rsup|2>-2*a<rsup|3>=0>,
          the signed remainder sequence of <with|mode|math|P> and
          <with|mode|math|P<rprime|'>> for these special values is not
          obtained by specializing <with|mode|math|a,b,c> in the signed
          remainder sequence in <with|mode|math|<Q>(a,b,c)[X]>.\ 

          \ Denoting

          <eqnarray*|<tformat|<table|<row|<cell|<overline|S<rsub|2>>>|<cell|=>|<cell|\<um\>8*a*X<rsup|2>-12*b*X-16*c,>>|<row|<cell|<overline|S<rsub|3>>>|<cell|=>|<cell|(8*a*c-9*b<rsup|2>-2*a<rsup|3>)X-b*(12*c+a<rsup|2>),>>|<row|<cell|<overline|S<rsub|4>>>|<cell|=>|<cell|a<rsup|2>*<left|(>256*c<rsup|3>-128*a<rsup|2>*c<rsup|2>+144*a*b<rsup|2>*c+16*a<rsup|4>*c-27*b<rsup|4>-4*a<rsup|3>*b<rsup|2><right|)>,>>|<row|<cell|u>|<cell|=>|<cell|b*<left|(>\<um\>27*b<rsup|4>+72*a*c*b<rsup|2>+256*c<rsup|3><right|)>
          (remainder when a=0)>>>>>

          the tree of possible remainders of <with|mode|math|P,P<rprime|'>>
          <with|mode|math|<paremseq>(P,P<rprime|'>)> is the following. Tru
          stands for truncation.

          <\with|par-mode|center>
            \;

            <with|mode|math|<tree|P|<tree|P<rprime|'>|<tree|<wide|S|\<bar\>><rsub|2>|<tree|<wide|S|\<bar\>><rsub|3>|<tree|<wide|S|\<bar\>><rsub|4>|0>|0>|<tree|Tru<rsub|0>(<wide|S|\<bar\>><rsub|3>)|0>|0>|<tree|Tru<rsub|1>(<wide|S|\<bar\>><rsub|2>)|<tree|u|0>|0>|<tree|Tru<rsub|0>(<wide|S|\<bar\>><rsub|2>)|0>|0>>>
          </with>

          \;

          Define

          <eqnarray*|<tformat|<table|<row|<cell|s>|<cell|=>|<cell|8*a*c-9*b<rsup|2>-2*a<rsup|3>,>>|<row|<cell|t>|<cell|=>|<cell|\<um\>b*(12*c+a<rsup|2>)>>|<row|<cell|\<delta\>>|<cell|=>|<cell|256*c<rsup|3>-128*a<rsup|2>*c<rsup|2>+144*a*b<rsup|2>*c+16*a<rsup|4>*c-27*b<rsup|4>-4*a<rsup|3>*b<rsup|2>.>>>>>

          The leftmost path in the tree going from the root to a leaf, namely
          the <group|path<nbsp><with|mode|math|P,P<rprime|'>,<overline|S><rsub|2>,<overline|S><rsub|3>,<overline|S><rsub|4>,0>>
          can be understood as follows: if
          <with|mode|math|(a,b,c)\<in\><C><rsup|3>> are such that the degree
          of the polynomials in the remainder sequence of <with|mode|math|P>
          and<nbsp><with|mode|math|P<rprime|'>> are
          <group|<with|mode|math|4,3,2,1,0>,> i.e. when
          <with|mode|math|a\<neq\>0,s\<neq\>0,\<delta\>\<neq\>0> (getting rid
          of obviously irrelevant factors), then the signed remainder
          sequence of <with|mode|math|P=X<rsup|4>+a*X<rsup|2>+b*X+c> and
          <with|mode|math|P<rprime|'>> is proportional (up to non-zero
          squares of elements in <with|mode|math|<C>>) to
          <with|mode|math|P,P<rprime|'>,<overline|S><rsub|2>,<overline|S><rsub|3>,<overline|S><rsub|4>>.

          e describe the projection of the algebraic set

          <equation*|{(a,b,c,X)\<in\><R><rsup|4>\<mid\>X<rsup|4>+a*X<rsup|2>+b*X+c=0}>

          to <with|mode|math|<R><rsup|3>,> i.e. the set

          <equation*|{(a;b;c)\<in\><R><rsup|3>\<mid\>\<exists\>X\<in\><R><space|1em>X<rsup|4>+a*X<rsup|2>+b*X+c=0},>

          as a semi-algebraic set.

          We look at all leaves of <with|mode|math|<paremseq>(P,P<rprime|'>)>
          and at all possible signs for leading coefficients of all possible
          signed pseudo-remainders (using Example <reference|1:ex:degree4>).
          We denote by <with|mode|math|n> the difference between the number
          of sign variations at <with|mode|math|\<um\>\<infty\>> and
          <with|mode|math|\<upl\>\<infty\>> in the Sturm sequence of
          <with|mode|math|P=X<rsup|4>+a*X<rsup|2>+b*X+c> for each case.\ 

          <equation*|(a\<neq\>0\<wedge\>s\<neq\>0\<wedge\>\<delta\>\<neq\>0,(4,3,2,1,0))>

          <equation*|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|-1|4|4|cell-halign|c>|<cwith|1|-1|5|5|cell-halign|c>|<cwith|1|-1|6|6|cell-halign|c>|<cwith|1|-1|7|7|cell-halign|c>|<cwith|1|-1|8|8|cell-halign|c>|<cwith|1|-1|9|9|cell-halign|c>|<cwith|3|3|1|-1|cell-bborder|1ln>|<table|<row|<cell|a>|<cell|->|<cell|->|<cell|->|<cell|->|<cell|+>|<cell|+>|<cell|+>|<cell|+>>|<row|<cell|s>|<cell|+>|<cell|+>|<cell|->|<cell|->|<cell|+>|<cell|+>|<cell|->|<cell|->>|<row|<cell|\<delta\>>|<cell|+>|<cell|->|<cell|+>|<cell|->|<cell|+>|<cell|->|<cell|+>|<cell|->>|<row|<cell|n>|<cell|4>|<cell|2>|<cell|0>|<cell|2>|<cell|0>|<cell|\<um\>2>|<cell|0>|<cell|2>>>>>>

          The first column can be read as follows: for every polynomial

          <equation*|P=X<rsup|4>+a*X<rsup|2>+b*X+c>

          satisfying <with|mode|math|a\<less\>0,s\<gtr\>0,\<delta\>\<gtr\>0>,
          the number of real roots is <with|mode|math|4>. Indeed \ the
          degrees of the polynomials in the signed pseudo-remainder sequence
          of <with|mode|math|P> and <with|mode|math|P<rprime|'>> are<group|
          <with|mode|math|4,3,2,1,0>>, the signs of the signed
          pseudo-remainder sequence of <with|mode|math|P> and
          <with|mode|math|P<rprime|'>> at <with|mode|math|\<um\>\<infty\>>
          are<nbsp><with|mode|math|<group|+-+-+>> and at
          <with|mode|math|\<upl\>\<infty\>> are <with|mode|math|+++++>.\ 

          Similarly, for the other leaves of
          <with|mode|math|<paremseq>(P,P<rprime|'>)>

          <equation*|(a\<neq\>0\<wedge\>s\<neq\>0\<wedge\>\<delta\>=0,(4,3,2,1))>

          <equation*|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|-1|4|4|cell-halign|c>|<cwith|1|-1|5|5|cell-halign|c>|<cwith|2|2|1|-1|cell-bborder|1ln>|<table|<row|<cell|a>|<cell|->|<cell|->|<cell|+>|<cell|+>>|<row|<cell|s>|<cell|+>|<cell|->|<cell|+>|<cell|->>|<row|<cell|n>|<cell|3>|<cell|1>|<cell|-1>|<cell|1>>>>>>

          <equation*|(a\<neq\>0\<wedge\>s=0\<wedge\>t\<neq\>0,(4,3,2,0))>

          <equation*|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|-1|4|4|cell-halign|c>|<cwith|1|-1|5|5|cell-halign|c>|<cwith|2|2|1|-1|cell-bborder|1ln>|<table|<row|<cell|a>|<cell|->|<cell|->|<cell|+>|<cell|+>>|<row|<cell|t>|<cell|+>|<cell|->|<cell|+>|<cell|->>|<row|<cell|n>|<cell|2>|<cell|2>|<cell|0>|<cell|0>>>>>>

          <equation*|(a\<neq\>0\<wedge\>s=t=0,(4,3,2))>

          <equation*|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|1|1|-1|cell-bborder|1ln>|<table|<row|<cell|a>|<cell|->|<cell|+>>|<row|<cell|n>|<cell|2>|<cell|0>>>>>>

          <equation*|(a=0\<wedge\>b\<neq\>0\<wedge\>u\<neq\>0,(4,3,1,0))>

          <equation*|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|-1|4|4|cell-halign|c>|<cwith|1|-1|5|5|cell-halign|c>|<cwith|2|2|1|-1|cell-bborder|1ln>|<table|<row|<cell|b>|<cell|+>|<cell|+>|<cell|->|<cell|->>|<row|<cell|u>|<cell|+>|<cell|->|<cell|+>|<cell|->>|<row|<cell|n>|<cell|2>|<cell|0>|<cell|0>|<cell|2>>>>>>

          <equation*|(a=0\<wedge\>b\<neq\>0\<wedge\>u=0,(4,3,1))>

          <equation*|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|1|1|-1|cell-bborder|1ln>|<table|<row|<cell|b>|<cell|+>|<cell|->>|<row|<cell|n>|<cell|1>|<cell|1>>>>>>

          <equation*|(a=b=0\<wedge\>c\<neq\>0,(4,3,0))>

          <equation*|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|1|1|-1|cell-bborder|1ln>|<table|<row|<cell|c>|<cell|+>|<cell|->>|<row|<cell|n>|<cell|0>|<cell|2>>>>>>

          <equation*|(a=b=c=0,(4,3))>

          <equation*|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<table|<row|<cell|n>|<cell|=>|<cell|1>>>>>>

          Finally, the formula <with|mode|math|\<exists\><space|0.75spc>X<space|1em>X<rsup|4>+a*X<rsup|2>+b*X+c=0>
          is <with|mode|math|<R>>-equivalent to the quantifier-free formula
          <with|mode|math|\<Phi\>(a,b,c)>:

          <equation*|<tabular*|<tformat|<table|<row|<cell|(a\<less\>0\<wedge\>s\<gtr\>0)<space|0.75spc>>>|<row|<cell|\<vee\><space|0.75spc>(a\<less\>0\<wedge\>s\<less\>0\<wedge\>\<delta\>\<less\>0)>>|<row|<cell|\<vee\><space|0.75spc>(a\<gtr\>0\<wedge\>s\<less\>0\<wedge\>\<delta\>\<less\>0)<space|0.75spc>>>|<row|<cell|\<vee\><space|0.75spc>(a\<less\>0\<wedge\>s\<neq\>0\<wedge\>\<delta\>=0)>>|<row|<cell|\<vee\><space|0.75spc>(a\<gtr\>0\<wedge\>s\<less\>0\<wedge\>\<delta\>=0)>>|<row|<cell|\<vee\><space|0.75spc>(a\<less\>0\<wedge\>s=0\<wedge\>t\<neq\>0)>>|<row|<cell|\<vee\><space|0.75spc>(a\<less\>0\<wedge\>s=0\<wedge\>t=0)>>|<row|<cell|\<vee\><space|0.75spc>(a=0\<wedge\>b\<less\>0\<wedge\>u\<less\>0)>>|<row|<cell|\<vee\><space|0.75spc>(a=0\<wedge\>b\<gtr\>0\<wedge\>u\<gtr\>0)>>|<row|<cell|\<vee\><space|0.75spc>(a=0\<wedge\>b\<neq\>0\<wedge\>u=0)>>|<row|<cell|\<vee\><space|0.75spc>(a=0\<wedge\>b=0\<wedge\>c\<less\>0)>>|<row|<cell|\<vee\><space|0.75spc>(a=0\<wedge\>b=0\<wedge\>c=0),>>>>>>

          by collecting all the sign conditions with
          <with|mode|math|n\<ge\>1>. Thus, we have proven that the projection
          of the algebraic set

          <equation*|{(x,a,b,c)\<in\><R><rsup|4>\<mid\>x<rsup|4>+a*x<rsup|2>+b*x+c}>

          into <with|mode|math|<R><rsup|3>> is the semi-algebraic subset
          defined by <with|mode|math|\<Phi\>>.\ 

          \;
        </unfolded-std>

        <item>issues in constructive mathematics: clearly an algorithm,
        complexity issues: not elementary recursive, needs a discrete field
        where the sign of an element is well defined.
      </itemize-minus>
    </unfolded-std>

    <\unfolded-std>
      <subsection|Seidenberg>
    <|unfolded-std>
      <\itemize-minus>
        <item>Seidenberg: use distance to a fixed point, more geometrical\ 

        <\unfolded-std>
          <hlink| |> <cite|Seidenberg54>\ 
        <|unfolded-std>
          Seidenberg has many contributions to constructive commutative
          algebra: see his paper Constructions in algebra. Particularly:
          impossibility to factorize in a general field.
        </unfolded-std>

        \;
      </itemize-minus>
    </unfolded-std>

    <\unfolded-std>
      <subsection|Collins>
    <|unfolded-std>
      <\itemize-minus>
        <item>Collins: use subresultants rather than signed remainder
        sequence, simplifies complexity of Tarski\ 

        <\unfolded-std>
          <hlink| |> <cite|Col> , see <cite|BPR>
        <|unfolded-std>
          doubly exponential complexity in terms of the number of variables\ 

          \ example

          <\unfolded-std>
            polynomial of degree 4
          <|unfolded-std>
            Consider again <with|mode|math|P=X<rsup|4>+a*X<rsup|2>+b*X+c>,

            <\eqnarray*>
              <tformat|<table|<row|<cell|<SDisc><rsub|3>(P)>|<cell|=>|<cell|4,>>|<row|<cell|<SDisc><rsub|2>(P)>|<cell|=>|<cell|\<um\>8*a,>>|<row|<cell|<SDisc><rsub|1>(P)>|<cell|=>|<cell|4*(8*a*c-9*b<rsup|2>-2*a<rsup|3>)>>|<row|<cell|<SDisc><rsub|0>(P)>|<cell|=>|<cell|256*c<rsup|3>-128*a<rsup|2>*c<rsup|2>+144*a*b<rsup|2>*c+16*a<rsup|4>*c-27*b<rsup|4>-4*a<rsup|3>*b<rsup|2>.>>>>
            </eqnarray*>

            Let

            <\eqnarray*>
              <tformat|<table|<row|<cell|s>|<cell|=>|<cell|8*a*c-9*b<rsup|2>-2*a<rsup|3>,>>|<row|<cell|\<delta\>>|<cell|=>|<cell|256*c<rsup|3>-128*a<rsup|2>*c<rsup|2>+144*a*b<rsup|2>*c+16*a<rsup|4>*c-27*b<rsup|4>-4*a<rsup|3>*b<rsup|2>.>>>>
            </eqnarray*>

            We indicate in the following tables the number of real roots of
            <with|mode|math|P> \ in the various cases corresponding to all
            the possible signs for <with|mode|math|a,s,\<delta\>>:

            <\equation*>
              <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|-1|4|4|cell-halign|c>|<cwith|1|-1|5|5|cell-halign|c>|<cwith|1|-1|6|6|cell-halign|c>|<cwith|1|-1|7|7|cell-halign|c>|<cwith|1|-1|8|8|cell-halign|c>|<cwith|1|-1|9|9|cell-halign|c>|<cwith|1|-1|10|10|cell-halign|c>|<cwith|5|5|1|-1|cell-bborder|1ln>|<table|<row|<cell|1>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>>|<row|<cell|4>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>>|<row|<cell|\<um\>a>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>>|<row|<cell|s>|<cell|+>|<cell|+>|<cell|+>|<cell|->|<cell|->|<cell|->|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|\<delta\>>|<cell|+>|<cell|->|<cell|0>|<cell|+>|<cell|->|<cell|0>|<cell|+>|<cell|->|<cell|0>>|<row|<cell|n>|<cell|4>|<cell|2>|<cell|3>|<cell|0>|<cell|2>|<cell|1>|<cell|2<with|color|red|>>|<cell|2
              >|<cell|2<with|color|red|>>>>>>
            </equation*>

            <\equation*>
              <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|-1|4|4|cell-halign|c>|<cwith|1|-1|5|5|cell-halign|c>|<cwith|1|-1|6|6|cell-halign|c>|<cwith|1|-1|7|7|cell-halign|c>|<cwith|1|-1|8|8|cell-halign|c>|<cwith|1|-1|9|9|cell-halign|c>|<cwith|1|-1|10|10|cell-halign|c>|<cwith|5|5|1|-1|cell-bborder|1ln>|<table|<row|<cell|1>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>>|<row|<cell|4>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>>|<row|<cell|\<um\>a>|<cell|->|<cell|->|<cell|->|<cell|->|<cell|->|<cell|->|<cell|->|<cell|->|<cell|->>|<row|<cell|s>|<cell|+>|<cell|+>|<cell|+>|<cell|->|<cell|->|<cell|->|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|\<delta\>>|<cell|+>|<cell|->|<cell|0>|<cell|+>|<cell|->|<cell|0>|<cell|+>|<cell|->|<cell|0>>|<row|<cell|n>|<cell|0>|<cell|-2>|<cell|-1>|<cell|0>|<cell|2>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>>>>
            </equation*>

            \;

            <\equation*>
              <tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<cwith|1|-1|4|4|cell-halign|c>|<cwith|1|-1|5|5|cell-halign|c>|<cwith|1|-1|6|6|cell-halign|c>|<cwith|1|-1|7|7|cell-halign|c>|<cwith|1|-1|8|8|cell-halign|c>|<cwith|1|-1|9|9|cell-halign|c>|<cwith|1|-1|10|10|cell-halign|c>|<cwith|5|5|1|-1|cell-bborder|1ln>|<table|<row|<cell|1>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>>|<row|<cell|4>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>|<cell|+>>|<row|<cell|\<um\>a>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|s>|<cell|+>|<cell|+>|<cell|+>|<cell|->|<cell|->|<cell|->|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|\<delta\>>|<cell|+>|<cell|->|<cell|0>|<cell|+>|<cell|->|<cell|0>|<cell|+>|<cell|->|<cell|0>>|<row|<cell|n>|<cell|2>|<cell|0>|<cell|1>|<cell|0>|<cell|2>|<cell|1>|<cell|0>|<cell|2
              >|<cell|1>>>>>
            </equation*>

            \;

            \;

            We represent in Figure <reference|4:fig:swallowtail2d> the set of
            polynomials of degree 4 in the
            plane<nbsp><with|mode|math|a=\<um\>1> and the zero sets of
            <with|mode|math|s,\<delta\>>.

            <\big-figure>
              <postscript|figures/4_fig_swallowtail2d.ps||||||>

              <label|4:fig:swallowtail2d>
            </big-figure|<with|mode|math|a=\<um\>1,s=\<delta\>=0>>

            \;

            Finally, in Figure <reference|4:fig:swallowtail3d> we represent
            the set of polynomials of degree <with|mode|math|4> i<group|n
            <with|mode|math|a,b,c>> space and the zero sets of
            <with|mode|math|s,\<delta\>>.

            <\big-figure>
              <postscript|figures/4_fig_swallowtail3d.ps||||||>
              <label|4:fig:swallowtail3d>
            </big-figure|The set defined by <with|mode|math|\<delta\>=0> and
            the different regions labelled by the \ number of real roots>
          </unfolded-std>
        </unfolded-std>

        <item>issues in constructive mathematics: double exponential
        complexity.
      </itemize-minus>
    </unfolded-std>
  </unfolded-std>

  <\unfolded-std>
    <\thebibliography|136>
      \;
    </thebibliography>
  <|unfolded-std>
    <bibitem|BPR><with|font-shape|small-caps|S. Basu, R. Pollack, M.-F. Roy>,
    <newblock><with|font-shape|italic|Algorithms in real algebraic geometry>,
    <newblock>Springer-Verlag, second edition (2006). <hlink|Interactive
    version.|>\ 

    <bibitem|Bud><with|font-shape|small-caps|F. Budan de Boislaurent,>
    <with|font-shape|italic|Nouvelle méthode pour la résolution des équations
    numériques d'un degré quelconque>, (1807), 2nd edition, Paris (1822).

    <bibitem|Col><with|font-shape|small-caps|G. Collins>,
    <newblock><with|font-shape|italic|Quantifier elimination for real closed
    fields by cylindric algebraic decomposition>, <newblock>In Second GI
    Conference on Automata Theory and Formal Languages. Lecture Notes in
    Computer Science, vol. 33, 134--183, Springer- Verlag, Berlin (1975).

    <bibitem|Des><with|font-shape|small-caps|R. Descartes>,
    <with|font-shape|italic|Géométrie> (1636). A source book in Mathematics,
    90--31. Harvard University press (1969).

    <bibitem|CLLR><with|font-shape|small-caps|M. Coste, T. Lajous-Loeza, H.
    Lombardi, M.-F. Roy>, <newblock><with|font-shape|italic|Generalized
    Budan-Fourier theorem and virtual roots>, Journal of Complexity, 21,
    478--486, (2005).

    <bibitem|Fou><with|font-shape|small-caps|J. Fourier>,
    <with|font-shape|italic|Analyse des équations déterminées>,
    F.<nbsp>Didot, Paris (1831).

    <bibitem|Gauss><with|font-shape|small-caps|C. F. Gauss>,
    <with|font-shape|italic|Demonstratio Nova Altera Theorematis Omnem Funct.
    Alg.>, Commentationes societatis regieae scientiarum Gottingensis
    recentiores, 3, \ 107--134 <newblock>(1816). Werke III 31-56 (1876).

    <bibitem|Ha><with|font-shape|small-caps|W. Habicht>,
    <newblock><with|font-shape|italic|Eine Verallgemeinerung des Sturmschen
    Wurzelzählverfahrens,> <newblock>Comm. Math. Helvetici 21, 99--116
    (1948).

    <bibitem|Her><with|font-shape|small-caps|C. Hermite>,
    <newblock><with|font-shape|italic|Remarques sur le théorème de Sturm>,
    <newblock>C. R. Acad. Sci. Paris 36, 52--54 (1853).

    <bibitem|Lap><with|font-shape|small-caps|S. Laplace>,
    <with|font-shape|italic| Sur la résolution des équations. Théorème sur la
    forme de leurs racines imaginaires. Cinquième leçon>. Leçons Math. Ecole
    Normale (1795).

    <bibitem|P><with|font-shape|small-caps|P. Pedersen>,
    <newblock><with|font-shape|italic|Counting real zeroes of polynomials>,
    <newblock>PhD Thesis, Courant Institute, New York University (1991).

    <bibitem|PRS><with|font-shape|small-caps|P. Pedersen, M.-F. Roy, A.
    Szpirglas>, <newblock><with|font-shape|italic|Counting real zeroes in the
    multivariate case>, <newblock>Computational algebraic geometry, Eyssette
    et Galligo ed. Progress in Mathematics 109, 203--224, Birkhauser (1993).

    <bibitem|Seidenberg54><with|font-shape|small-caps|A. Seidenberg>,
    <newblock><with|font-shape|italic|A new decision method for elementary
    algebra>, <newblock>Annals of Mathematics, 60:365--374, (1954).

    <bibitem|Stu><with|font-shape|small-caps|C. Sturm>,
    <newblock><with|font-shape|italic|Mémoire sur la résolution des équations
    numériques.> <newblock>Inst. France Sc.Math. Phys.6 (1835).

    <bibitem|S><with|font-shape|small-caps|J. J. Sylvester>,
    <newblock><with|font-shape|italic|On a theory of syzygetic relations of
    two rational integral functions, comprising an application to the theory
    of Sturm's function.> <newblock>Trans. Roy. Soc. London (1853).

    <bibitem|Tarski51><with|font-shape|small-caps|A. Tarski>,
    <newblock><with|font-shape|italic|A Decision method for elementary
    algebra and geometry>, <newblock>University of California Press (1951).

    \;
  </unfolded-std>

  \;
</body>

<\initial>
  <\collection>
    <associate|color|black>
    <associate|page-medium|papyrus>
    <associate|preamble|false>
    <associate|sfactor|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|10:alg:casteljauspe|<tuple|1|5>>
    <associate|10:alg:gcdfree|<tuple|1|?>>
    <associate|10:alg:uspensky|<tuple|2|6>>
    <associate|10:cor:cauchy|<tuple|4|?>>
    <associate|10:cor:graph|<tuple|24|?>>
    <associate|10:cor:sep|<tuple|22|?>>
    <associate|10:coro:divise|<tuple|3|4>>
    <associate|10:coro:squarefree|<tuple|15|?>>
    <associate|10:def:bigcauchy|<tuple|1|?>>
    <associate|10:def:bigcauchy2|<tuple|5|?>>
    <associate|10:def:isolating|<tuple|3|?>>
    <associate|10:eq:coeffroot|<tuple|4|4>>
    <associate|10:lem:bigcauchy|<tuple|2|?>>
    <associate|10:lem:bigcauchy2|<tuple|6|?>>
    <associate|10:lem:cauchy|<tuple|3|?>>
    <associate|10:lem:cauchy2|<tuple|7|?>>
    <associate|10:lem:cont|<tuple|17|?>>
    <associate|10:lem:cont0|<tuple|16|?>>
    <associate|10:lem:formahler|<tuple|2|3>>
    <associate|10:not-1|<tuple|1|?>>
    <associate|10:not-2|<tuple|5|?>>
    <associate|10:not-3|<tuple|6.1|4>>
    <associate|10:not-4|<tuple|15|?>>
    <associate|10:not-5|<tuple|19|?>>
    <associate|10:not-6|<tuple|5|2>>
    <associate|10:not-8|<tuple|6|5>>
    <associate|10:not:bern|<tuple|1|?>>
    <associate|10:prop:bernstein2bis|<tuple|6|5>>
    <associate|10:prop:div|<tuple|2|4>>
    <associate|10:prop:graph|<tuple|4|4>>
    <associate|10:prop:length|<tuple|2|3>>
    <associate|10:prop:mahler|<tuple|3|3>>
    <associate|10:prop:removecommon|<tuple|14|?>>
    <associate|10:prop:sep|<tuple|21|?>>
    <associate|10:prop:separatingtree|<tuple|7|?>>
    <associate|10:prop:sepgen|<tuple|20|?>>
    <associate|10:rem:squarefreering|<tuple|18|?>>
    <associate|10:sec:1|<tuple|3|?>>
    <associate|1:def:ssrem|<tuple|19|?>>
    <associate|1:ex:degree4|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|1:not-10|<tuple|9|?>>
    <associate|1:not:numberwithmult|<tuple|2|?>>
    <associate|2:cor:virtual|<tuple|8|?>>
    <associate|2:def:cauchy|<tuple|11|?>>
    <associate|2:def:real closed field|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|2:def:signchanges|<tuple|1|?>>
    <associate|2:def:sturmquery1|<tuple|17|?>>
    <associate|2:def:virtual roots|<tuple|4|?>>
    <associate|2:ex:quantifelim|<tuple|21|?>>
    <associate|2:fig:cauchy|<tuple|1|?>>
    <associate|2:lem:virtual|<tuple|7|?>>
    <associate|2:not-13|<tuple|1|?>>
    <associate|2:not-16|<tuple|2|?>>
    <associate|2:not-17|<tuple|2|?>>
    <associate|2:not-18|<tuple|11|?>>
    <associate|2:not-19|<tuple|17|?>>
    <associate|2:not-virtual1|<tuple|4|?>>
    <associate|2:not-virtual2|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|2:not:variationsbetween|<tuple|2|?>>
    <associate|2:rem:sturmdecides|<tuple|11|?>>
    <associate|2:the:general descartes law of signs|<tuple|3|?>>
    <associate|2:the:oldsturmtheorem|<tuple|10|?>>
    <associate|2:the:real closed field equivalents|<tuple|8|?>>
    <associate|2:the:sturmtheorem|<tuple|12|?>>
    <associate|2:the:virtual|<tuple|6|?>>
    <associate|4:def:discrim|<tuple|3|4>>
    <associate|4:def:trace|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|4:fig:swallowtail2d|<tuple|1|?>>
    <associate|4:fig:swallowtail3d|<tuple|2|?>>
    <associate|4:not-1|<tuple|3|4>>
    <associate|4:not-17|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|4:not-18|<tuple|14|?>>
    <associate|4:not-36|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|4:not-37|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|4:not-38bis|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|4:not-4|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|4:not:discriminant|<tuple|4|?>>
    <associate|4:not:multiplication|<tuple|14|?>>
    <associate|4:prop:forhermite|<tuple|16|?>>
    <associate|4:prop:hermtrace|<tuple|15|?>>
    <associate|4:prop:trace|<tuple|15|?>>
    <associate|4:rem:hermite|<tuple|15|?>>
    <associate|4:the:Hermite|<tuple|18|?>>
    <associate|4:the:hermitemet|<tuple|17|?>>
    <associate|4:the:hermitesturm|<tuple|13|?>>
    <associate|algo1|<tuple|2|?>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|3.2|1>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|<group|->>|1>>
    <associate|auto-12|<tuple|3.3|1>>
    <associate|auto-13|<tuple|10|1>>
    <associate|auto-14|<tuple|11|2>>
    <associate|auto-15|<tuple|3.4|2>>
    <associate|auto-16|<tuple|<with|mode|<quote|math>|<group|->>|2>>
    <associate|auto-17|<tuple|13|2>>
    <associate|auto-18|<tuple|<with|mode|<quote|math>|<group|->>|2>>
    <associate|auto-19|<tuple|14|2>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-20|<tuple|<with|mode|<quote|math>|<group|->>|2>>
    <associate|auto-21|<tuple|16|2>>
    <associate|auto-22|<tuple|17|2>>
    <associate|auto-23|<tuple|<with|mode|<quote|math>|<group|->>|3>>
    <associate|auto-24|<tuple|18|4>>
    <associate|auto-25|<tuple|3.5|4>>
    <associate|auto-26|<tuple|4|4>>
    <associate|auto-27|<tuple|4.1|4>>
    <associate|auto-28|<tuple|4.2|4>>
    <associate|auto-29|<tuple|4.3|5>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-30|<tuple|1|5>>
    <associate|auto-31|<tuple|2|7>>
    <associate|auto-32|<tuple|<with|mode|<quote|math>|<group|->>|8>>
    <associate|auto-33|<tuple|5.3|11>>
    <associate|auto-34|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|auto-35|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|auto-36|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|auto-37|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|auto-38|<tuple|5|?>>
    <associate|auto-39|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|auto-4|<tuple|3.1|2>>
    <associate|auto-40|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|auto-41|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|auto-42|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|auto-43|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|auto-44|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|auto-45|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|auto-46|<tuple|<with|mode|<quote|math>|<group|->>|?>>
    <associate|auto-5|<tuple|1|2>>
    <associate|auto-6|<tuple|3|2>>
    <associate|auto-7|<tuple|4|2>>
    <associate|auto-8|<tuple|4|1>>
    <associate|auto-9|<tuple|4|1>>
    <associate|bernsteinuniform|<tuple|2|2>>
    <associate|bib-|<tuple|8|?>>
    <associate|bib-ABR|<tuple|8|12>>
    <associate|bib-ABRW|<tuple|7|12>>
    <associate|bib-AL|<tuple|4|11>>
    <associate|bib-AS|<tuple|10|12>>
    <associate|bib-Alexander|<tuple|5|12>>
    <associate|bib-Alon|<tuple|6|12>>
    <associate|bib-Artin|<tuple|9|12>>
    <associate|bib-B00|<tuple|13|12>>
    <associate|bib-B99|<tuple|14|12>>
    <associate|bib-B99b|<tuple|15|12>>
    <associate|bib-BCR|<tuple|29|12>>
    <associate|bib-BKR|<tuple|26|12>>
    <associate|bib-BM|<tuple|30|12>>
    <associate|bib-BPR|<tuple|1|2>>
    <associate|bib-BPR02|<tuple|20|12>>
    <associate|bib-BPR2004|<tuple|22|12>>
    <associate|bib-BPR95|<tuple|16|12>>
    <associate|bib-BPR95a|<tuple|17|12>>
    <associate|bib-BPR95b|<tuple|18|12>>
    <associate|bib-BPR99|<tuple|19|12>>
    <associate|bib-BPRbettione|<tuple|24|12>>
    <associate|bib-BPRbook|<tuple|23|12>>
    <associate|bib-BPRfutfut|<tuple|21|12>>
    <associate|bib-BR|<tuple|25|12>>
    <associate|bib-Bar|<tuple|12|12>>
    <associate|bib-Benr|<tuple|2|13>>
    <associate|bib-Bez|<tuple|27|12>>
    <associate|bib-Birkhoff|<tuple|28|12>>
    <associate|bib-Br|<tuple|33|13>>
    <associate|bib-Brakhage|<tuple|31|12>>
    <associate|bib-Brown|<tuple|34|13>>
    <associate|bib-Bu|<tuple|36|13>>
    <associate|bib-BuTh|<tuple|35|13>>
    <associate|bib-Bud|<tuple|2|2>>
    <associate|bib-CGH|<tuple|38|13>>
    <associate|bib-CGV|<tuple|42|13>>
    <associate|bib-CLLR|<tuple|5|2>>
    <associate|bib-CLO|<tuple|54|13>>
    <associate|bib-CR|<tuple|53|13>>
    <associate|bib-Ca88|<tuple|40|13>>
    <associate|bib-Canny87|<tuple|39|13>>
    <associate|bib-Canny93a|<tuple|41|13>>
    <associate|bib-Cau|<tuple|44|13>>
    <associate|bib-Cohen|<tuple|46|13>>
    <associate|bib-Col|<tuple|3|13>>
    <associate|bib-Col0|<tuple|47|13>>
    <associate|bib-ColH|<tuple|49|13>>
    <associate|bib-D|<tuple|2|?>>
    <associate|bib-DH|<tuple|55|13>>
    <associate|bib-De|<tuple|2|?>>
    <associate|bib-Des|<tuple|4|2>>
    <associate|bib-Dog|<tuple|57|13>>
    <associate|bib-ESY|<tuple|58|13>>
    <associate|bib-Euler|<tuple|59|13>>
    <associate|bib-F4jcf|<tuple|61|14>>
    <associate|bib-Fab|<tuple|137|16>>
    <associate|bib-Farin|<tuple|60|14>>
    <associate|bib-Fou|<tuple|6|2>>
    <associate|bib-Fro|<tuple|64|14>>
    <associate|bib-GG|<tuple|67|14>>
    <associate|bib-GLRR1|<tuple|72|14>>
    <associate|bib-GLRR2|<tuple|73|14>>
    <associate|bib-GLomM|<tuple|71|14>>
    <associate|bib-GR92|<tuple|78|14>>
    <associate|bib-GV|<tuple|80|14>>
    <associate|bib-GV92|<tuple|81|14>>
    <associate|bib-GaV|<tuple|65|14>>
    <associate|bib-Gan|<tuple|66|14>>
    <associate|bib-Gauss|<tuple|7|14>>
    <associate|bib-Gbbib|<tuple|169|17>>
    <associate|bib-Gonz|<tuple|69|14>>
    <associate|bib-GonzKa|<tuple|70|14>>
    <associate|bib-Gor|<tuple|77|14>>
    <associate|bib-Gri88|<tuple|79|14>>
    <associate|bib-HL1|<tuple|84|14>>
    <associate|bib-HL2|<tuple|85|14>>
    <associate|bib-HRS|<tuple|88|14>>
    <associate|bib-HRS89|<tuple|87|14>>
    <associate|bib-HRS93|<tuple|89|15>>
    <associate|bib-HRS94|<tuple|90|15>>
    <associate|bib-Ha|<tuple|8|14>>
    <associate|bib-Had|<tuple|83|14>>
    <associate|bib-Hardt|<tuple|86|14>>
    <associate|bib-Her|<tuple|9|15>>
    <associate|bib-Her2|<tuple|93|15>>
    <associate|bib-Herm|<tuple|91|15>>
    <associate|bib-Hil|<tuple|94|15>>
    <associate|bib-Hormander|<tuple|95|15>>
    <associate|bib-Hur|<tuple|96|15>>
    <associate|bib-Il|<tuple|97|15>>
    <associate|bib-K|<tuple|45|13>>
    <associate|bib-KM|<tuple|101|15>>
    <associate|bib-KN|<tuple|102|15>>
    <associate|bib-Kh2|<tuple|98|15>>
    <associate|bib-Kne|<tuple|99|15>>
    <associate|bib-Kol|<tuple|100|15>>
    <associate|bib-Kr|<tuple|103|15>>
    <associate|bib-LC|<tuple|111|15>>
    <associate|bib-LRS|<tuple|115|15>>
    <associate|bib-LaRi|<tuple|104|15>>
    <associate|bib-Lang|<tuple|105|15>>
    <associate|bib-Lap|<tuple|10|?>>
    <associate|bib-Latombe|<tuple|106|15>>
    <associate|bib-Laz|<tuple|107|15>>
    <associate|bib-Lev|<tuple|109|15>>
    <associate|bib-LiR|<tuple|112|15>>
    <associate|bib-LicR2|<tuple|110|15>>
    <associate|bib-Loj1|<tuple|113|15>>
    <associate|bib-Loj2|<tuple|114|15>>
    <associate|bib-M|<tuple|125|16>>
    <associate|bib-Mat|<tuple|116|15>>
    <associate|bib-Mayr|<tuple|117|15>>
    <associate|bib-Mend|<tuple|118|15>>
    <associate|bib-Mi|<tuple|119|16>>
    <associate|bib-Michel|<tuple|50|13>>
    <associate|bib-Michel2|<tuple|51|13>>
    <associate|bib-Milnor1|<tuple|120|16>>
    <associate|bib-Milnor2|<tuple|121|16>>
    <associate|bib-Morse|<tuple|124|16>>
    <associate|bib-New|<tuple|126|16>>
    <associate|bib-O|<tuple|127|16>>
    <associate|bib-OP|<tuple|128|16>>
    <associate|bib-Os|<tuple|129|16>>
    <associate|bib-P|<tuple|11|16>>
    <associate|bib-PR|<tuple|3|13>>
    <associate|bib-PRS|<tuple|12|16>>
    <associate|bib-Pap|<tuple|130|16>>
    <associate|bib-Poincare|<tuple|133|16>>
    <associate|bib-PrSa|<tuple|135|16>>
    <associate|bib-R92|<tuple|136|16>>
    <associate|bib-RRS|<tuple|140|16>>
    <associate|bib-RS|<tuple|144|16>>
    <associate|bib-RV96|<tuple|145|16>>
    <associate|bib-RZ|<tuple|141|16>>
    <associate|bib-Routh|<tuple|142|16>>
    <associate|bib-Roy|<tuple|143|16>>
    <associate|bib-S|<tuple|15|17>>
    <associate|bib-SS|<tuple|149|17>>
    <associate|bib-SY|<tuple|152|17>>
    <associate|bib-Seidenberg54|<tuple|13|17>>
    <associate|bib-Sha|<tuple|150|17>>
    <associate|bib-Spanier|<tuple|153|17>>
    <associate|bib-Stre|<tuple|154|17>>
    <associate|bib-Stu|<tuple|14|17>>
    <associate|bib-T|<tuple|160|17>>
    <associate|bib-Tap1|<tuple|75|14>>
    <associate|bib-Tap2|<tuple|76|14>>
    <associate|bib-Tarski|<tuple|157|17>>
    <associate|bib-Tarski40|<tuple|158|17>>
    <associate|bib-Tarski51|<tuple|16|17>>
    <associate|bib-Usp|<tuple|161|17>>
    <associate|bib-VW|<tuple|162|17>>
    <associate|bib-VW2|<tuple|163|17>>
    <associate|bib-Vietoris|<tuple|164|17>>
    <associate|bib-Vincent|<tuple|165|17>>
    <associate|bib-Vorobjovdim|<tuple|166|17>>
    <associate|bib-Wa|<tuple|167|17>>
    <associate|bib-Warren|<tuple|168|17>>
    <associate|bib-ars|<tuple|11|12>>
    <associate|bib-car|<tuple|43|13>>
    <associate|bib-fr|<tuple|138|16>>
    <associate|bib-gn|<tuple|74|14>>
    <associate|bib-intb|<tuple|32|12>>
    <associate|bib-jcf|<tuple|62|14>>
    <associate|bib-lef|<tuple|108|15>>
    <associate|bib-mon|<tuple|122|16>>
    <associate|bib-monk|<tuple|123|16>>
    <associate|bib-ms|<tuple|146|16>>
    <associate|bib-ms2|<tuple|147|16>>
    <associate|bib-rur05|<tuple|139|16>>
    <associate|bib-sch|<tuple|148|16>>
    <associate|certif1|<tuple|1|2>>
    <associate|divideswell|<tuple|7|6>>
    <associate|divisedwell|<tuple|2|?>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnote-3|<tuple|3|?>>
    <associate|footnote-4|<tuple|4|?>>
    <associate|general|<tuple|11|10>>
    <associate|generalcertificate|<tuple|5|9>>
    <associate|graphgeneralized|<tuple|5|5>>
    <associate|lemQ2|<tuple|14|12>>
    <associate|lemmaQ1|<tuple|13|11>>
    <associate|lettretree|<tuple|10|8>>
    <associate|minmin|<tuple|12|11>>
    <associate|rickybruce|<tuple|3|?>>
    <associate|squarefree|<tuple|11|6>>
    <associate|squarefreecertificate|<tuple|3|7>>
    <associate|vickybruce|<tuple|3|2>>
    <associate|yun|<tuple|4|8>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      Tarski51

      BPR

      Col

      BPR
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Answers
      and remarks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Real
      root counting > <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|3.1<space|2spc>Descartes, Budan-Fourier
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1.5fn>|3.2<space|2spc>Laplace Gauss
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1.5fn>|3.3<space|2spc>Sturm
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1.5fn>|3.4<space|2spc>Hermite
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1.5fn>|3.5<space|2spc>Habicht
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Quantifier
      elimination > <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|4.1<space|2spc>Tarski
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|1.5fn>|4.2<space|2spc>Seidenberg
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1.5fn>|4.3<space|2spc>Collins
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Certificates
      of positivity > <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>