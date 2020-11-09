const imageAnimation = () => {
const photos = document.querySelectorAll('.photo');
  photos.forEach((photo) => {
    photo.addEventListener('mouseover',(event) => {
    event.currentTarget.classList.add('photo-transform');
    });
    photo.addEventListener('mouseout',(event) => {
    event.currentTarget.classList.remove('photo-transform');
    });
  });
   const photosBis = document.querySelectorAll('.photo-bis');
    photosBis.forEach((photoBis) => {
      photoBis.addEventListener('mouseover',(event) => {
      event.currentTarget.classList.add('photo-bis-transform');
      });
      photoBis.addEventListener('mouseout',(event) => {
      event.currentTarget.classList.remove('photo-bis-transform');
      });
    });
};
export { imageAnimation };
