import CryptoPoops from 0x05

transaction() {
  prepare(signer: AuthAccount) {
    // Check if there is already a collection stored in the account.
    if signer.borrow<&CryptoPoops.Collection>(from: /storage/CryptoPoopsCollection) != nil {
      log("Collection is present.")
      return
    }

    // Create a new collection and store it in the account's storage.
    signer.save(<- CryptoPoops.createEmptyCollection(), to: /storage/CryptoPoopsCollection)

    // Make the collection publicly accessible.
    signer.link<&CryptoPoops.Collection>(/public/CryptoPoopsCollection, target: /storage/CryptoPoopsCollection)

    log("The creation of the collection was successful.")
  }
}
