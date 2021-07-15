pragma solidity >=0.4.24 <0.7.0;

contract Initializable {

    /**
    * @dev Indicates that the contract has been initialized.
    */
    bool private initialized;

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