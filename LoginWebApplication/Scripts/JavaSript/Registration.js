

function FristNameTextBox() {
    var val = document.getElementById("FristNameTxt").value;
    if (document.getElementById("FristNameTxt").value == "") {
        alert("Please Enter FristName");
        FristNameTxt.focus();
        //button.disabled = true;
        return false;
    }
    else if (!isNaN(val)) {
        alert(" Frist Name Can Allow  Text Only");
        //TextBox1.focus();
        return false;
    }
    else if (val.length > 10) {
        alert("You Can Enter Max 10 Charechters Only In FristName");
        
        return false;
    }
    else if (val.length < 3) {
        alert("Should be Minmum 3 Charecters in FristName");
        
        return false;
    }
    return true;
}

function LastNameTextBox() {
    var val = document.getElementById("LastNameTxt").value;
    if (document.getElementById("LastNameTxt").value == "")
    {
        alert("Please Enter LastName");
        LastNameTxt.focus();
        return false;
    }
    else if (!isNaN(val)) {
        alert("Last Name Can Allow  Text Only");
        //TextBox2.focus();
        return false;
    }
    else if (val.length > 10) {
        alert("You Can Enter Max 10 Charechters Only In LastName");
        return false;
    
    }
    else if (val.length < 3) {
        alert("Should be Minmum 3 Charecters in LastName");
        return false;
    
    }
    return true;
}


function EmailTextBox(){
    var email = document.getElementById("EmailTxt");
    var filter = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (email.value == "") {
        alert('Please enter email address');
        //button.disabled = true;
        return false;
    }
    else if (!filter.test(email.value)) {
        alert('Please provide a valid email address');
        email.focus;
        return false;

    }
    return true;
}


function PasswordTextBox() {
    var pass = document.getElementById("PasswordTxt");
    var confirmpass = document.getElementById("ConfirmPasswordTxt");
    var Password = document.getElementById('PasswordTxt').value;
    var valid = pass.value == confirmpass.value;
    //button.disabled = true;
    if (Password == "") {
        alert("Please Enter Password");
        return false;
    }
    else if (Password.length < 4) {
        alert("Password should be 4 digits only");
        return false;
    
    }
    else if (Password.length > 12) {
        alert("Password Should be 12 digits only");
        return false;
    
    }
    else if (!valid) {
        alert("Password do not match");
        return false;
    }

    else {

        return true;
    }
}


































