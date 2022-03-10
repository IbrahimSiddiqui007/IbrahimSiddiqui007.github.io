$(document).ready(function()
{
    var typed = new Typed(".Titles",{
    strings:["Ibrum's <span style='color:#00eeff'>E-Profile</span>"],
    typeSpeed: 100,
    backSpeed: 60,
    loop: true
    });
});

function loadXMLDocument(aboluteLocation) {
  try {
      xhttp = new XMLHttpRequest();
      xhttp.open("GET", aboluteLocation, false);
      xhttp.send();
      return xhttp.responseXML;   
  } catch (error) {
      console.log(error)
      alert("Could not lot XML file")
  }
}

function renderXML() {
  const xml = loadXMLDocument("./CV.xml");
  const xsl = loadXMLDocument("./CVStyle.xsl");

  
let xsltProcessor = new XSLTProcessor();
xsltProcessor.importStylesheet(xsl);

let resultDocument = xsltProcessor.transformToFragment(xml, document);
console.log(resultDocument)
document.getElementById("xml").appendChild(resultDocument);
}

document.addEventListener("DOMContentLoaded", async function(event) {
  renderXML();
})