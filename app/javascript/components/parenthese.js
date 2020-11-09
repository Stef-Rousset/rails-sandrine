const parenthese = () => {
const title = document.querySelector('#parentheses');
  function translation() {
    title.classList.toggle('translate');
  };
  window.addEventListener('load', translation);
};

export { parenthese };
