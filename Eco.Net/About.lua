--[[ 
	EcoNet Networking Systems
	=======================
	EcoNet is a modular networking system for Roblox games and other Lua projects. 
  It includes components for handling data transmission, checksum calculations, RCL/RCE compression, and more.
	
	
	Packages
	========
	EcoNet is split into several packages, each with a specific purpose.
	
	Buffer >>
		Manages temporary data storage for packets.
	()>>
		Buffer.Initialize() > Initializes the buffer.
		Buffer.BufferPacket(Packet) > Adds a packet to the buffer.
		Buffer.RetrievePacket() > Retrieves and removes a packet from the buffer.
		
	===============================================================
	
	CRC32 >>
		Computes CRC32 checksums for data integrity.
	()>>
		CRC32.Initialize() > Prepares the CRC32 calculation tables.
		CRC32.Calculate(Data) > Calculates the CRC32 checksum for the data.
		
	===============================================================
	
	Compressor >>
		Handles the compression and decompression of data.
	()>>
		Compressor.Initialize() > Initializes the compressor.
		Compressor.Compress(Data) > Compresses the data.
		Compressor.Decompress(Data) > Decompresses the data.
		
	===============================================================
	
	Packet >>
		Manages the creation and parsing of packets.
	()>>
		Packet.CreatePacket(Data) > Creates a packet from the given data.
		Packet.GenerateChecksum(Data) > Generate a checksum for the data.
		Packet.ShouldDrop(Buffer,Packet) > Determines if a packet should be dropped based on the buffer status.
		
	===============================================================
	
	Transmission >>
		Manages the sending and receiving of packets.
	()>>
		Transmission.Initialize() > Initializes the transmission system.
		Transmission.SendData(Data) > Sends data and handles acknowledgments.
		Transmission.ReceiveData() > Receives data from the buffer.
		Transmission.ReceiveACK(Identifier) > Receives an acknowledgment packet.
--]]
