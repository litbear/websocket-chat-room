function DOMLoadedHandler(window){

}
if (document.readyState === 'complete' || document.readyState !== 'loading') {
    DOMLoadedHandler(window);
} else {
    document.addEventListener('DOMContentLoaded', DOMLoadedHandler);
}