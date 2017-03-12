// Create reverse function
// Create a counter for how many letters there are
// Create a blank string
// Create a while loop that counts down until 0
// Extract the character between the counter and counter -1 from a string using substring: https://www.w3schools.com/jsref/jsref_substring.asp
// Add it to the original string
// Print to console log

function reverse(word) {
  var counter = word.length,
  string = '';
  while (counter > 0) {
    string += word.substring(counter - 1, counter);
    counter--;
  }
  console.log(string);
}
reverse("Hello")