<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="CSBK Ack message">
	<ATHeader>
		<PrimaryKeyField Name="CSBK Ack message" Size="1">0x000E</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Extended Function Response" Size="20" SecondaryKeyField="1">
		<Comment>This is the transaction addressed to an SU for an extended function.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Extended Function request, denoted as: %100100</Comment>
			<Value Description="EXT_FNCT_RSP">0x0024<Comment></Comment></Value>
		</Field>
		<Field Name="P" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Data/>
		</Field>
		<Field Name="Class" Pos="2" Size="1" BitFlag="false">
			<Comment>Class will determine the type of extended function to be considered.</Comment>
			<Data/>
		</Field>
		<Field Name="Operand" Pos="3" Size="1" BitFlag="false">
			<Comment>Operand will determine the actual function being addressed based upon the Class designation.</Comment>
			<Value Description="Radio Check ACK">0x0080<Comment></Comment></Value>
			<Value Description="Radio Uninhibit ACK">0x00FE<Comment></Comment></Value>
			<Value Description="Radio Inhibit ACK">0x00FF<Comment></Comment></Value>
		</Field>
		<Field Name="Arguments - Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>Arguments will supply additional processing information. This may not be required for all extended functions, and will be set to "null" (0) if not required.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="5" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="6" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type " Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0003<Comment></Comment></Value>
			<Value Description="CSBK">0x0004<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
