function isLocalEnvironment() {
    return !window.location.hostname.includes('vercel.app');
}

// Base path depending on the environment
const isLocal = isLocalEnvironment();
const basePath = isLocal ? '../ovas_first' : '';

// Dynamically load CSS
(function loadCSS() {
    const cssPath = `${basePath}/features/users/css/index.css`;
    const linkElement = document.createElement('link');
    linkElement.rel = 'stylesheet';
    linkElement.href = cssPath;
    document.head.appendChild(linkElement);
})();

// Function to adjust image sources
function adjustImageSources() {
    const images = document.querySelectorAll('img');
    images.forEach(img => {
        const src = img.getAttribute('src');
        if (src && !src.startsWith('http') && !src.startsWith('data')) {
            img.src = `${basePath}${src}`;
        }
    });
}

// Function to adjust script sources
function loadScripts() {
    const scriptPaths = [
        '/features/users/function/script/services-check.js',
        '/features/users/function/script/chatbot-toggle.js',
        '/features/users/function/script/scroll-choose_us.js',
        '/features/users/function/script/scroll-service.js',
        '/features/users/function/script/services-carousel.js'
    ];

    scriptPaths.forEach(path => {
        const scriptElement = document.createElement('script');
        scriptElement.src = `${basePath}${path}`;
        document.head.appendChild(scriptElement);
    });
}

// Function to adjust anchor hrefs
function adjustAnchorHrefs() {
    const links = document.querySelectorAll('a[href]');
    links.forEach(link => {
        const href = link.getAttribute('href');
        if (href && !href.startsWith('http') && !href.startsWith('#')) {
            link.href = `${basePath}${href}`;
        }
    });
}

// DOMContentLoaded event to ensure DOM is fully loaded before adjustments
document.addEventListener('DOMContentLoaded', function() {
    if (isLocal) {
        adjustImageSources();
        adjustAnchorHrefs();
    }
    loadScripts(); // Scripts can be loaded in both environments
});