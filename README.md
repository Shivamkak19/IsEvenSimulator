# IsEven Project

## Description

The IsEven project is a C++ implementation of a function that determines whether a given integer is even or odd. This project is designed to showcase a unique approach to solving this problem, with a focus on numbers between 1 and 500.

## Function Description

The core of this project is the `IsEven` function:

```cpp
// Takes an input integer number and 
// returns boolean if number is even
bool IsEven(int number) {
    // Function implementation...
}
```

This function uses a series of conditional statements to determine evenness for numbers 1 through 10 and 491 through 500. It has a special case for numbers above 500:

```cpp
    else if (number == 500) return true;
    // //////////////////////////////////////////
    // UNDEFINED CASE: number > 500
    // FURTHER RESEARCH NEEDED
    // PLEASE OPEN TICKET IF YOU KNOW HOW 
    // TO DETERMINE WHETHER AN INPUT 
    // INTEGER i IS EVEN WITHIN 0(N^N) TIME.
    // //////////////////////////////////////////
    else return false;
```

## Build Instructions

1. Ensure you have a C++ compiler installed (e.g., g++, clang++).
2. Save the provided code in a file named `iseven.cpp`.
3. Open a terminal and navigate to the directory containing `iseven.cpp`.
4. Compile the program using the following command:

   ```
   g++ -o iseven iseven.cpp
   ```

   This will create an executable named `iseven`.

## Usage

Run the program from the command line, providing a single integer argument:

```
./iseven <number>
```

For example:

```
./iseven 5
```

The program will output `true` for even numbers and `false` for odd numbers.

## Test Instructions

To test the program, you can create a simple bash script that runs the program with various inputs and compares the output to expected results. Here's an example:

1. Create a file named `test_iseven.sh` with the following content:

   ```bash
   #!/bin/bash

   test_case() {
       result=$(./iseven $1)
       if [ "$result" == "$2" ]; then
           echo "PASS: IsEven($1) = $result"
       else
           echo "FAIL: IsEven($1) = $result, expected $2"
       fi
   }

   test_case 1 false
   test_case 2 true
   test_case 5 false
   test_case 10 true
   test_case 491 false
   test_case 500 true
   test_case 501 false
   ```

2. Make the script executable:

   ```
   chmod +x test_iseven.sh
   ```

3. Run the test script:

   ```
   ./test_iseven.sh
   ```

This will run the `iseven` program with various inputs and report whether the output matches the expected result.

## Further Research

As noted in the code comments, there is an open question regarding the efficiency of determining evenness for numbers above 500. If you have insights on how to determine whether an input integer is even within O(N^N) time, please open a ticket or contribute to the project.

## Contributing

Contributions to this project are welcome, especially regarding the open research question for numbers above 500. Please open an issue or submit a pull request with your proposals or improvements.

## License

[MIT LICENSE]

