class Validation {
  String validatePassword(String value) { 
    
      // Pattern pattern =
      // r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
      // RegExp regex = new RegExp(pattern);
       if (value.isEmpty) {
        return "Field tidak boleh kosong";}
      // } else if (!regex.hasMatch(value)){
      //   return 'Invalid password';
      // }
      else
        return null;
    }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Email tidak valid';
    else
      return null;
  }

  String validateName(String value) {
      Pattern pattern =
          r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
      RegExp regex = new RegExp(pattern);
      if (value.isEmpty) {
        return "Field tidak boleh kosong";
      } else if (!regex.hasMatch(value)){
        return 'Invalid username';
      }
      else
        return null;
  }

  String validateInput(String value){
    // String patttern = r'(^[a-zA-Z ]*$)';
    //   RegExp regExp = new RegExp(patttern);
      if (value.isEmpty) {
        return "Field tidak boleh kosong";
      } 
      return null;
  }
}
