(() => {
  echo('Hello, world!');
})();

function echo(...args: string[]) {
  console.log(...args);
}
