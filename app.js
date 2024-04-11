function isPalindrome(str) {
    // Remove non-alphanumeric characters and convert to lowercase
    str = str.replace(/[^A-Za-z0-9]/g, '').toLowerCase();
    
    
    return str === str.split('').reverse().join('');
}



module.exports = isPalindrome;