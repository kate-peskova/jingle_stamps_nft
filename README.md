![jinglestampsbanner.JPG](frontend/JingStamps/jinglestampsbanner.JPG)

# Jingle Stamp NFT Collection

## Summary

Crypto and blockchain adoption is growing significantly, leading to the popularity of NFTs (non-fungible tokens). The NFT market is developing due to the investment opportunity, utility, and sentimental value an NFT can offer. Our team is fascinated with the use cases of NFTs and decided to develop our own NFT collection based on Christmas while anticipating an upcoming holiday season. We wanted to incorporate randomness when minting a new Jingle Stamp to add an element of chance for the type of stamp minted. 

The Jingle Stamp Collection is an NFT collection representing digital stamps with a Christmas theme. There are six types of stamps (Holiday Gifts, Cute Penguin, Santa Hat, HoHoHo, Stocking, Santa). Each stamp (JING) is an ERC721 token. You are invited to follow the demo link and generate your very own Jingle Stamp.

 ### Implementation

The program uses solidity code on its backend to mint the JING NFTs. On the frontend, the program operates through HTML, CSS, and Javascript. Once we enter the app through the user interface, we can click the button to randomly generate our Jingle Stamp. That interaction would connect us to MetaMask to confirm the transaction. Once confirmed and through, we can go on Etherscan to see our JING transaction hash.  

### Backend.
Below you can find the link to the solidity code.

•	[Solidity Contract code](contract/jingle_stamps_nft_contract.sol)

### Frontend.
Below you can find the links to the frontend code files.

•	[HTML code](frontend/index.html)
•	[JavaScript code](frontend/dapp.js)

### Demo app.
To check out the Jingle stamp generator, run the following command in your terminal then follow the link below.

```
python -m http.server 8000
```

•	[Jingle Stamp Generator]( http://localhost:8000/)
