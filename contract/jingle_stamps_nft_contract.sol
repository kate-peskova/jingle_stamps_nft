pragma solidity ^0.5.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC721/ERC721Full.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/drafts/Counters.sol";


contract JingleStampsContract is ERC721Full {
    constructor() ERC721Full("JingleStamp", "JING") public {
        
    stampTypes[1] = "Gift";
    stampTypes[2] = "Penguin";
    stampTypes[3] = "Santa Hat";
    stampTypes[4] = "HoHoHo";
    stampTypes[5] = "Stocking";
    stampTypes[6] = "Santa";
    
    
    stampImages[1] = "ipfs://bafybeia7a5kvld3ouoppybyxocycn4xwz75hyuwono7ivdbscutrctpna4"; // Gift
    stampImages[2] = "ipfs://bafybeidn3plurubjloo2g6ytlvz4ihopwzsby3qhltcwqvpjarnbsxqbdq"; // Penguin
    stampImages[3] = "ipfs://bafybeigppdf2uksgha4iokskpk25loyotekj65nk33tdkoantpl7nnxwgi"; // Santa Hat
    stampImages[4] = "ipfs://bafybeidnln7czpwkrptgyimf5ngljk3me3ngkl7qh42z5465iy6bvzrtx4"; // HoHoHo
    stampImages[5] = "ipfs://bafybeib4er3wqly243fqynztnwlwhqtr6fdqinmuikzk5kd6ftxv47vwba"; // Stocking
    stampImages[6] = "ipfs://bafybeifn2dh5ppw4k6r2viuosy55znl7e5zw6oova2jusslyiogm2ivqtm"; // Santa
        
    }
    
    using Counters for Counters.Counter;
    Counters.Counter tokenIDs;

    struct JingleStamp {
        uint stampIndex;
        string stampName;
    }
    
    mapping(uint => JingleStamp) public stampCollection; 
    mapping(uint => string) public stampTypes;
    mapping(uint => string) public stampImages; 
    
   
    function mintStamp(address owner) public returns(uint) {
        
        tokenIDs.increment();
        uint tokenID = tokenIDs.current();
        _mint(owner, tokenID);
        stampCollection[tokenID].stampIndex = randomNumberGenerator();
        _setTokenURI(tokenID, stampImages[stampCollection[tokenID].stampIndex]);
        stampCollection[tokenID] = JingleStamp(stampCollection[tokenID].stampIndex, stampTypes[stampCollection[tokenID].stampIndex]);
        
        return tokenID;
    }
    
    function randomNumberGenerator() public view returns(uint) {
        
        return now % 6 + 1;
    }
    
    function getStampType(uint tokenID) public view returns(string memory) {
        
        return stampTypes[stampCollection[tokenID].stampIndex];
        
    }
    
    function getStampImage(uint tokenID) public view returns(string memory) {
        
        return stampImages[stampCollection[tokenID].stampIndex];
        
    }
}