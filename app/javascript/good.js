function good (){
  const goodIcon= document.getElementById("good-icon");
  goodIcon.addEventListener("click", () => {
    const goodPoint = document.getElementById("good-point");
    goodPoint.innerHTML = `1`;
  });
};

window.addEventListener('load', good);