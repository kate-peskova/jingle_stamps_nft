pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC721/ERC721Full.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/drafts/Counters.sol";

contract GiftBasket is ERC721Full {

    constructor() ERC721Full("GiftBasket", "GIFB") public { }

    using Counters for Counters.Counter;
    Counters.Counter token_ids;

    struct GiftBasket {
        string name;
        string theme;
        uint appraisal_value;
    }

    mapping(uint => GiftBasket) public gift_basket_collection;

    event Appraisal(uint token_id, uint appraisal_value, string report_uri);

    function createGiftBasket(address owner, string memory name, string memory theme, uint initial_value, string memory token_uri) public returns(uint) {
        token_ids.increment();
        uint token_id = token_ids.current();

        _mint(owner, token_id);
        _setTokenURI(token_id, token_uri);

       gift_basket_collection[token_id] = GiftBasket(name, theme, initial_value);

        return token_id;
    }

    function newAppraisal(uint token_id, uint new_value, string memory report_uri) public returns(uint) {
        gift_basket_collection[token_id].appraisal_value = new_value;

        emit Appraisal(token_id, new_value, report_uri);

        return gift_basket_collection[token_id].appraisal_value;
    }
}
   