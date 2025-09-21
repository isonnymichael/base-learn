// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Import the AddressBook contract to interact with it
import "./10_2_AddressBook.sol";

/**
 * @dev Contract for creating new instances of AddressBook
 * @notice Users can call the deploy function to get their own AddressBook instance
 */
contract AddressBookFactory {
    /**
     * @dev Private salt value for internal use
     * @notice This value could be used for deterministic deployments in future versions
     */
    string private salt = "value";

    /**
     * @dev Deploys a new instance of AddressBook
     * @notice The ownership of the new contract is transferred to the caller
     * @return A new AddressBook contract instance
     */
    function deploy() external returns (AddressBook) {
        // Create a new instance of AddressBook
        AddressBook newAddressBook = new AddressBook();

        // Transfer ownership of the new AddressBook contract to the caller of this function
        newAddressBook.transferOwnership(msg.sender);

        // Return the newly created AddressBook contract
        return newAddressBook;
    }
}
