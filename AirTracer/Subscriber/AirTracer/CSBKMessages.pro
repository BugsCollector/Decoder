<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Data Control Burst Messages">
	<ATHeader>
		<PrimaryKeyField Name="Data Control Burst Messages" Size="1">0x0005</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="CSBK: Acknowledge Response Unit" Size="24" SecondaryKeyField="1">
		<Comment>This is the generic response supplied by a unit to acknowledge an action when there is no other expected response.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates the Acknowledge Response. This is set to %100000</Comment>
			<Value Description="ACK_RSP_U">0x0020<Comment>This is the generic response supplied by a unit to acknowledge an action when there is no other expected response.</Comment></Value>
		</Field>
		<Field Name="Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Type" Pos="2" Size="6" BitFlag="true" BitPos="0">
			<Comment>The 6-bit Service Type field indicates the service which is being identified. This is set equal to the appropriate "Opcode value" for the identified service.</Comment>
			<Data/>
		</Field>
		<Field Name="Fixed Value" Pos="2" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Fixed Value">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="10" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unsued" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Header">0x0000<Comment></Comment></Value>
			<Value Description="Voice LC Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="13" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="14" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="CSBK: Call Alert Request" Size="24" SecondaryKeyField="1">
		<Comment>This transaction is used to command a radio to execute a Call Alert request operation.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates the Call Alert Request. This is set to %011111</Comment>
			<Value Description="CALL_ALRT_REQ">0x001F<Comment>This transaction is used to command a radio to execute a Call Alert request operation.</Comment></Value>
		</Field>
		<Field Name="Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="2" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="10" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Header">0x0000<Comment></Comment></Value>
			<Value Description="Voice LC Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="13" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="14" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="CSBK: Emergency Alarm Request" Size="24" SecondaryKeyField="1">
		<Comment>This is a special status indication typically reserved for the "life threatening" situation.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bits 5-0) indicates this is the Emergency Alarm from an identified subscriber unit. This is set to the value of %100111</Comment>
			<Value Description="EMRG_ALRM_REQ">0x0027<Comment></Comment></Value>
		</Field>
		<Field Name="Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Alarm Sequence Number" Pos="2" Size="4" BitFlag="true" BitPos="0">
			<Comment>The Emergency Alarm Sequence Number field is a 4-bit value ranges from 0 to 15. This field shall only increment when an emergency is first initiated. Multiple attempts of the same emergency alarm message shall have the same Emergency Alarm Sequence Number. Default value shall be 0.</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved1" Pos="2" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Group Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit group identifier which uniquely defines a group within a System.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="10" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Hearder">0x0000<Comment></Comment></Value>
			<Value Description="Voice LC Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="13" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="14" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="CSBK: Radio Unit Remote Monitor Command" Size="24" SecondaryKeyField="1">
		<Comment>This transaction is used to command a radio to execute a Radio Unit Remote Monitor operation.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates this is the radio unit remote monitor command. This is set to %011101</Comment>
			<Value Description="RAD_MON_CMD">0x001D<Comment></Comment></Value>
		</Field>
		<Field Name="Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved1" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="TX Multiplier" Pos="3" Size="2" BitFlag="true" BitPos="0">
			<Comment>The TX Multiplier is a 2-bit value ranging from 0 to 3. It multiplies a stored value programmed in the target radio to represent the requested time to key the transmitter during the monitor function. The zero value does not cause the radio to key.</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="3" Size="6" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="10" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Header">0x0000<Comment></Comment></Value>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="13" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="14" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="CSBK: Extended Function Command" Size="20" SecondaryKeyField="1">
		<Comment>This is the transaction addressed to an SU for an extended function.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Extended Function command, denoted as %100100</Comment>
			<Value Description="EXT_FNCT_CMD">0x0024<Comment></Comment></Value>
		</Field>
		<Field Name="Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Extended Function" Pos="2" Size="5" BitFlag="false">
			<Comment>The Extended Function is a collection of related functions and operations. The Extended Function field is composed of the following subfields:Class,Operand,Arguments.Class will determine the type of extended function to be considered.Operand will determine the actual function being addressed based upon the Class designation.Arguments will supply additional processing information. This may not be required for all extended functions, and will be set to "null" (0) if not required.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="10" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Header">0x0000<Comment></Comment></Value>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="13" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Parity Check" Pos="14" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Fail">0x0000<Comment></Comment></Value>
			<Value Description="Pass">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="CSBK: Extended Function Response" Size="20" SecondaryKeyField="1">
		<Comment>This transaction is the response to an Extended Function command.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Extended Function request, denoted as: %100100</Comment>
			<Value Description="EXT_FNCT_RSP">0x0024<Comment></Comment></Value>
		</Field>
		<Field Name="Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="non-protected mode">0x0000<Comment></Comment></Value>
			<Value Description="protected mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Extended Function" Pos="2" Size="5" BitFlag="false">
			<Comment>The Extended Function is a collection of related functions and operations. The Extended Function field is composed of the following subfields:Class,Operand and Arguments. Class will determine the type of extended function to be considered.Operand will determine the actual function being addressed based upon the Class designation.Arguments will supply additional processing information. This may not be required for all extended functions, and will be set to "null" (0) if not required.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="10" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Data Type " Pos="12" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Header">0x0000<Comment></Comment></Value>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="12" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="13" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="14" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="CSBK: BS Downlink Activation" Size="24" SecondaryKeyField="1">
		<Comment>This is the transaction from a SU to BS for downlink activation.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the BS Downlink Activation command, denoted as: %111000</Comment>
			<Value Description="BS_DWN_ACT">0x0038<Comment></Comment></Value>
		</Field>
		<Field Name="Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="2" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="BS Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit base station identifier which uniquely defines a base station within a System.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="10" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Header">0x0000<Comment></Comment></Value>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="13" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="14" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="CSBK: Negative Acknowledgement Response" Size="24" SecondaryKeyField="1">
		<Comment>This is the generic response supplied by a unit for negative acknowledgement when the requested service is not supported by the target.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Negative Acknowledgement Response command, denoted as: %100000.</Comment>
			<Value Description="NACK_RSP_U">0x0020<Comment></Comment></Value>
		</Field>
		<Field Name="Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Type" Pos="2" Size="6" BitFlag="true" BitPos="0">
			<Comment>The 6-bit Service Type field indicates the service which is being identified. This is set equal to the appropriate "Opcode value" for the identified service</Comment>
			<Data/>
		</Field>
		<Field Name="Source Type" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>The Source Type information element has a length of 1 bit.	                                                                                     Source Type = 0 ( BS Sourced )                Source Type = 1 ( MS Sourced )</Comment>
			<Value Description="BS Sourced">0x0000<Comment></Comment></Value>
			<Value Description="MS Sourced">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Additional Information Valid Flag" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment>The AIV flag is used to indicate when the Additional Information field is to be considered valid. This flag is set to 1 if the Additional Information field is valid. Otherwise the information in the Additional Information field is to be ignored.

