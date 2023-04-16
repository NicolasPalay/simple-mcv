/* create bar search home page */
    /* delete bar search in the nav*/

let body = document.querySelector('body');

if (body.classList.contains('home-page')) {
    const formSearchNav = document.querySelector('.search-bar');
    formSearchNav.remove();
}
