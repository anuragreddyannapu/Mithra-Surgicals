function UserNameTextBox() {
    if (document.getElementById("EmailTxt").value == "") {
        alert("Please Enter User Name");
        EmailTxt.focus();
        return false;
    }
    return true;
}

function PasswordTextBox() {
    if (document.getElementById("PasswordTxt").value == "") {
        alert("Please Enter Password");
        PasswordTxt.focus();
        return false;
    }
    return true;
}