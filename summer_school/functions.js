// JavaScript Document

	function isEmail(email){

   		// controllo della presenza del carattere '@'
   		var index     = email.indexOf('@', 0);
   		var address   = "";
   		var ok = true;

   		if (index == -1){
      		ok = false;
   		} else {
      		var size = email.length;
      		address = email.substring(size + 1, index + 1);
      		userid =  email.substring(1, index);

      		// controlla: l'unicità del carattere "@";
      		// - la presenza del "." nella parte DX dell'indirizzo;
      		// - l'assenza di spazi e
      		// - che la stringa non sia del tipo userid@.address o userid.@address
			if ((address.indexOf('@') != -1) || (userid.indexOf('@') != -1) ||
				(address.indexOf('.') == -1) || (!nospace(email)) ||
				(email.charAt(index - 1) == '.') || (email.charAt(index + 1) == '.'))
			{
				ok = false;
			}
		}
		if (ok == false) return false;
		else return true;
	}

	
	function checkFields(){
		msg = "You must compile all the fields to confirm your pre-registration!";
		if(frm_reg.name.value == "" || frm_reg.surname.value == "" || frm_reg.instituition.value == "" || frm_reg.mail.value == ""){
			alert(msg);
			return false;
		}
		if(!isEmail(frm_reg.mail.value)){
			alert("Wrong e-mail type! Please insert an e-mail address like:\nxxxx@dddd.cc");
			return false;
		}
		return true;
	}