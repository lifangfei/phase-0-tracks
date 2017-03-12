
/* 
FIND THE LONGEST PHRASE: 
-Declare empty variables for length and string storage
-Loop through an array until length of counter is same as phrase
-See if length of phrase is greater than 0, replace, then if the next phrase is longer than longest previous phrase
-Store the longest phrase in the string storage
-Return 
*/
function longestPhrase (phrase) {
	var phraseLength = 0;
	var stringStorage = null;

	for (var counter = 0; counter <phrase.length; counter++) {
		if (phrase[counter].length > phraseLength){
			phraseLength = phrase[counter].length;
			stringStorage = phrase[counter];
		}
	}
	return stringStorage;
}
/*
FIND A KEY-VALUE MATCH
-For every key in the first object
-See if the values match for the two objects
-Return true for matches and false for no key-value pair overlaps
*/
function keyValueMatch (object1, object2){
	for (var key in object1){
		if (object1[key] == object2[key]) {
			return true;
		}
	}
	return false;
}
/*
GENERATE RANDOM TEST DATA
-Create an empty array
-Create alphabet variable including space
-Create word string
-Create loop that continues until counter is the desired words of the random array
-Create a variable that randomizely selects characters and adds to a string
-Add string to an array
-Return array
*/
function makeWordArray(arrayWords){
	var wordArray = [];
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    for ( var counter = 0; counter < arrayWords; counter++) {
    	var wordLetters = Math.floor((Math.random() * 9) + 1);
    	var word = "";
   		for( var counter2 = 0; counter2 < wordLetters; counter2++ ) {
	        word += alphabet.charAt(Math.floor(Math.random() * (alphabet.length+1)));
	    }
    	wordArray.push(word);
    }
    return wordArray;
}



//DRIVER CODE + LOOP
// Longest Phrase Function
var phrases = ["long phrase","longest phrase","longer phrase"];
console.log(longestPhrase(phrases))

// Key Value Match Functions
var Steve = {name: "Steven", age: 54};
var Tamir = {name: "Tamir", age: 54};
console.log(keyValueMatch(Steve, Tamir))

// Make Word Array Function

console.log(makeWordArray(5))

/* GENERATE RANDOM TEST DATA (2)
-Create loop to run 10 times (0 to < 10)
-Create random number for number of words in the array
-Run the random test data
-Print
-Run longest word
-Print
*/
for (var i = 0; i < 10 ; i++) {
	console.log('#' + i)
	var arrayWords = Math.floor((Math.random() * 10));
	var printArray = makeWordArray(arrayWords);
	console.log(printArray);
	var longestWord = longestPhrase(printArray);
	console.log(longestWord);
}
