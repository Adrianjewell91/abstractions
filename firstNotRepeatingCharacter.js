// def abstraction(s)
// # define data structure
// counter = Hash.new(0)

// # define the data structure
// letters = []

// s.each_char do | ch |
//     letters << ch if counter[ch] == 0
//         counter[ch] += 1
// end

// letters.each do | ch |
//         return ch if counter[ch] == 1         
//     end

// return "_"
// end

// INTO:

// function firstNotRepeatingCharacter(string = '') {
//     // Tests concept of passing by reference:
//     function build(string = '') {}

//     // Logic of building counter hashes and arrays:
//     function generate(string = '', counter = {}, list = {}) {}

//     // For-loop practice:
//     function check({counter, list}) {}

        // Generate a counter and list and return the analysis on those two variables.
        // const { counter, list } = build(string);
        // return check({ counter, list });
// }

// Passes codesignal
function firstNotRepeatingCharacter(string = '') {
    // Tests concept of passing by reference:
    function build(string = '') {
        const counter = {};
        const list = [];

        return generate({string, counter, list});
    }

    // Logic of building counter hashes and arrays:
    function generate({string = '', counter = {}, list = {}}) {
        string.split('').forEach(ch => {
            if (counter[ch] === undefined) {
                counter[ch] = 0;
                list.push(ch);
            }
            counter[ch] += 1;
        });

        return {counter, list};
    }

    // For-loop practice:
    function check({counter, list}) {
        for (ch of list) {
            if (counter[ch] === 1) return ch;
        }
        return '_';
    }

    const { counter, list } = build(string);
    return check({counter, list});
}
