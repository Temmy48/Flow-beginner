import NonFungibleToken from 0x05
import CryptoPoops from 0x05

// Primary script function to obtain NFT IDs from a public collection associated with an account
pub fun main(accountAddress: Address): [UInt64] {
    
    // Acquire a reference to the publicly accessible NFT collection associated with the account
    let collectionRef = getAccount(accountAddress)
        .getCapability(/public/CryptoPoopsCollection)
        .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
        ?? panic("Collection not found")

    // Extract NFT IDs from the public collection by invoking the getIDs function
    return collectionRef.getIDs()
}
