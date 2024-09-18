(() => {
  echo('Hello, world!');
})();

function echo(...args) {
  console.log(...args);
}
