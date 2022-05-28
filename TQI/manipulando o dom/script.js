function changeMode() {
    changeClasses();
    changeText();
}

function changeClasses() {
    button.classList.toggle(dKClass);
    h1.classList.toggle(dKClass);
    body.classList.toggle(dKClass);
    footer.classList.toggle(dKClass);  
}

function changeText() {
    const lightMode = 'Light Mode';
    const darkMode = 'Dark Mode';

    if (body.classList.contains(dKClass)) {
        button.innerHTML = lightMode;
        h1.innerHTML = darkMode + ' ON ' ;
        return;
    }

    button.innerHTML = darkMode;
    h1.innerHTML = lightMode + ' ON ' ;
}

const dKClass = 'dark-mode';
const button = document.getElementById('mode-selector');
const h1 = document.getElementById('page-title');
const body = document.getElementsByTagName('body')[0];
const footer = document.getElementsByTagName('footer')[0];
button.addEventListener('click', changeMode);