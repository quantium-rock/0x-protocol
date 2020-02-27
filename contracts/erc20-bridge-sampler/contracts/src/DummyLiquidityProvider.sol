pragma solidity ^0.5.9;
pragma experimental ABIEncoderV2;



contract DummyLiquidityProvider
{
    constructor()
        public
    {}

    /// @dev Quotes the amount of `makerToken` that would be obtained by
    ///      selling `sellAmount` of `takerToken`.
    /// @param takerToken Address of the taker token (what to sell).
    /// @param makerToken Address of the maker token (what to buy).
    /// @param sellAmount Amount of `takerToken` to sell.
    /// @return makerTokenAmount Amount of `makerToken` that would be obtained.
    function getSellQuote(
        address takerToken,
        address makerToken,
        uint256 sellAmount
    )
        external
        view
        returns (uint256 makerTokenAmount) {
            makerTokenAmount = sellAmount - 1;
        }

    /// @dev Quotes the amount of `takerToken` that would need to be sold in
    ///      order to obtain `buyAmount` of `makerToken`.
    /// @param takerToken Address of the taker token (what to sell).
    /// @param makerToken Address of the maker token (what to buy).
    /// @param buyAmount Amount of `makerToken` to buy.
    /// @return takerTokenAmount Amount of `takerToken` that would need to be sold.
    function getBuyQuote(
        address takerToken,
        address makerToken,
        uint256 buyAmount
    )
        external
        view
        returns (uint256 takerTokenAmount) {
            takerTokenAmount = buyAmount + 1;
        }
}