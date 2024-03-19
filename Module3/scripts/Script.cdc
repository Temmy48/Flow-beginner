// Import TransportStruct Contract
import TransportStruct from 0x05

// Main function to retrieve transport information by ID
pub fun main(id: UInt64): TransportStruct.Transport? {
    // Use the imported contract's function to get transport details
    return TransportStruct.getTransport(id: id)!
}