Note: Additional Information Valid Flag field shall always be used for the 24 bit source address. Thus the AIV flag shall always be set to 1.</Comment>
			<Value Description="Invalid">0x0000<Comment></Comment></Value>
			<Value Description="Valid">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reason Code" Pos="3" Size="1" BitFlag="false">
			<Comment>The reason code information element has a length of 8 bits. Reason Code = 00100001 --> Ms does not suppport this service or feature.</Comment>
			<Value Description="Service or Feature not Supported">0x0021<Comment></Comment></Value>
		</Field>
		<Field Name="Additional Information" Pos="4" Size="3" BitFlag="false">
			<Comment>it shall contain the 24-bit Source Address</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="10" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Header">0x0000<Comment></Comment></Value>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="13" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="14" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="CSBK: Preamble" Size="24" SecondaryKeyField="1">
		<Comment>This preamble CSBK is normally sent before the actual CSBK to improve system reliability for features like scan or battery saver.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Preamble CSBK command, denoted as: %111101.</Comment>
			<Value Description="PREAMBLE_CSBK">0x003D<Comment></Comment></Value>
		</Field>
		<Field Name="Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Blocks to Follow" Pos="3" Size="1" BitFlag="false">
			<Comment>Number of Preamble CSBK blocks to follow inclusive of this block.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="10" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Header">0x0000<Comment></Comment></Value>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="13" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="14" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="LCP Automatic Roaming Beacon CSBK" Size="24" SecondaryKeyField="1,4">
		<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Automatic Roaming Beacon command, denoted as: %111011.</Comment>
			<Value Description="LCP_AR_BEACON_CSBK">0x003B<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="My Rest Channel ID" Pos="2" Size="5" BitFlag="true" BitPos="0">
			<Comment>Indicates the current active rest channel of the LCP system at my site</Comment>
			<Data/>
		</Field>
		<Field Name="Slot Number" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment>indicates the TDMA timeslot</Comment>
			<Value Description="Slot 1">0x0000<Comment></Comment></Value>
			<Value Description="Slot 2">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="First/Last" Pos="2" Size="2" BitFlag="true" BitPos="6">
			<Comment>The Automatic Roaming beacon in R2.1 LCP release is only one burst length, thus FL is set to 0x11.</Comment>
			<Value Description="Cont">0x0000<Comment></Comment></Value>
			<Value Description="Last">0x0001<Comment></Comment></Value>
			<Value Description="First and Cont">0x0002<Comment></Comment></Value>
			<Value Description="Single Burst">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Number of sites listed" Pos="3" Size="3" BitFlag="true" BitPos="0">
			<Comment>Indicates the total sites of the LCP system listed</Comment>
			<Data/>
		</Field>
		<Field Name="My Site Id" Pos="3" Size="4" BitFlag="true" BitPos="3">
			<Comment>Indicates my site ID</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved1" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Rest Channel BR ID1" Pos="4" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="1st Site ID" Pos="4" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Rest Channel BR ID2" Pos="5" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="2nd Site ID" Pos="5" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Rest Channel BR ID3" Pos="6" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="3rd Site ID" Pos="6" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Rest Channel BR ID4" Pos="7" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="4th Site ID" Pos="7" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Rest Channel BR ID5" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="5th Site ID" Pos="8" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="9" Size="1" BitFlag="false">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="10" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="18" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="18" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="19" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="CSBK: Unit to unit Service Request" Size="24" SecondaryKeyField="1">
		<Comment>This is the service request for a voice call between two specified SUs.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate unit-to-unit service request, denoted as: %000100.</Comment>
			<Value Description="UU_V_REQ">0x0004<Comment></Comment></Value>
		</Field>
		<Field Name="Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More Block">0x0000<Comment></Comment></Value>
			<Value Description="Last Block">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="2" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Open Voice Call Mode" Pos="2" Size="1" BitFlag="true" BitPos="2">
			<Comment>Open Voice Call Mode</Comment>
			<Value Description="Non-OVCM Call">0x0000<Comment></Comment></Value>
			<Value Description="OVCM Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment>Reserved for Future Used</Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved1" Pos="2" Size="2" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Clear">0x0000<Comment></Comment></Value>
			<Value Description="Secure">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Non-emergency Service">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved2" Pos="4" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="5" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="6" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="7" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="8" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="9" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Header">0x0000<Comment></Comment></Value>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="9" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="10" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="CSBK: Unit-to-unit Service Answer Response" Size="24" SecondaryKeyField="1">
		<Comment>This is a transaction from the target unit responding to the private call to unit answer request. It is used, to express the target USER decision for this pending voice call.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate unit-to-unit service request, denoted as: %000101.</Comment>
			<Value Description="UU_ANS_RSP">0x0005<Comment></Comment></Value>
		</Field>
		<Field Name="Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="3" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Open Voice Call Mode" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment>Open Voice Call Mode</Comment>
			<Value Description="Non-OVCM Call">0x0000<Comment></Comment></Value>
			<Value Description="OVCM Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="3" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="3" Size="2" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="3" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Clear">0x0000<Comment></Comment></Value>
			<Value Description="Secure">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Non-emergency Service">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Answer Response" Pos="4" Size="1" BitFlag="false">
			<Comment>The Answer Response field will contain the response of the target unit USER with regard to the pending call.</Comment>
			<Value Description="Proceed">0x0020<Comment></Comment></Value>
			<Value Description="Deny">0x0021<Comment></Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="5" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="6" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="7" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="8" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="9" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Header">0x0000<Comment></Comment></Value>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="9" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="10" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
