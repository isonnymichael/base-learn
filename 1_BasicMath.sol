// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/**
 * @title BasicMath
 * @author isonnymichael
 * @dev This contract implements basic arithmetic operations with overflow and underflow detection
 */
contract BasicMath {

    /**
     * @dev Maximum possible value for uint256
     * @notice Used for overflow detection in arithmetic operations
     */
    uint256 constant MAX_INT = type(uint256).max;

    /**
     * @dev Safely adds two unsigned integers
     * @param _a First number to add
     * @param _b Second number to add
     * @return sum The result of addition if no overflow occurred, 0 otherwise
     * @return error Boolean indicating whether an overflow occurred
     */
    function adder(uint256 _a, uint256 _b) external pure returns (uint256 sum, bool error) {
        if (_b > MAX_INT - _a) { // Check for overflow
            return (0, true); // Return 0 and true if overflow occurs
        }
        return (_a + _b, false); // Return sum and false if no overflow occurs
    }

    /**
     * @dev Safely subtracts two unsigned integers
     * @param _a Number to subtract from
     * @param _b Number to subtract
     * @return difference The result of subtraction if no underflow occurred, 0 otherwise
     * @return error Boolean indicating whether an underflow occurred
     */
    function subtractor(uint256 _a, uint256 _b) external pure returns (uint256 difference, bool error) {
        if (_b > _a) { // Check for underflow
            return (0, true); // Return 0 and true if underflow occurs
        }
        return (_a - _b, false); // Return difference and false if no underflow occurs
    }
}
