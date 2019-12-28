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
