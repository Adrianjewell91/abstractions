//How can an algorithm break up the code into some like this? 
// # def firstDuplicate(a):
// #     for i in a:
// #         a[abs(i) - 1] *= -1
// #         if a[abs(i) - 1] > 0:
// #             return abs(i)
// #     return -1

// INTO:
// function firstDuplicate(array = []) {
//     function iterate(array) {

//     }

//     function multiply(array, idx) {

//     }

//     function greaterThanZero(array, idx) {

//     }

//     function absolute(num) {

//     }

// Passes codesignal.
// I think this abstraction is sufficient for a student although it could be abstracted more.
function firstDuplicate(array = []) {
    function iterate(array) {
        for (n of array) {
            multiply(array, n);
            if (greaterThanZero(array, n)) return n;
        }
    }

    function multiply(array, idx) {
        return array[absolute(idx) - 1] *= -1;
    }

    function greaterThanZero(array, idx) {
        return array[absolute(idx) -1 ] > 0;
    }

    function absolute(num) {
        return Math.absolute(num);
    }

    result = iterate(array);
    return result ? result : -1;
}
