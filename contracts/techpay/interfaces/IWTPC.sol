pragma solidity ^0.5.17;

interface IWTPC {
    // @dev Deposit wraps received TPC tokens as wTPC in 1:1 ratio by minting
    // the received amount of TPCs in wTPC on the sender's address.
    function deposit() external payable returns (uint256);

    // @dev Withdraw unwraps TPC tokens by burning specified amount
    // of wTPC from the caller address and sending the same amount
    // of TPCs back in exchange.
    function withdraw(uint256 amount) external returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     * Returns a boolean value indicating whether the operation succeeded.
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);
}
