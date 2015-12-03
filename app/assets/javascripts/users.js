function createlightbox(elementId)
{
    document.getElementById(elementId).style.display='block';
    document.getElementById('fade').style.display='block'
}
function closelightbox(elementId)
{
    document.getElementById(elementId).style.display='none';
    document.getElementById('fade').style.display='none'
}