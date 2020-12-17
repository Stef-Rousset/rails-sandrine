const displayTitle = () => {
  const pLetter = document.querySelector('span[class="one"]');
  const letters = document.querySelectorAll('#two');

  function animation(){
    pLetter.classList.add('anim');
    letters.forEach(letter => {
      letter.classList.add('anim_letter');
    });
  }
  if(pLetter && letters) {
  window.addEventListener('load', animation);
  };
};
export { displayTitle };
