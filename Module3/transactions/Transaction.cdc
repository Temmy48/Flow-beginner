// Import TransportStruct Contract
import TransportStruct from 0x05

// Transaction to add a Transport
transaction(id: UInt64, model: String, year: UInt64) {
    
    // Prepare phase: No account modifications needed
    prepare(acct: AuthAccount) {}

    // Execution phase: Add a Transport using the imported contract
    execute {
      TransportStruct.addTransport(id: id, model: model, year: year)
      log("Transport Added Successfully")
    }
}

