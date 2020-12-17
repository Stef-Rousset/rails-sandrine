const backToTop = () => {
  const topButton = document.querySelector('.ancre');
  if (topButton) {
    topButton.addEventListener('click', function(){
      window.scrollTo({
      top: 0,
      behavior: 'smooth'
      });
    })
  }
}

export { backToTop };
