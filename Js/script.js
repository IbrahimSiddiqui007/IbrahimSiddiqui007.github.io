$(document).ready(function()
{
    var typed = new Typed(".TYP1",{
    strings:["","Developer","Photographer","Guitarist","Audiophile","Techie","Car Enthusiast"],
    typeSpeed: 100,
    backSpeed: 60,
    loop: true
    });
});

$(document).ready(function()
{
    var typed = new Typed(".Titles",{
    strings:["Ibrum's <span style='color:#00eeff'>E-Profile</span>"],
    typeSpeed: 100,
    backSpeed: 60,
    loop: true
    });
});



function validateForm(){
    if (document.getElementById("FName").value == null) {
        alert("The First Name Cannot Be empty")
    }
    else if (!(/^[a-zA-Z ,.'-]+$/.test(document.getElementById("FName").value)))
    {
        alert("The First Name is InValid ")
    }
        
    if (document.getElementById("LName").value == null ) 
    {
        alert("The Last Name Cannot Be empty")
    }
    else if(/^[a-zA-Z ,.'-]+$/.test(document.getElementById("LName").value))
    {
        alert("The Last Name is InValid")
    }

    if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(document.getElementById("Email").value)))
    {
        alert("You have entered an invalid email address!")
    }
    else if(document.getElementById("Email").value == null)
    {
        alert("You have not entered an email address!")
    }
    
    if (document.getElementById("CCountry").value == null)
    {
        alert("Please Select a Country")
    }

    if (document.getElementById("MSSG").value === "")
    {
        alert("Please enter a Message")
    }

    if (!(document.getElementById("FName").value === "") && !(document.getElementById("LName").value === "")&&(document.getElementById("Email").value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/))&&!(document.getElementById("CCountry").value === "")&&!(document.getElementById("MSSG").value === ""))
    {
        alert("Success ur message was sent")
    }
}

