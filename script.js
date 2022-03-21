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

function loadDoc(){
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (xhttp.readyState == 4 && xhttp.status == 200) {
            processXML(xhttp);
          }
        };
        xhttp.open("GET", "http://localhost:8080/CSIT128Project/CV2.xml", true);
        xhttp.send();
}

function processXML(xhttp) {
var xml = xhttp.responseXML; 
var arr = parseXML(xml); 
display(arr); 
}

function parseXML(xml) {
var elements = xml.getElementsByTagName("Experience"); 
var arr = [];

for (var i = 0; i < elements.length; i++) { 
    var exp = {}; 

    exp.name = elements[i].getElementsByTagName("title")[0].childNodes[0].nodeValue;
    exp.date = elements[i].getElementsByTagName("date")[0].childNodes[0].nodeValue;
    exp.description = elements[i].getElementsByTagName("description")[0].childNodes[0].nodeValue;
    arr.push(exp); 
}
return arr; 
}

function display(arr) {
var html = "<ul style='list-style-type:none'>";

    for (var i = 0; i < arr.length; i++) 
    {
    html += "<li style='padding-bottom:10px;color:#00eeff; font-size: 20px;'>" + arr[i].name +"</li>";
    html += "<li style='padding-bottom:10px'>" + arr[i].date +"</li>";
    html += "<li style='padding-bottom:10px'>" + arr[i].description +"</li>";
    }

html += "</ul>";

var div = document.getElementById("rest_of_CV");
div.innerHTML = html;
}
