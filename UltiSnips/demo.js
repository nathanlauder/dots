const foo = () => {
  console.log('hello');
};

const sum = (x, y) => {
  return x+y;
};

const listLog = (myList) => {
  myList.forEach((item) => {
    console.log(item);
  });
};

foo();
console.log(sum(2,3));
listLog([1,2,3,4,5,6]);
