<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="InboundMessage">
	<ATHeader>
		<PrimaryKeyField Name="RepeaterMessage" Size="1">0x00f0</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Voice Burst" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Burst Type">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="BOGUS FRAME" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="BOGUS FRAME Type">0x0024<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="CSBK Wake Up" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the BS Downlink Activation command, denoted as: %111000</Comment>
			<Value Description="BS_DWN_ACT">0x0038<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="BS Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit base station identifier which uniquely defines a base station within a System.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="CSBK Window Request" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="BurstType" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="BurstStatus" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Window Request CSBK command, denoted as: %101000.</Comment>
			<Value Description="Window Request">0x0028<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="SUID" Pos="12" Size="3" BitFlag="false">
			<Comment>Subscriber ID of radio making window request.</Comment>
			<Data/>
		</Field>
		<Field Name="Request Period" Pos="15" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates if the request is for one time udpate (0x00), update rate (0x01-0x05) or de-allocation(0x0F).</Comment>
			<Value Description="De-allocation">0x000F<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved_1" Pos="15" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved_2" Pos="16" Size="4" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Acknowledge Response Unit" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates the Acknowledge Response. This is set to %100000</Comment>
			<Value Description="ACK_RSP_U">0x0020<Comment>This is the generic response supplied by a unit to acknowledge an action when there is no other expected response.</Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Type" Pos="12" Size="6" BitFlag="true" BitPos="0">
			<Comment>The 6-bit Service Type field indicates the service which is being identified. This is set equal to the appropriate "Opcode value" for the identified service.</Comment>
			<Value Description="ACK_RSP_U">0x0020<Comment></Comment></Value>
		</Field>
		<Field Name="Fixed value" Pos="12" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Fixed Value">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="13" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Call Alert Request" Size="56" SecondaryKeyField="3,8">
		<Comment>This transaction is used to command a radio to execute a Call Alert request operation.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates the Call Alert Request. This is set to %011111</Comment>
			<Value Description="CALL_ALRT_REQ">0x001F<Comment>This transaction is used to command a radio to execute a Call Alert request operation.</Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved1" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="11" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="11" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Emergency Alarm Request" Size="44" SecondaryKeyField="3,8">
		<Comment>This is a special status indication typically reserved for the "life threatening" situation.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bits 5-0) indicates this is the Emergency Alarm from an identified subscriber unit. This is set to the value of %100111</Comment>
			<Value Description="EMRG_ALRM_REQ">0x0027<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block " Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="EASN - Emeregency Alarm Sequence Number" Pos="12" Size="4" BitFlag="true" BitPos="0">
			<Comment>The Emergency Alarm Sequence Number field is a 4-bit value ranges from 0 to 15. This field shall only increment when an emergency is first initiated. Multiple attempts of the same emergency alarm message shall have the same Emergency Alarm Sequence Number. Default value shall be 0.</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved1" Pos="12" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="13" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Group Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit group identifier which uniquely defines a group within a System.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Radio Unit Remote Monitor Command" Size="44" SecondaryKeyField="3,8">
		<Comment>This transaction is used to command a radio to execute a Radio Unit Remote Monitor operation.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates this is the radio unit remote monitor command. This is set to %011101</Comment>
			<Value Description="RAD_MON_CMD">0x001D<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved1" Pos="12" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="TX Multiplier" Pos="13" Size="2" BitFlag="true" BitPos="0">
			<Comment>The TX Multiplier is a 2-bit value ranging from 0 to 3. It multiplies a stored value programmed in the target radio to represent the requested time to key the transmitter during the monitor function. The zero value does not cause the radio to key.</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="13" Size="6" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Extended Function Command" Size="44" SecondaryKeyField="3,8">
		<Comment>This is the transaction addressed to an SU for an extended function.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Extended Function command, denoted as %100100</Comment>
			<Value Description="EXT_FNCT_CMD">0x0024<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Class" Pos="12" Size="1" BitFlag="false">
			<Comment>Class will determine the type of extended function to be considered.</Comment>
			<Data/>
		</Field>
		<Field Name="Operand" Pos="13" Size="1" BitFlag="false">
			<Comment>Operand will determine the actual function being addressed based upon the Class designation.</Comment>
			<Value Description="Radio Check">0x0000<Comment></Comment></Value>
			<Value Description="Radio Uninhibit">0x007E<Comment></Comment></Value>
			<Value Description="Radio Inhibit">0x007F<Comment></Comment></Value>
		</Field>
		<Field Name="Source Address" Pos="14" Size="3" BitFlag="false">
			<Comment>Arguments will supply additional processing information. This may not be required for all extended functions, and will be set to "null" (0) if not required.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Negative Acknowledgement Response" Size="44" SecondaryKeyField="3,8">
		<Comment>This is the generic response supplied by a unit for negative acknowledgement when the requested service is not supported by the target.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Negative Acknowledgement Response command, denoted as: %100110.</Comment>
			<Value Description="NACK_RSP_U">0x0026<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Type" Pos="12" Size="6" BitFlag="true" BitPos="0">
			<Comment>The 6-bit Service Type field indicates the service which is being identified. This is set equal to the appropriate "Opcode value" for the identified service</Comment>
			<Value Description="NACK_RSP_U">0x0026<Comment></Comment></Value>
		</Field>
		<Field Name="Source Type" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment>The Source Type information element has a length of 1 bit.	                                                                                     Source Type = 0 ( BS Sourced )                Source Type = 1 ( MS Sourced )</Comment>
			<Value Description="BS Sourced">0x0000<Comment></Comment></Value>
			<Value Description="MS Sourced">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="AIV - Additional Information Valid Flag" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment>The AIV flag is used to indicate when the Additional Information field is to be considered valid. This flag is set to 1 if the Additional Information field is valid. Otherwise the information in the Additional Information field is to be ignored. Note: Additional Information Valid Flag field shall always be used for the 24 bit source address. Thus the AIV flag shall always be set to 1.</Comment>
		</Field>
		<Field Name="Reason Code" Pos="13" Size="1" BitFlag="false">
			<Comment>The reason code information element has a length of 8 bits. Reason Code = 00100001 --> Ms does not suppport this service or feature.</Comment>
			<Value Description="MS does not support this service or feature.">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Additional Information (Source Address)" Pos="14" Size="3" BitFlag="false">
			<Comment>it shall contain the 24-bit Source Address</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Preamble CSBK" Size="44" SecondaryKeyField="3,8">
		<Comment>This preamble CSBK is normally sent before the actual CSBK to improve system reliability for features like scan or battery saver.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Preamble CSBK command, denoted as: %111101.</Comment>
			<Value Description="PREAMBLE_CSBK">0x003D<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturers Feature ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Group or Individual Call" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual Call">0x0000<Comment></Comment></Value>
			<Value Description="Group Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data or CSBK" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Blocks to Follow" Pos="13" Size="1" BitFlag="false">
			<Comment>Number of Preamble CSBK blocks to follow inclusive of this block.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Backward Channel Request" Size="44" SecondaryKeyField="3,8">
		<Comment>This preamble CSBK is normally sent before the actual CSBK to improve system reliability for features like scan or battery saver.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Preamble CSBK command, denoted as: %111101.</Comment>
			<Value Description="Backward Channel Request">0x001E<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturers Feature ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Interrupt Type" Pos="12" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Interrupt">0x0001<Comment></Comment></Value>
			<Value Description="Remote Voice Dekey">0x0002<Comment></Comment></Value>
			<Value Description="Emergency Voice Interrupt">0x0003<Comment></Comment></Value>
			<Value Description="Data Over Voice Interrupt">0x0004<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved1" Pos="12" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="13" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Unit to unit Service Request" Size="44" SecondaryKeyField="3,8">
		<Comment>This is the service request for a voice call between two specified SUs.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate unit-to-unit service request, denoted as: %000100.</Comment>
			<Value Description="UU_V_REQ">0x0004<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More Block">0x0000<Comment></Comment></Value>
			<Value Description="Last Block">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="12" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1 (Low)">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2 (Medium)">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3 (High)">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="OVCM - Open Voice Call Mode" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Open Voice Call Mode</Comment>
			<Value Description="Non-OVCM Call">0x0000<Comment></Comment></Value>
			<Value Description="OVCM Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment>Reserved for Future Used</Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved1" Pos="12" Size="2" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-secure">0x0000<Comment></Comment></Value>
			<Value Description="Secure">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Non-emergency Service">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved2" Pos="13" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Unit to unit Service Response" Size="44" SecondaryKeyField="3,8">
		<Comment>This is a transaction from the target unit responding to the private call to unit answer request. It is used, to express the target USER decision for this pending voice call.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate unit-to-unit service request, denoted as: %000101.</Comment>
			<Value Description="UU_ANS_RSP">0x0005<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="12" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1 (Low)">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2 (Medium)">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3 (High)">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="OVCM - Open Voice Call Mode" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Open Voice Call Mode</Comment>
			<Value Description="Non-OVCM Call">0x0000<Comment></Comment></Value>
			<Value Description="OVCM Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-secure">0x0000<Comment></Comment></Value>
			<Value Description="Secure">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Non-emergency Service">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Answer Response" Pos="13" Size="1" BitFlag="false">
			<Comment>The Answer Response field will contain the response of the target unit USER with regard to the pending call.</Comment>
			<Value Description="Proceed">0x0020<Comment></Comment></Value>
			<Value Description="Deny">0x0021<Comment></Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="ESYNC Header" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="ESYNC">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Voice Terminator" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="MDC Header" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="MDC Header">0x0004<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="MBC Cont" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="MBC Cont">0x0005<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Data Header" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Unconfirm Data Cont" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Unconfirm Data Cont">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Confirm Data" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Confirm Data">0x0008<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Carrier Detect" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Carrier Detect">0x0011<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Carrier Undetect" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Carrier Undetect">0x0012<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="SYNC Undetect" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="SYNC Undetect">0x0013<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Reverse Channel" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Reverse Channel">0x0014<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="RSSI" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="RSSI">0x0021<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="IDLE" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="IDLE">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="EMB LC" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="EMB LC">0x0015<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Short LC: NULL Message" Size="45" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="LC In CACH">0x0016<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Cypher Burst Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Short LCO" Pos="10" Size="4" BitFlag="true" BitPos="0">
			<Comment>(4 bits) identifies the message type</Comment>
			<Value Description="NULL Message">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Blank" Pos="10" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Individual Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="0">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="1">
			<Comment>Indicates whether the advertised activity on timeslot 2 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment>Indicates whether timeslot 2 is presently supporting a call or transmission.  If timeslot 2 is not supporting an active call or transmission, then E2, D2, I2, and the Hashed ID for TDMA Channel 2 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved2" Pos="12" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Individual Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="4">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="5">
			<Comment>Indicates whether the advertised activity on timeslot 1 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="6">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="7">
			<Comment>Indicates whether timeslot 1 is presently supporting a call or transmission.  If timeslot 1 is not supporting an active call or transmission, then E1, D1, I1, and the Hashed ID for TDMA Channel 1 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved3" Pos="11" Size="4" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Data" Pos="13" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Short LC: Activity Update" Size="45" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="LC In CACH">0x0016<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Cypher Burst Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Short LCO" Pos="10" Size="4" BitFlag="true" BitPos="0">
			<Comment>(4 bits) identifies the message type</Comment>
			<Value Description="Activity Update">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Blank" Pos="10" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Individual Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="0">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="1">
			<Comment>Indicates whether the advertised activity on timeslot 2 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment>Indicates whether timeslot 2 is presently supporting a call or transmission.  If timeslot 2 is not supporting an active call or transmission, then E2, D2, I2, and the Hashed ID for TDMA Channel 2 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved4" Pos="12" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Individual Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="4">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="5">
			<Comment>Indicates whether the advertised activity on timeslot 1 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="6">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="7">
			<Comment>Indicates whether timeslot 1 is presently supporting a call or transmission.  If timeslot 1 is not supporting an active call or transmission, then E1, D1, I1, and the Hashed ID for TDMA Channel 1 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved5" Pos="11" Size="4" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Data" Pos="13" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Short LC: Capacity Plus Generic CACH" Size="46" SecondaryKeyField="3,11">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="LC In CACH">0x0016<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Cypher Burst Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Short LCO" Pos="13" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="Capacity Plus">0x000F<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved6" Pos="13" Size="4" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Blank" Pos="10" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="ATA_Reserved7" Pos="10" Size="4" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Individual Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="0">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="1">
			<Comment>Indicates whether the advertised activity on timeslot 2 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment>Indicates whether timeslot 2 is presently supporting a call or transmission.  If timeslot 2 is not supporting an active call or transmission, then E2, D2, I2, and the Hashed ID for TDMA Channel 2 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved8" Pos="12" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Individual Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="4">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="5">
			<Comment>Indicates whether the advertised activity on timeslot 1 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="6">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="7">
			<Comment>Indicates whether timeslot 1 is presently supporting a call or transmission.  If timeslot 1 is not supporting an active call or transmission, then E1, D1, I1, and the Hashed ID for TDMA Channel 1 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved9" Pos="11" Size="4" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Data" Pos="13" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Reverse Channel Encode" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Reverse Channel Encode">0x0017<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Options" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Option">0x00F0<Comment></Comment></Value>
		</Field>
		<Field Name="Number of Options" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Window Announcement" Size="48" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Window Announcement">0x0029<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Field4" Pos="44" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Field5" Pos="45" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="System Channel Status CSBK" Size="44" SecondaryKeyField="4,9">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
		</Field>
		<Field Name="ATA_Reserved1" Pos="0" Size="7" BitFlag="true" BitPos="1">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0022<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="System Channel Status CSBK">0x003E<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Rest Channel ID" Pos="12" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
		</Field>
		<Field Name="Slot Number" Pos="12" Size="1" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Value Description="Slot 1">0x0000<Comment></Comment></Value>
			<Value Description="Slot 2">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="First/Last" Pos="12" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Cont">0x0000<Comment></Comment></Value>
			<Value Description="Last">0x0001<Comment></Comment></Value>
			<Value Description="First and Cont">0x0002<Comment></Comment></Value>
			<Value Description="Single Burst">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Ch8 status" Pos="13" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch7 status" Pos="13" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch6 status" Pos="13" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch5 status" Pos="13" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch4 status" Pos="13" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch3 status" Pos="13" Size="1" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch2 status" Pos="13" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch1 status" Pos="13" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="First active TGID" Pos="14" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Second active TGID" Pos="15" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Third active TGID" Pos="16" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Fourth active TGID" Pos="17" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Fifth active TGID" Pos="18" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Sixth active TGID" Pos="19" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Capacity Plus Voice Header with LC" Size="44" SecondaryKeyField="4,7">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
		</Field>
		<Field Name="ATA_Reserved1" Pos="0" Size="7" BitFlag="true" BitPos="1">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="DataLengthAndOther" Pos="4" Size="6" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="FLCO - Full Link Control Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="CP_Grp_V_Ch_Usr">0x0004<Comment></Comment></Value>
			<Value Description="CP_UU_V_Ch_Usr">0x0007<Comment></Comment></Value>
			<Value Description="Inbound_VH">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="R - Reserved" Pos="10" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Call Mode" Pos="12" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Group/Target Address" Pos="13" Size="3" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Rest Channel" Pos="16" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Source Address" Pos="17" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Blank" Pos="19" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Unused" Pos="20" Size="23" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="CSBK Window Grant" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Window Grant only CSBK command, denoted as: %101000.</Comment>
			<Value Description="Window Grant">0x002A<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="SUID" Pos="12" Size="3" BitFlag="false">
			<Comment>Subscriber ID of radio making window grant</Comment>
			<Data/>
		</Field>
		<Field Name="Granted Window Number" Pos="15" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Granted Data Frame" Pos="16" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved_1" Pos="16" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved_2" Pos="17" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Window Grant" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO-CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Window Grant">0x002A<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SUID" Pos="12" Size="3" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Granted Window Numbe" Pos="15" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Granted Data Frame" Pos="16" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
		</Field>
		<Field Name="Reserved_1" Pos="16" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
		</Field>
		<Field Name="Reserved_2" Pos="17" Size="3" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
	</PDU>
</Protocol>
