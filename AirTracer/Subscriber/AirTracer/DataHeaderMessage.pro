<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Data Control Burst Messages">
	<ATHeader>
		<PrimaryKeyField Name="Data Control Burst Messages" Size="1">0x0007</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Unconfirmed Data Header" Size="20" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Data Format Packet" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment>Is used for data packet identification </Comment>
			<Value Description="Unconfirmed Delivery">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment>Reserved for future used</Comment>
			<Data/>
		</Field>
		<Field Name="Response Requested" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>To indicate whether the confirmation of this packet is desired or not. </Comment>
			<Value Description="No Response">0x0000<Comment></Comment></Value>
			<Value Description="Response Required">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Group/Individual Destination Address" Pos="0" Size="1" BitFlag="true" BitPos="3">
			<Comment>Group or Individual destination address</Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Group">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad Octet Count" Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of pad octets which have been appended to the user data octets to form an integer number of blocks</Comment>
			<Data/>
		</Field>
		<Field Name="Service Access Point Identifer" Pos="1" Size="4" BitFlag="true" BitPos="1">
			<Comment>Identifies the Service Access Point to which the data is directed.</Comment>
			<Value Description="IP based Packet data">0x0004<Comment></Comment></Value>
			<Value Description="Address Resolution Protocol (ARP)">0x0005<Comment></Comment></Value>
			<Value Description="Proprietary Packet Data">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Destination Logical Link ID" Pos="2" Size="3" BitFlag="false">
			<Comment>Identifies the destination address to which the packet is directed </Comment>
			<Data/>
		</Field>
		<Field Name="Source Logical Link ID" Pos="3" Size="3" BitFlag="false">
			<Comment>Identifiesthe source address which sent the packet </Comment>
			<Data/>
		</Field>
		<Field Name="Blocks to Follow" Pos="4" Size="7" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of blocks in the packet not including the header block </Comment>
			<Data/>
		</Field>
		<Field Name="Full Message Flag" Pos="4" Size="1" BitFlag="true" BitPos="1">
			<Comment>Used in the receiver to signify that the Pad Octet Count information element indicates the amount of data being transported in the complete packet</Comment>
		</Field>
		<Field Name="Fragment Sequence Number" Pos="5" Size="4" BitFlag="true" BitPos="0">
			<Comment>To consecutively number message fragments that together make up a longer data message </Comment>
			<Data/>
		</Field>
		<Field Name="Send Sequence Number" Pos="5" Size="3" BitFlag="true" BitPos="1">
			<Comment>Specifies the send sequence number of the packet </Comment>
			<Data/>
		</Field>
		<Field Name="Re-Syncronise Flag" Pos="5" Size="1" BitFlag="true" BitPos="2">
			<Comment>To re-synchronise the physical sub-layer sequence numbers </Comment>
			<Value Description="The receiver should not sync its sequence numbers with those in the header">0x0000<Comment></Comment></Value>
			<Value Description="The receiver should sync its sequence numbers with those in the header">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Header CRC" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Data Second Header" Size="20" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Data Format Packet" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Data Second Header">0x000F<Comment></Comment></Value>
		</Field>
		<Field Name="Service Access Point Identifier" Pos="0" Size="4" BitFlag="true" BitPos="1">
			<Comment>Identifies the Service Access Point to which the data is directed.</Comment>
			<Value Description="IP based Packet data">0x0004<Comment></Comment></Value>
			<Value Description="Address Resolution Protocol (ARP)">0x0005<Comment></Comment></Value>
			<Value Description="Proprietary Packet Data">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved01" Pos="2" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Octet 2 High Nibble" Pos="2" Size="4" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved02" Pos="3" Size="4" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Key ID " Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Algorithm ID" Pos="5" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Header CRC" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Confirmed Data Header" Size="20" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Data Packet Format" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment>Is used for data packet identification </Comment>
			<Value Description="Confirmed Delivery">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Response Requested" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>To indicate whether the confirmation of this packet is desired or not. </Comment>
			<Value Description="No Response">0x0000<Comment></Comment></Value>
			<Value Description="Response Required">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Group/Individual Destination Address" Pos="0" Size="1" BitFlag="true" BitPos="3">
			<Comment>Group or Individual destination address</Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Group">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad Octet Count " Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of pad octets which have been appended to the user data octets to form an integer number of blocks</Comment>
			<Data/>
		</Field>
		<Field Name="Service Access Point Identifier" Pos="1" Size="4" BitFlag="true" BitPos="1">
			<Comment>Identifies the Service Access Point to which the data is directed.</Comment>
			<Value Description="IP based Packet data">0x0004<Comment></Comment></Value>
			<Value Description="Address Resolution Protocol (ARP)">0x0005<Comment></Comment></Value>
			<Value Description="Proprietary Packet Data">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Destination Logical Link ID" Pos="2" Size="3" BitFlag="false">
			<Comment>Identifies the destination address to which the packet is directed </Comment>
			<Data/>
		</Field>
		<Field Name="Source Logical Link ID" Pos="3" Size="3" BitFlag="false">
			<Comment>Identifiesthe source address which sent the packet </Comment>
			<Data/>
		</Field>
		<Field Name="Blocks to Follow" Pos="4" Size="7" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of blocks in the packet not including the header block </Comment>
			<Data/>
		</Field>
		<Field Name="Full Message Flag" Pos="4" Size="1" BitFlag="true" BitPos="1">
			<Comment>Used in the receiver to signify that the Pad Octet Count information element indicates the amount of data being transported in the complete packet</Comment>
		</Field>
		<Field Name="Fragment Sequence Number" Pos="5" Size="4" BitFlag="true" BitPos="0">
			<Comment>To consecutively number message fragments that together make up a longer data message </Comment>
			<Data/>
		</Field>
		<Field Name="Send Sequence Number" Pos="5" Size="3" BitFlag="true" BitPos="1">
			<Comment>Specifies the send sequence number of the packet </Comment>
			<Data/>
		</Field>
		<Field Name="Re-Synchronise Flag" Pos="5" Size="1" BitFlag="true" BitPos="2">
			<Comment>To re-synchronise the physical sub-layer sequence numbers </Comment>
			<Value Description="The receiver should not sync its sequence numbers with those in the header">0x0000<Comment></Comment></Value>
			<Value Description="The receiver should sync its sequence numbers with those in the header">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Header CRC" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Response Data Header" Size="20" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Data Format Packet" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment>Is used for data packet identification </Comment>
			<Value Description="Response Header Block">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Response Required" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>To indicate whether the confirmation of this packet is desired or not. </Comment>
			<Value Description="No Response">0x0000<Comment></Comment></Value>
			<Value Description="Response Required">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Group/Individual" Pos="0" Size="1" BitFlag="true" BitPos="3">
			<Comment>Group or Individual destination address</Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Group">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad Octet Count" Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of pad octets which have been appended to the user data octets to form an integer number of blocks</Comment>
			<Data/>
		</Field>
		<Field Name="Service Access Point Identifier" Pos="1" Size="4" BitFlag="true" BitPos="4">
			<Comment>Identifies the Service Access Point to which the data is directed.</Comment>
			<Data/>
		</Field>
		<Field Name="Destination Logical Link ID" Pos="2" Size="3" BitFlag="false">
			<Comment>Identifies the destination address to which the packet is directed </Comment>
			<Data/>
		</Field>
		<Field Name="Source Logical Link ID" Pos="3" Size="3" BitFlag="false">
			<Comment>Identifiesthe source address which sent the packet </Comment>
			<Data/>
		</Field>
		<Field Name="Blocks to Follow" Pos="4" Size="7" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of blocks in the packet not including the header block </Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="4" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Status" Pos="5" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Class and Type" Pos="5" Size="5" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="All Blocks Successfully Received">0x0001<Comment></Comment></Value>
			<Value Description="Illegal Format">0x0008<Comment></Comment></Value>
			<Value Description="Packet Error Response">0x0009<Comment></Comment></Value>
			<Value Description="Memory Full">0x000A<Comment></Comment></Value>
			<Value Description="Out of Logical Sequence Response">0x000B<Comment></Comment></Value>
			<Value Description="Invalid SAP/Undelivered Packet">0x000C<Comment></Comment></Value>
			<Value Description="Out of Sequence Response">0x000D<Comment></Comment></Value>
			<Value Description="Invalid User, Disallowed by System">0x000E<Comment></Comment></Value>
			<Value Description="Selective Retry for Some Blocks">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Header CRC" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused3" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
