// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/**
 * @title SillyStringUtils
 * @author isonnymichael
 * @dev This library provides utility functions for string manipulation
 */
library SillyStringUtils {
    /**
     * @dev Structure representing a traditional Haiku poem format
     * @notice Haiku is a traditional form of Japanese poetry with three lines
     * @param line1 First line of the Haiku (traditionally 5 syllables)
     * @param line2 Second line of the Haiku (traditionally 7 syllables)
     * @param line3 Third line of the Haiku (traditionally 5 syllables)
     */
    struct Haiku {
        string line1; // First line (5 syllables)
        string line2; // Second line (7 syllables)
        string line3; // Third line (5 syllables)
    }

    /**
     * @dev Appends a shrug emoji to the input string
     * @param _input The original string to be modified
     * @return A new string with the shrug emoji appended
     * @notice This function is purely for fun and demonstration purposes
     */
    function shruggie(string memory _input) internal pure returns (string memory) {
        // Concatenate the input string with a shrug emoji
        return string.concat(_input, unicode" 🤷");
    }
}
