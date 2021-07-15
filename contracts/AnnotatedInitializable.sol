pragma solidity >=0.4.24 <0.7.0;

///#if_succeeds old(initialized) ==> initialized;
contract Initializable {

    /**
    * @dev Indicates that the contract has been initialized.
    */
    bool private initialized;

    /// #if_succeeds !old(initialized);
    /// #if_succeeds initialzed;
    function initialize() public {
        require(!initialized);
        initialized = true;
    }
}

contract Example is Initializable {
    function accidentalUninitialisation() {
        initialized = false;
    }
}