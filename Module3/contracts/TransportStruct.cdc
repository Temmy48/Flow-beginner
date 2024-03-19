pub contract TransportStruct {

    // Define the structure for a Transport
    pub struct Transport {
        pub let transportId: UInt64
        pub let model: String
        pub let productionYear: UInt64

        // Constructor for creating a Transport
        init(id: UInt64, model: String, year: UInt64) {
            self.transportId = id
            self.model = model
            self.productionYear = year
        }
    }

    // Store transports using their Id as keys in a dictionary
    pub var transports: {UInt64: Transport}

    // Initialize the contract with an empty transports dictionary
    init() {
        self.transports = {}
    }

    // Add a Transport to the dictionary using its Id as the key
    pub fun addTransport(id: UInt64, model: String, year: UInt64) {
        let transport = Transport(id: id, model: model, year: year)
        self.transports[id] = transport
    }

    // Retrieve a Transport by its Id from the dictionary
    pub fun getTransport(id: UInt64): Transport? {
        return self.transports[id]
    }
}
