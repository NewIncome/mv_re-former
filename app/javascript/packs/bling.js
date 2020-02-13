window.$ = document.querySelector.bind(document);
window.$$ = document.querySelector.bind(document);

Node.prototype.on = window.on = function (name, fn) {
  this.addEventListener(name, fn);
}

NodeList.prototype.__proto__ = Array.prototype;

NodeList.prototype.on = function (name, fn) {
  this.forEach(function (elem, i) {
    elem.on(name,fn);
  });
}