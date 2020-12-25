const secretCode = () => {
  const pressedArray = [];
  const secretCode = process.env["SECRET_KEY"];
  console.log(secretCode);
  const navbar = document.querySelector('.navbar');
  function handleSecretCode(event){
    pressedArray.push(event.key);
    pressedArray.splice(-secretCode.length-1, pressedArray.length - secretCode.length);
    if(pressedArray.join('').includes(secretCode)){
      navbar.style.display = 'block';
    };
  };
  if(navbar){
    window.addEventListener('keyup', handleSecretCode);
  };
};
export{ secretCode };
