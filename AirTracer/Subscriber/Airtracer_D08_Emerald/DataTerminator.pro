<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Data Control Burst Message">
	<ATHeader>
		<PrimaryKeyField Name="Data Control Burst Message" Size="1">0x000A</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Data Terminator" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="FLCO - Full Link Control Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>This indicates the Link Control Format opcode.This has values of 0 through 31 and is set appropriately for the different commands or information and shall be determined by the manufacturer since this is a non-standard format.</Comment>
			<Value Description="Hangtime for Data Response">0x0030<Comment></Comment></Value>
		</Field>
		<Field Name="R - Reserved" Pos="0" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="PF - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="2" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="3" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="NS - Send Sequence Number" Pos="4" Size="3" BitFlag="true" BitPos="0">
			<Comment>Specifies the send sequence number of the packet </Comment>
			<Data/>
		</Field>
		<Field Name="S - Re-Synchronise Flag" Pos="4" Size="1" BitFlag="true" BitPos="1">
			<Comment>To re-synchronise the physical sub-layer sequence numbers </Comment>
			<Value Description="The receiver should not sync its sequence numbers with those in the header">0x0000<Comment></Comment></Value>
			<Value Description="The receiver should sync its sequence numbers with those in the header">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="4" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="F - Full Message Flag" Pos="4" Size="1" BitFlag="true" BitPos="3">
			<Comment>Used in the receiver to signify that the Pad Octet Count information element indicates the amount of data being transported in the complete packet</Comment>
			<Value Description="Subsequent Tries">0x0000<Comment></Comment></Value>
			<Value Description="First Try for the Complete Packet">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="A - Response Requested" Pos="4" Size="1" BitFlag="true" BitPos="4">
			<Comment>To indicate whether the confirmation of this packet is desired or not. </Comment>
			<Value Description="No Response">0x0000<Comment></Comment></Value>
			<Value Description="Response Required">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="G/I - Group/Individual" Pos="4" Size="1" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Group">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="5" Size="9" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="6" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="6" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="7" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
