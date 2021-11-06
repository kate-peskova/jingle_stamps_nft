[jinglebasket.JPG](JING-images/jinglebasket.JPG)

# Jingle Stamp Collection

## Summary

### Introduciton

Crypto and blockchain adoption is growing signifigantly, leading to the popularity of NFTs (Non-fungible tokens). The NFT market is developing due to the investment opportunity, untility, and sentimental value an NFT can offer. Our team is fascinated with the use cases of NFTs and decided to develop our own NFT collection based on Christams since it is an upcoming holiday. We wanted to incoroporate randomness when minting a new Jingle Stamp to add an element of chance for the type of stamp minted. 

The Jingle Stamp Collection is an NFT collection representing digital stamps with a Christmas theme. There are six types of stamps (Gitf, Penguin, Santa Hat, HoHoHo, Stocking, Santa). Each stamp (JING) is an ERC721 token.

##Backend

Backend Link: [jingle_stamps_contract.sol](contract/jingle_stamps_nft_contract.sol)

### Functions

#### mintStamp

Mints a Jingle Stamp.

#### randomNumberGenerator

Generates a random number ranging between one and six. This number will be called into the mintStamp function to select the stamp type.

## getStampType
Reports the stamp type of a specific token ID.

## getStampImage
Reports the stamp image of a specific token ID.\

##Frontend

Frontend Link: [](frontend/)

Click [here](frontend/index.html) to launch the Gift Basket NFT application.
