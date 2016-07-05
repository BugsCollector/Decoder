<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Data Control Burst Messages">
	<ATHeader>
		<PrimaryKeyField Name="Data Control Burst Messages" Size="1">0x0005</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="CSBK: Acknowledge Response Unit" Size="24" SecondaryKeyField="1,4">
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
	<PDU Name="CSBK: Call Alert Request" Size="24" SecondaryKeyField="1,4">
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
			<Value Description="NACK_RSP_U">0x0026<Comment></Comment></Value>
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
			<Comment>Note: Additional Information Valid Flag field shall always be used for the 24 bit source address. Thus the AIV flag shall always be set to 1.</Comment>
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
	<PDU Name="C_RAND All Call" Size="24" SecondaryKeyField="1,12,16">
		<Comment>All Call Service</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment>
			<Value Description="CSBK Opcode">0x001F<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Proxy Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>Determines no of appended data UDTs  to contain destination address</Comment>
			<Value Description="Proxy">0x0000<Comment>only 1 appended data MBC needed to upload final destination address</Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="2" Size="2" BitFlag="true" BitPos="1">
			<Comment>Priority Level</Comment>
			<Data/>
		</Field>
		<Field Name="Open Voice Call Mode" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment>Open Voice Call Mode</Comment>
			<Data/>
		</Field>
		<Field Name="Broadcast" Pos="2" Size="1" BitFlag="true" BitPos="4">
			<Comment>Broadcast</Comment>
			<Value Description="Broadcast call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Supplementary Data" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment>Supplementary Data</Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>Privacy</Comment>
			<Data/>
		</Field>
		<Field Name="Emergency" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment>Emergency</Comment>
			<Value Description="Non Emergency Call">0x0000<Comment></Comment></Value>
			<Value Description="Emergency call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind " Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="All Call">0x0001<Comment>All call if B=1 and TGA=0xFFFEC8</Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="3" Size="1" BitFlag="true" BitPos="4">
			<Comment>Reserved</Comment>
			<Data/>
		</Field>
		<Field Name="Ambient Listening" Pos="3" Size="1" BitFlag="true" BitPos="5">
			<Comment>Ambient Listening</Comment>
			<Value Description="Ambient Listening">0x0001<Comment></Comment></Value>
			<Value Description="Non Ambient Listening">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Sup_D" Pos="3" Size="2" BitFlag="true" BitPos="6">
			<Comment>Appended blocks for Supplementary Data</Comment>
			<Value Description="Supplementary Data">0x0000<Comment>Appended blocks for Supplementary Data</Comment></Value>
		</Field>
		<Field Name="Target Group Address_TGI" Pos="4" Size="3" BitFlag="false">
			<Comment>Address used to identify the totality of talkgroup address space</Comment>
			<Value Description="Target Group Identifier">0xFFFEC8<Comment>Address used to identify the totality of talkgroup address space</Comment></Value>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_RAND Voice Call" Size="24" SecondaryKeyField="1,4,12">
		<Comment>Random Access Request </Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment>
			<Value Description="CSBK Opcode">0x001F<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Proxy Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>Determines no of appended data UDTs  to contain destination address</Comment>
			<Value Description="One Appended Data MBC">0x0000<Comment>gateway extended_address is IPV4</Comment></Value>
			<Value Description="Two Appended Data MBCs">0x0001<Comment>gateway extended_address is IPV6Number.</Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="2" Size="2" BitFlag="true" BitPos="1">
			<Comment>Priority Level</Comment>
			<Data/>
		</Field>
		<Field Name="Open Voice Call Mode" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment>Open Voice Call Mode</Comment>
			<Data/>
		</Field>
		<Field Name="Broadcast" Pos="2" Size="1" BitFlag="true" BitPos="4">
			<Comment>Broadcast</Comment>
			<Value Description="Non broadcast call">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Supplementary Data" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment>Supplementary Data</Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>Privacy</Comment>
			<Data/>
		</Field>
		<Field Name="Emergency" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment>Emergency</Comment>
			<Value Description="Non Emergency Call">0x0000<Comment></Comment></Value>
			<Value Description="Emergency call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind " Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Individual Voice call">0x0000<Comment>Ambient Listening  (Remote monitor) if ALS=1</Comment></Value>
			<Value Description="TG Voice Call">0x0001<Comment>TG Voice Call, Broadcast Voice call if (B=1) , EmergencyVoice call if (E=1)</Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="3" Size="1" BitFlag="true" BitPos="4">
			<Comment>Reserved</Comment>
			<Data/>
		</Field>
		<Field Name="Ambient Listening" Pos="3" Size="1" BitFlag="true" BitPos="5">
			<Comment>Ambient Listening</Comment>
			<Value Description="Ambient Listening">0x0001<Comment></Comment></Value>
			<Value Description="Non Ambient Listening">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Sup_D" Pos="3" Size="2" BitFlag="true" BitPos="6">
			<Comment>Appended blocks for Supplementary Data</Comment>
			<Value Description="Supplementary Data">0x0000<Comment>Appended blocks for Supplementary Data</Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_RAND Packet Data Call" Size="24" SecondaryKeyField="1,4,12">
		<Comment>Individual or Talkgroup Packet Data call</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment>
			<Value Description="CSBK Opcode">0x001F<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Proxy Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>Determines no of appended data UDTs  to contain destination address</Comment>
			<Value Description="One Appended Data MBC">0x0000<Comment>gateway extended_address is IPV4</Comment></Value>
			<Value Description="Two Appended Data MBCs">0x0001<Comment>gateway extended_address is IPV6Number.</Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="2" Size="2" BitFlag="true" BitPos="1">
			<Comment>Priority Level</Comment>
			<Data/>
		</Field>
		<Field Name="Open Voice Call Mode" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment>Open Voice Call Mode</Comment>
			<Data/>
		</Field>
		<Field Name="High Rate" Pos="2" Size="1" BitFlag="true" BitPos="4">
			<Comment>Packet Data Transmission that uses dual slot data timing</Comment>
			<Value Description="Single Slot Data Timing">0x0000<Comment>Payload channel expects single slot data timing</Comment></Value>
			<Value Description="Dual Slot Data Timing">0x0001<Comment>Payload channel expects dual slot data timing</Comment></Value>
		</Field>
		<Field Name="Supplementary Data" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment>Supplementary Data</Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>Privacy</Comment>
			<Data/>
		</Field>
		<Field Name="Emergency" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment>Emergency</Comment>
			<Value Description="Non Emergency Call">0x0000<Comment></Comment></Value>
			<Value Description="Emergency call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind " Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Individual Packet Data call ">0x0002<Comment></Comment></Value>
			<Value Description="Talkgroup Packet Data call">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Sh_D" Pos="3" Size="2" BitFlag="true" BitPos="4">
			<Comment>Appended blocks for Short Data</Comment>
			<Data/>
		</Field>
		<Field Name="Sup_D" Pos="3" Size="2" BitFlag="true" BitPos="6">
			<Comment>Appended blocks for Supplementary Data</Comment>
			<Value Description="Supplementary Data">0x0000<Comment>Appended blocks for Supplementary Data</Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_RAND Short Data Call" Size="24" SecondaryKeyField="1,4,12">
		<Comment>Individual / Talkgroup Short data call</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment>
			<Value Description="CSBK Opcode">0x001F<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Proxy Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>Determines no of appended data UDTs  to contain destination address</Comment>
			<Value Description="One Appended Data MBC">0x0000<Comment>gateway extended_address is IPV4</Comment></Value>
			<Value Description="Two Appended Data MBCs">0x0001<Comment>gateway extended_address is IPV6Number.</Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="2" Size="2" BitFlag="true" BitPos="1">
			<Comment>Priority Level</Comment>
			<Data/>
		</Field>
		<Field Name="Open Voice Call Mode" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment>Open Voice Call Mode</Comment>
			<Data/>
		</Field>
		<Field Name="Broadcast" Pos="2" Size="1" BitFlag="true" BitPos="4">
			<Comment>Broadcast</Comment>
			<Value Description="Non broadcast call">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Supplementary Data" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment>Supplementary Data</Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>Privacy</Comment>
			<Data/>
		</Field>
		<Field Name="Emergency" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment>Emergency</Comment>
			<Value Description="Non Emergency Call">0x0000<Comment></Comment></Value>
			<Value Description="Emergency call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind " Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Individual Short Data call">0x0004<Comment></Comment></Value>
			<Value Description="Talkgroup Short Data call">0x0005<Comment></Comment></Value>
		</Field>
		<Field Name="Sh_D" Pos="3" Size="2" BitFlag="true" BitPos="4">
			<Comment>Appended blocks for Short Data</Comment>
			<Data/>
		</Field>
		<Field Name="Sup_D" Pos="3" Size="2" BitFlag="true" BitPos="6">
			<Comment>Appended blocks for Supplementary Data</Comment>
			<Value Description="Supplementary Data">0x0000<Comment>Appended blocks for Supplementary Data</Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_RAND Emergency Alarm" Size="24" SecondaryKeyField="1,4,9,10">
		<Comment></Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment>
			<Value Description="CSBK Opcode">0x001F<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Proxy Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>Determines no of appended data UDTs  to contain destination address</Comment>
			<Value Description="One Appended Data MBC">0x0000<Comment>gateway extended_address is IPV4</Comment></Value>
			<Value Description="Two Appended Data MBCs">0x0001<Comment>gateway extended_address is IPV6Number.</Comment></Value>
		</Field>
		<Field Name="Stat_M" Pos="2" Size="5" BitFlag="true" BitPos="1">
			<Comment>Status MS bits </Comment>
			<Value Description="Status MS bits ">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Supplementary Data" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>Supplementary Data</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/Talkgroup" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Talkgroup">0x0001<Comment></Comment></Value>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind " Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Emergency Alarm">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="Stat_L" Pos="3" Size="2" BitFlag="true" BitPos="4">
			<Comment>Status LS bits</Comment>
			<Value Description="Status LS bits">0x0001<Comment>Emergency Alarm=000 0001</Comment></Value>
		</Field>
		<Field Name="Sup_D" Pos="3" Size="2" BitFlag="true" BitPos="6">
			<Comment>Appended blocks for Supplementary Data</Comment>
			<Value Description="Supplementary Data">0x0000<Comment>Appended blocks for Supplementary Data</Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_RAND Answer Call" Size="24" SecondaryKeyField="1,4,12">
		<Comment>Answer Call Service, either accept or reject depend on AR</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment>
			<Value Description="CSBK Opcode">0x001F<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Proxy Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>Determines no of appended data UDTs  to contain destination address</Comment>
			<Value Description="One Appended Data MBC">0x0000<Comment>gateway extended_address is IPV4</Comment></Value>
			<Value Description="Two Appended Data MBCs">0x0001<Comment>gateway extended_address is IPV6Number.</Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="2" Size="2" BitFlag="true" BitPos="1">
			<Comment>Priority Level</Comment>
			<Data/>
		</Field>
		<Field Name="Open Voice Call Mode" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment>Open Voice Call Mode</Comment>
			<Data/>
		</Field>
		<Field Name="Broadcast" Pos="2" Size="1" BitFlag="true" BitPos="4">
			<Comment>Broadcast</Comment>
			<Data/>
		</Field>
		<Field Name="Supplementary Data" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment>Supplementary Data</Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>Privacy</Comment>
			<Data/>
		</Field>
		<Field Name="Emergency" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment>Emergency</Comment>
			<Value Description="Non Emergency Call">0x0000<Comment></Comment></Value>
			<Value Description="Emergency call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind " Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="call answer service">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="3" Size="1" BitFlag="true" BitPos="4">
			<Comment>Reserved</Comment>
			<Data/>
		</Field>
		<Field Name="Accept/Reject" Pos="3" Size="1" BitFlag="true" BitPos="5">
			<Comment>Accept/Reject Call</Comment>
			<Value Description="Reject">0x0001<Comment>User rejected FOACSU call</Comment></Value>
			<Value Description="Accept">0x0000<Comment>User accepted FOACSU call</Comment></Value>
		</Field>
		<Field Name="Sup_D" Pos="3" Size="2" BitFlag="true" BitPos="6">
			<Comment>Appended blocks for Supplementary Data</Comment>
			<Value Description="Supplementary Data">0x0000<Comment>Appended blocks for Supplementary Data</Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_GRANT Voice" Size="24" SecondaryKeyField="1,4">
		<Comment>A CCM transmits XX_GRANT PDU to inform a SU that network has accepted the Talkgroup Voice call/Private Voice call/ Broadcast TG Voice call and assigned a trunk channel at the site. </Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="PV_GRANT">0x0030<Comment>A CCM transmits PV_GRANT PDU to inform a SU that network has accepted the private voice call and assigned a trunk channel at the site. The Source Address is the ID of the call initiating SU. The trunk channel assigned to the call is specified by the Physical Channel Number and the Logical Channel Number (slot id)</Comment></Value>
			<Value Description="TV_GRANT">0x0031<Comment>A CCM transmits TV_GRANT PDU to inform a SU that network has accepted the talkgroup voice call and assigned a trunk channel at the site. The Source Address is the ID of the call initiating SU. The trunk channel assigned to the call is specified by the Physical Channel Number and the Logical Channel Number (slot id) fields.</Comment></Value>
			<Value Description="BTV_GRANT">0x0032<Comment>A CCM transmits BTV_GRANT PDU to inform a SU that network has accepted the broadcast voice call and assigned a trunk channel at the site. The Source Address is the ID of the call initiating SU. The trunk channel assigned to the call is specified by the Physical Channel Number and the Logical Channel Number (slot id) </Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Logical Physical Channel Number _bit0 to bit7" Pos="2" Size="1" BitFlag="false">
			<Comment>Payload Channel for the Call or an indicator that the absolute Tx and Rx frequency is specified in an appended CSBK block</Comment>
			<Data/>
		</Field>
		<Field Name="Offset" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Determine if the call uses offset timing</Comment>
			<Value Description="Align">0x0000<Comment>Payload Channel uses aligned timing
</Comment></Value>
			<Value Description="Offset">0x0001<Comment>Payload Channel uses offset timing
</Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="3" Size="1" BitFlag="true" BitPos="1">
			<Comment>Detemine if the call is an emergency call or not</Comment>
			<Value Description="Non Emergency Call">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Open Voice Call Mode" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment>Determine if the call uses Open Voice Call Mode (i.e. allows 3rd party MSs not addressed in the call to both listen and talk)</Comment>
			<Value Description="Non OVCM Call">0x0000<Comment></Comment></Value>
			<Value Description="OVCM Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Logical Channel Number " Pos="3" Size="1" BitFlag="true" BitPos="3">
			<Comment>Determine if the call is using TDMA logical channel 1 or 2</Comment>
			<Value Description="TDMA channel 1">0x0000<Comment></Comment></Value>
			<Value Description="TDMA channel 2">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Logical Physical Channel Number_bit8 to bit11" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment>Payload Channel for the Call or an indicator that the absolute Tx and Rx frequency is specified in an appended CSBK block</Comment>
			<Data/>
		</Field>
		<Field Name="Target Group Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Value Description="Site All Call">0xFFFFFD<Comment></Comment></Value>
			<Value Description="Multi Site All Call">0xFFFFFE<Comment></Comment></Value>
			<Value Description="System All Call">0xFFFFFF<Comment></Comment></Value>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Value Description="All Call _ALL MSI">0xFFFED4<Comment></Comment></Value>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_GRANT Data" Size="24" SecondaryKeyField="1,4">
		<Comment>A CCM transmits TD_GRANT/PD_GRANT PDU to inform a SU that network has accepted the talkgroup packet data call/Private packet data call and assigned a trunk channel at the site. The Source Address is the ID of the call initiating SU. The trunk channel assigned to the call is specified by the Physical Channel Number and the Logical Channel Number (slot id) </Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="PD_GRANT">0x0033<Comment>A CCM transmits PD_GRANT PDU to inform a SU that network has accepted the private data call and assigned a trunk channel at the site.</Comment></Value>
			<Value Description="TD_GRANT">0x0034<Comment>A CCM transmits TD_GRANT PDU to inform a SU that network has accepted the talkgroup packet data call and assigned a trunk channel at the site. The Source Address is the ID of the call initiating SU. The trunk channel assigned to the call is specified by the Physical Channel Number and the Logical Channel Number (slot id) </Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Logical Physical Channel Number _bit0 to bit7" Pos="2" Size="1" BitFlag="false">
			<Comment>Payload Channel for the Call or an indicator that the absolute Tx and Rx frequency is specified in an appended CSBK block</Comment>
			<Data/>
		</Field>
		<Field Name="Offset" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Determine if the call uses offset timing</Comment>
			<Value Description="Align">0x0000<Comment>Payload Channel uses aligned timing
</Comment></Value>
			<Value Description="Offset">0x0001<Comment>Payload Channel uses offset timing
</Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="3" Size="1" BitFlag="true" BitPos="1">
			<Comment>Detemine if the call is an emergency call or not</Comment>
			<Value Description="Non Emergency Call">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Packet Mode" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment>Determine if payload channel uses (2 to 1) or (1 to 1) data packets</Comment>
			<Value Description="2:1 Mode">0x0000<Comment>Payload Channel uses 2:1 mode</Comment></Value>
			<Value Description="1:1 Mode">0x0001<Comment>Payload Channel uses 1:1 mode</Comment></Value>
		</Field>
		<Field Name="Logical Channel Number " Pos="3" Size="1" BitFlag="true" BitPos="3">
			<Comment>Determine if the call is using TDMA logical channel 1 or 2</Comment>
			<Value Description="TDMA channel 1">0x0000<Comment></Comment></Value>
			<Value Description="TDMA channel 2">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Logical Physical Channel Number_bit8 to bit11" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment>Payload Channel for the Call or an indicator that the absolute Tx and Rx frequency is specified in an appended CSBK block</Comment>
			<Data/>
		</Field>
		<Field Name="Target Group Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_ALOHA" Size="24" SecondaryKeyField="1">
		<Comment>C_ALOHA is used as an invitation to the SUs for random access. It is sent continuously by the system during idle condition</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_ALOHA">0x0019<Comment>C_ALOHA is used as an invitation to the SUs for random access. It is sent continuously by the system during idle condition. This CSBK carries the following key parameters:</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Active Connection" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>Determine if communication with other radio sites is possible</Comment>
			<Value Description="Non-Active">0x0000<Comment>The TS does not have an active connection with the rest of the network</Comment></Value>
			<Value Description="Active">0x0001<Comment>The TS has an active connection with the rest of the network</Comment></Value>
		</Field>
		<Field Name="Infill" Pos="2" Size="1" BitFlag="true" BitPos="1">
			<Comment>To indicate this is an infill site or not</Comment>
			<Value Description="Infill Site">0x0001<Comment></Comment></Value>
			<Value Description="Non- Infill Site">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="2" Size="6" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="NRand_Wait_bit0" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>No of TDMA frames MS must wait and listen for TSCC response</Comment>
			<Data/>
		</Field>
		<Field Name="Service Function" Pos="3" Size="2" BitFlag="true" BitPos="1">
			<Comment>Service Function used by the system to indicate what kind of service is available </Comment>
			<Value Description="ALL">0x0000<Comment></Comment></Value>
			<Value Description="Registration and Payload">0x0001<Comment></Comment></Value>
			<Value Description="Registration and No Payload">0x0002<Comment></Comment></Value>
			<Value Description="Registration Only">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="MASK" Pos="3" Size="5" BitFlag="true" BitPos="3">
			<Comment>Mask value used with the MS Address, to address particular set of SUs. The SU must check and calculate the Mask and the MS Address to determine whether the C_ALOHA is targeted to own SU or not.</Comment>
			<Data/>
		</Field>
		<Field Name="Backoff Number" Pos="4" Size="4" BitFlag="true" BitPos="0">
			<Comment>No of TDMA frames MS must 'backoff' b4 sending next Random Access</Comment>
			<Data/>
		</Field>
		<Field Name="Registration" Pos="4" Size="1" BitFlag="true" BitPos="4">
			<Comment>Registration flag indicating whether the SU is required to register (1) or not (0) upon entering the site before allowed to initiate a service request.</Comment>
			<Value Description="Registration Require">0x0001<Comment></Comment></Value>
			<Value Description="Registration NOT Require">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="NRand_Wait_bit1 to bit3" Pos="4" Size="3" BitFlag="true" BitPos="5">
			<Comment>No of TDMA frames MS must wait and listen for TSCC response</Comment>
			<Data/>
		</Field>
		<Field Name="C_SYScode" Pos="5" Size="2" BitFlag="false">
			<Comment>Determines network model (MODEL NET, SITE, PAR)</Comment>
			<Data/>
		</Field>
		<Field Name="MS Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_RAND for Registration" Size="24" SecondaryKeyField="1,4,11">
		<Comment></Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment>
			<Value Description="CSBK Opcode">0x001F<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Proxy Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>Determines no of appended data UDTs  to contain destination address</Comment>
			<Value Description="One Appended Data MBC">0x0000<Comment>gateway extended_address is IPV4</Comment></Value>
			<Value Description="Two Appended Data MBCs">0x0001<Comment>gateway extended_address is IPV6Number.</Comment></Value>
		</Field>
		<Field Name="Registration/DeRegistration" Pos="2" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Registration">0x0001<Comment>MS is attempting to register.</Comment></Value>
			<Value Description="De_Registration">0x0000<Comment>MS is attempting to de-register.</Comment></Value>
		</Field>
		<Field Name="Power Saver Request" Pos="2" Size="3" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="IP Inform" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Value Description="Not Supported">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>Privacy</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved1" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment>Reserved</Comment>
			<Data/>
		</Field>
		<Field Name="Registration" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Registration">0x000E<Comment>Registration/Authetication service and deregistration</Comment></Value>
		</Field>
		<Field Name="Reserved2" Pos="3" Size="2" BitFlag="true" BitPos="4">
			<Comment>Reserved</Comment>
			<Data/>
		</Field>
		<Field Name="Appended Supplementary Data" Pos="3" Size="2" BitFlag="true" BitPos="6">
			<Comment>Appended blocks for Supplementary Data</Comment>
			<Data/>
		</Field>
		<Field Name="Target Group Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_AHOY: Stun/Revive/Kill/Radio Check" Size="24" SecondaryKeyField="1,12,17">
		<Comment>CCM transmits C_AHOY on control channel to check the availability of the target SU.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_AHOY">0x001C<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Stun/ Not Aplicable">0x0000<Comment></Comment></Value>
			<Value Description="Revive">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Service Options Mirror" Pos="2" Size="7" BitFlag="true" BitPos="1">
			<Comment>Service Options Mirror</Comment>
			<Data/>
		</Field>
		<Field Name="Service Kind " Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Stun/Revice">0x000D<Comment></Comment></Value>
			<Value Description="Radio Check">0x000E<Comment></Comment></Value>
		</Field>
		<Field Name="Appended Block" Pos="3" Size="2" BitFlag="true" BitPos="4">
			<Comment>Number of Appended Blocks</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/ Talkgroup" Pos="3" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ambient Listening" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment>Ambient Listening</Comment>
			<Value Description="Ambient Listening">0x0001<Comment></Comment></Value>
			<Value Description="Non Ambient Listening">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment></Comment>
			<Value Description="STUNI">0xFFFECC<Comment>Stun/Revive Identifier</Comment></Value>
			<Value Description="TSI">0xFFFECA<Comment>Address of Repeater </Comment></Value>
			<Value Description="KILLI">0xFFFECF<Comment>MS KILL Identifier</Comment></Value>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_AHOY: Authentication Challenge" Size="24" SecondaryKeyField="1,9">
		<Comment></Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_AHOY">0x001C<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved1" Pos="2" Size="5" BitFlag="true" BitPos="1">
			<Comment>Reserved1</Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>Privacy</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment>Reserved2</Comment>
			<Value Description="Non Emergency Call">0x0000<Comment></Comment></Value>
			<Value Description="Emergency call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind " Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Authetication">0x000E<Comment>Registration/Authetication service and deregistration</Comment></Value>
		</Field>
		<Field Name="Appended Block" Pos="3" Size="2" BitFlag="true" BitPos="4">
			<Comment>Number of Appended Blocks</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/ Talkgroup" Pos="3" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ambient Listening" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment>Ambient Listening</Comment>
			<Value Description="Not Applicable">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>Address of Challenged MS</Comment>
			<Data/>
		</Field>
		<Field Name="Authentication challenge value" Pos="7" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_NACKU" Size="24" SecondaryKeyField="1,4,5,10">
		<Comment>Network / SU use this PDU to provide acknowledgement response to a PDU that needs response. When used in downlink the PDU is suffixed with D ( e.g. C_NACKD) and when used in uplink the PDU is suffixed with U (e.g. C_ACKU). WACK and QACK responses are valid only on the downlink.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="NACKU">0x0021<Comment>Network / SU use this PDU to provide acknowledgement response to a PDU that needs response. When used in downlink the PDU is suffixed with D ( e.g. C_NACKD) and when used in uplink the PDU is suffixed with U (e.g. C_ACKU). WACK and QACK responses are valid only on the downlink.</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reason Code_t_bit0" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>t t d a a a a a , tt decide ACK/WACK/NACK/QACK, d stand for direction -uplink or downlink , 5 as is the reason.  t(bit0)t(bit1)=00 (NACK),tt=01(ACK),tt=10(QACK),tt=11(WACK)</Comment>
			<Value Description="T0 for NACK">0x0000<Comment>t(bit0)t(bit1)=00 (NACK)</Comment></Value>
		</Field>
		<Field Name="Response Check" Pos="2" Size="6" BitFlag="true" BitPos="1">
			<Comment>Six least significant bits from NET+SITE elements of SYScode transmitted by the control channel</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/Talkgroup" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Individual ">0x0000<Comment>The target address is an individual ID</Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment>The target address is a talkgroup ID</Comment></Value>
		</Field>
		<Field Name="Reserve" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reason Code" Pos="3" Size="6" BitFlag="true" BitPos="1">
			<Comment>d a a a a a ,d stand for direction -uplink or downlink , 5 as is the reason.</Comment>
			<Value Description="MSNot_Supported">0x0000<Comment>SU does not support this service or feature</Comment></Value>
			<Value Description="EquipBusy_Refused">0x0013<Comment>Request refused because called party ancillary equipment is busy</Comment></Value>
			<Value Description="Recipient_Refused">0x0014<Comment>Request refused by called party user (like in FOACSU)</Comment></Value>
			<Value Description="Custom_Refused">0x0015<Comment>Authentication Challenge Response verification failed</Comment></Value>
			<Value Description="Refused_Reason_Unknown">0x001F<Comment>Call is refused but reason is not known</Comment></Value>
		</Field>
		<Field Name="Reason Code_t_bit1" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment> t(bit0)t(bit1)=00 (NACK), tt=01(ACK), tt=10(QACK), tt=11(WACK)</Comment>
			<Value Description="T1 for NACK">0x0000<Comment>t(bit0)t(bit1)=00 (NACK)</Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_ACKU" Size="24" SecondaryKeyField="1,4,5,10">
		<Comment>Network / SU use this PDU to provide acknowledgement response to a PDU that needs response. When used in downlink the PDU is suffixed with D ( e.g. C_NACKD) and when used in uplink the PDU is suffixed with U (e.g. C_ACKU). WACK and QACK responses are valid only on the downlink.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="ACKU">0x0021<Comment>Network / SU use this PDU to provide acknowledgement response to a PDU that needs response. When used in downlink the PDU is suffixed with D ( e.g. C_NACKD) and when used in uplink the PDU is suffixed with U (e.g. C_ACKU). WACK and QACK responses are valid only on the downlink.</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reason Code_t_bit0" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>t t d a a a a a , tt decide ACK/WACK/NACK/QACK, d stand for direction -uplink or downlink , 5 as is the reason.  t(bit0)t(bit1)=00 (NACK),tt=01(ACK),tt=10(QACK),tt=11(WACK)</Comment>
			<Value Description="T0 for ACK">0x0000<Comment>tt=01(ACK)</Comment></Value>
		</Field>
		<Field Name="Response Check" Pos="2" Size="6" BitFlag="true" BitPos="1">
			<Comment>Six least significant bits from NET+SITE elements of SYScode transmitted by the control channel</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/Talkgroup" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Individual ">0x0000<Comment>The target address is an individual ID</Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment>The target address is a talkgroup ID</Comment></Value>
		</Field>
		<Field Name="Reserve" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reason Code" Pos="3" Size="6" BitFlag="true" BitPos="1">
			<Comment>d a a a a a ,d stand for direction -uplink or downlink , 5 as is the reason.</Comment>
			<Value Description="MS_Accepted">0x0004<Comment>Message accepted by SU</Comment></Value>
			<Value Description="MS_Alerting">0x0006<Comment>SU alerting but not yet ready for communication ( like in FOACSU)</Comment></Value>
			<Value Description="Authentication Response">0x0008<Comment>SU response to a successful Authentication Challenge</Comment></Value>
		</Field>
		<Field Name="Reason Code_t_bit1" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment> t(bit0)t(bit1)=00 (NACK), tt=01(ACK), tt=10(QACK), tt=11(WACK)</Comment>
			<Value Description="T1 for ACK">0x0001<Comment>tt=01(ACK)</Comment></Value>
		</Field>
		<Field Name="Target Address/Authentication Response" Pos="4" Size="3" BitFlag="false">
			<Comment>authentication challenge</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_NACKD" Size="24" SecondaryKeyField="1,4,5,10">
		<Comment>Network / SU use this PDU to provide acknowledgement response to a PDU that needs response. When used in downlink the PDU is suffixed with D ( e.g. C_NACKD) and when used in uplink the PDU is suffixed with U (e.g. C_ACKU). WACK and QACK responses are valid only on the downlink.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="NACKD">0x0020<Comment>Network / SU use this PDU to provide acknowledgement response to a PDU that needs response. When used in downlink the PDU is suffixed with D ( e.g. C_NACKD) and when used in uplink the PDU is suffixed with U (e.g. C_ACKU). WACK and QACK responses are valid only on the downlink.</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reason Code_t_bit0" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>t t d a a a a a , tt decide ACK/WACK/NACK/QACK, d stand for direction -uplink or downlink , 5 as is the reason.  t(bit0)t(bit1)=00 (NACK),tt=01(ACK),tt=10(QACK),tt=11(WACK)</Comment>
			<Value Description="T0 for NACK">0x0000<Comment>tt=00(NACK)</Comment></Value>
		</Field>
		<Field Name="Response Check" Pos="2" Size="6" BitFlag="true" BitPos="1">
			<Comment>Six least significant bits from NET+SITE elements of SYScode transmitted by the control channel</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/Talkgroup" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Individual ">0x0000<Comment>The target address is an individual ID</Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment>The target address is a talkgroup ID</Comment></Value>
		</Field>
		<Field Name="Reserve" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reason Code" Pos="3" Size="6" BitFlag="true" BitPos="1">
			<Comment>d a a a a a ,d stand for direction -uplink or downlink , 5 as is the reason.</Comment>
			<Value Description="Not_Supported">0x0020<Comment>Network does not support this service</Comment></Value>
			<Value Description="Perm_User_Refused">0x0021<Comment>Request refused because service has not been authorized for this user</Comment></Value>
			<Value Description="Transient_Sys_Refused">0x0023<Comment>Request refused because the service is not available to this network at this time</Comment></Value>
			<Value Description="NoregMSaway_Refused">0x0024<Comment>Request refused because called party is not in radio contact and is not registered with the network</Comment></Value>
			<Value Description="MSaway_Refused">0x0025<Comment>Request refused because called party is not in radio contact and is not registered with the network</Comment></Value>
			<Value Description="SYSbusy_Refused">0x0027<Comment>Request refused because the network is experiencing congestion</Comment></Value>
			<Value Description="SYS_NotReady">0x0028<Comment>Request refused because the network is not ready (try later)</Comment></Value>
			<Value Description="Reg_Refused">0x002A<Comment>Request from a SU to register has been refused</Comment></Value>
			<Value Description="Reg_Denied">0x002B<Comment>Request from a SU to register has been denied</Comment></Value>
			<Value Description="MS_Not_Registered">0x002D<Comment>This system requires SU to be registered before accepting a user service request. The SU is not registered </Comment></Value>
			<Value Description="Called_Party_Busy">0x002E<Comment>The called party is busy and the network does not wish to queue the call</Comment></Value>
			<Value Description="Temp_User_Refused">0x0022<Comment>Request is refused because service is not currently authorized for this user (temporary) </Comment></Value>
			<Value Description="Called_Group_Not_Allowed">0x002F<Comment>The talkgroup ID is not allowed by the network</Comment></Value>
			<Value Description="Refused_Reason_Unknown">0x003F<Comment>Call is refused but reason is not known</Comment></Value>
		</Field>
		<Field Name="Reason Code_t_bit1" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment> t(bit0)t(bit1)=00 (NACK), tt=01(ACK), tt=10(QACK), tt=11(WACK)</Comment>
			<Value Description="T1 for NACK">0x0000<Comment>tt=00(NACK)</Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_ACKD" Size="24" SecondaryKeyField="1,4,5,10">
		<Comment>Network / SU use this PDU to provide acknowledgement response to a PDU that needs response. When used in downlink the PDU is suffixed with D ( e.g. C_NACKD) and when used in uplink the PDU is suffixed with U (e.g. C_ACKU). WACK and QACK responses are valid only on the downlink.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="ACKD">0x0020<Comment>Network / SU use this PDU to provide acknowledgement response to a PDU that needs response. When used in downlink the PDU is suffixed with D ( e.g. C_NACKD) and when used in uplink the PDU is suffixed with U (e.g. C_ACKU). WACK and QACK responses are valid only on the downlink.</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reason Code_t_bit0" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>t t d a a a a a , tt decide ACK/WACK/NACK/QACK, d stand for direction -uplink or downlink , 5 as is the reason.  t(bit0)t(bit1)=00 (NACK),tt=01(ACK),tt=10(QACK),tt=11(WACK)</Comment>
			<Value Description="T0 for ACK">0x0000<Comment>tt=01(ACK)</Comment></Value>
		</Field>
		<Field Name="Response Check" Pos="2" Size="6" BitFlag="true" BitPos="1">
			<Comment>Six least significant bits from NET+SITE elements of SYScode transmitted by the control channel</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/Talkgroup" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Individual ">0x0000<Comment>The target address is an individual ID</Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment>The target address is a talkgroup ID</Comment></Value>
		</Field>
		<Field Name="Reserve" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reason Code" Pos="3" Size="6" BitFlag="true" BitPos="1">
			<Comment>d a a a a a ,d stand for direction -uplink or downlink , 5 as is the reason.</Comment>
			<Value Description="Message_Accepted">0x0020<Comment>Message accepted by Network - Proceed</Comment></Value>
			<Value Description="Reg_Accepted">0x0022<Comment>Request from SU to register has been accepted</Comment></Value>
			<Value Description="MS_Alerting">0x0006<Comment>SU alerting but not yet ready for communication ( like in FOACSU)</Comment></Value>
			<Value Description="Authentication Response">0x0023<Comment>Network response to authentication challenge</Comment></Value>
		</Field>
		<Field Name="Reason Code_t_bit1" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment> t(bit0)t(bit1)=00 (NACK), tt=01(ACK), tt=10(QACK), tt=11(WACK)</Comment>
			<Value Description="T1 for ACK">0x0001<Comment>tt=01(ACK)</Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_QACKD" Size="24" SecondaryKeyField="1,4,5,10">
		<Comment>Network / SU use this PDU to provide acknowledgement response to a PDU that needs response. When used in downlink the PDU is suffixed with D ( e.g. C_NACKD) and when used in uplink the PDU is suffixed with U (e.g. C_ACKU). WACK and QACK responses are valid only on the downlink.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="QACKD">0x0020<Comment>Network / SU use this PDU to provide acknowledgement response to a PDU that needs response. When used in downlink the PDU is suffixed with D ( e.g. C_NACKD) and when used in uplink the PDU is suffixed with U (e.g. C_ACKU). WACK and QACK responses are valid only on the downlink.</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reason Code_t_bit0" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>t t d a a a a a , tt decide ACK/WACK/NACK/QACK, d stand for direction -uplink or downlink , 5 as is the reason.  t(bit0)t(bit1)=00 (NACK),tt=01(ACK),tt=10(QACK),tt=11(WACK)</Comment>
			<Value Description="T0 for QACK">0x0001<Comment>tt=10(QACK)</Comment></Value>
		</Field>
		<Field Name="Response Check" Pos="2" Size="6" BitFlag="true" BitPos="1">
			<Comment>Six least significant bits from NET+SITE elements of SYScode transmitted by the control channel</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/Talkgroup" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Individual ">0x0000<Comment>The target address is an individual ID</Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment>The target address is a talkgroup ID</Comment></Value>
		</Field>
		<Field Name="Reserve" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reason Code" Pos="3" Size="6" BitFlag="true" BitPos="1">
			<Comment>d a a a a a ,d stand for direction -uplink or downlink , 5 as is the reason.</Comment>
			<Value Description="Queued-for-resource">0x0020<Comment>Message accepted by Network - request queued , more signaling to follow</Comment></Value>
			<Value Description="Queued-for-busy">0x0021<Comment>Called party is engaged in another call</Comment></Value>
		</Field>
		<Field Name="Reason Code_t_bit1" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment> t(bit0)t(bit1)=00 (NACK), tt=01(ACK), tt=10(QACK), tt=11(WACK)</Comment>
			<Value Description="T1 for QACK">0x0000<Comment>tt=10(QACK)</Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_WACKD" Size="24" SecondaryKeyField="1,4,5,10">
		<Comment>Network / SU use this PDU to provide acknowledgement response to a PDU that needs response. When used in downlink the PDU is suffixed with D ( e.g. C_NACKD) and when used in uplink the PDU is suffixed with U (e.g. C_ACKU). WACK and QACK responses are valid only on the downlink.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="WACKD">0x0020<Comment>Network / SU use this PDU to provide acknowledgement response to a PDU that needs response. When used in downlink the PDU is suffixed with D ( e.g. C_NACKD) and when used in uplink the PDU is suffixed with U (e.g. C_ACKU). WACK and QACK responses are valid only on the downlink.</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reason Code_t_bit0" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment>t t d a a a a a , tt decide ACK/WACK/NACK/QACK, d stand for direction -uplink or downlink , 5 as is the reason.  t(bit0)t(bit1)=00 (NACK),tt=01(ACK),tt=10(QACK),tt=11(WACK)</Comment>
			<Value Description="T0 for WACK">0x0001<Comment>tt=11(WACK)</Comment></Value>
		</Field>
		<Field Name="Response Check" Pos="2" Size="6" BitFlag="true" BitPos="1">
			<Comment>Six least significant bits from NET+SITE elements of SYScode transmitted by the control channel</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/Talkgroup" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Individual ">0x0000<Comment>The target address is an individual ID</Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment>The target address is a talkgroup ID</Comment></Value>
		</Field>
		<Field Name="Reserve" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reason Code" Pos="3" Size="6" BitFlag="true" BitPos="1">
			<Comment>d a a a a a ,d stand for direction -uplink or downlink , 5 as is the reason.</Comment>
			<Value Description="Wait">0x0020<Comment>Message accepted by Network - more signaling to follow</Comment></Value>
		</Field>
		<Field Name="Reason Code_t_bit1" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment> t(bit0)t(bit1)=00 (NACK), tt=01(ACK), tt=10(QACK), tt=11(WACK)</Comment>
			<Value Description="T1 for WACK">0x0001<Comment>tt=11(WACK)</Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_BCAST Vote Now" Size="24" SecondaryKeyField="1,6">
		<Comment>The C_BCAST[Vote Now] is a broadcast used by the system to inform the SUs an opportunity to assess the signal quality (RSSI sampling) of a control channel of another site (voted site)</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_BCAST">0x0028<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast Parms_bit0 to bit2" Pos="2" Size="3" BitFlag="true" BitPos="0">
			<Comment>containing (Model + Net ID + Site ID) of the voted site</Comment>
			<Data/>
		</Field>
		<Field Name="Announcement Type" Pos="2" Size="5" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Vote_Now">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast Parms_bit3 to bit10" Pos="3" Size="1" BitFlag="false">
			<Comment>containing (Model + Net ID + Site ID) of the voted site</Comment>
			<Data/>
		</Field>
		<Field Name="Backoff Number" Pos="4" Size="4" BitFlag="true" BitPos="0">
			<Comment>No of TDMA frames MS must 'backoff' b4 sending next Random Access</Comment>
			<Data/>
		</Field>
		<Field Name="Registration" Pos="4" Size="1" BitFlag="true" BitPos="4">
			<Comment>Registration flag, which indicates whether the SU is required to register (1) or not (0)  upon entering the site (not the voted site) before allowed to initiate a service request</Comment>
			<Value Description="Registration Require">0x0001<Comment></Comment></Value>
			<Value Description="Registration NOT Require">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast Parms_bit11 to bit13" Pos="4" Size="3" BitFlag="true" BitPos="5">
			<Comment>containing (Model + Net ID + Site ID) of the voted site</Comment>
			<Data/>
		</Field>
		<Field Name="C_SYScode" Pos="5" Size="2" BitFlag="false">
			<Comment>the system identity code (Model+Net ID+ Site ID + PAR)</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="7" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Active Connection" Pos="7" Size="1" BitFlag="true" BitPos="5">
			<Comment>Indicating whether the site is isolated (0) or is in active connection to the rest of the network (1).</Comment>
			<Value Description="Non Active">0x0000<Comment>The TS does not have an active connection with the rest of the network</Comment></Value>
			<Value Description="Active">0x0001<Comment>The TS has an active connection with the rest of the network</Comment></Value>
		</Field>
		<Field Name="2LSB" Pos="7" Size="2" BitFlag="true" BitPos="6">
			<Comment>2 LSB of the C_SYScode of the voted site</Comment>
			<Data/>
		</Field>
		<Field Name="CH_VOTE_bit0 to bit3" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Channel ID of the voted site to be assessed.</Comment>
			<Data/>
		</Field>
		<Field Name="SITE_STRAT" Pos="8" Size="3" BitFlag="true" BitPos="4">
			<Comment>Site strategy, indicating the roaming strategy the SU shall follow</Comment>
			<Value Description="Radio Site">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved2" Pos="8" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CH_VOTE_bit4 to bit11" Pos="9" Size="1" BitFlag="false">
			<Comment>Channel ID of the voted site to be assessed.</Comment>
			<Data/>
		</Field>
		<Field Name="CSBK CRC" Pos="10" Size="2" BitFlag="false">
			<Comment></Comment>
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
	<PDU Name="C_BCAST Ann_WD_TSCC" Size="24" SecondaryKeyField="1,6">
		<Comment>This broadcast is used by the system to inform the SUs to add/remove candidate CCs to/from the hunting list. Two candidate CCs can be referred in this one burst CSBK, BCAST_CH1 and BCAST_CH2</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_BCAST">0x0028<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="2" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Announcement Type" Pos="2" Size="5" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Ann-WD_TSCC">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="CC for CH_2_bit0 to bit2" Pos="3" Size="3" BitFlag="true" BitPos="0">
			<Comment>Color Code for referred channel, BCAST_CH1d</Comment>
			<Data/>
		</Field>
		<Field Name="CC for CH_1" Pos="3" Size="4" BitFlag="true" BitPos="3">
			<Comment>Color Code for referred channel, BCAST_CH2</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Backoff Number" Pos="4" Size="4" BitFlag="true" BitPos="0">
			<Comment>No of TDMA frames MS must 'backoff' b4 sending next Random Access</Comment>
			<Data/>
		</Field>
		<Field Name="Registration" Pos="4" Size="1" BitFlag="true" BitPos="4">
			<Comment>Registration flag, which indicates whether the SU is required to register (1) or not (0)  upon entering the site (not the voted site) before allowed to initiate a service request</Comment>
			<Value Description="Registration Require">0x0001<Comment></Comment></Value>
			<Value Description="Registration NOT Require">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="AW_FLAG2" Pos="4" Size="1" BitFlag="true" BitPos="5">
			<Comment>Flag indicating the required operation for BCAST_CH2</Comment>
			<Value Description="Add BCAST_CH2 to the list of the candidate CCs">0x0000<Comment>Add BCAST_CH2 to the list of the candidate CCs </Comment></Value>
			<Value Description="Withdraw BCAST_CH2 from the list of the candidate CCs">0x0001<Comment>Withdraw BCAST_CH2 from the list of the candidate CCs</Comment></Value>
		</Field>
		<Field Name="AW_FLAG1" Pos="4" Size="1" BitFlag="true" BitPos="6">
			<Comment>Flag indicating the required operation for BCAST_CH1</Comment>
			<Value Description="Add BCAST_CH1 to the list of the candidate CCs">0x0000<Comment></Comment></Value>
			<Value Description="Withdraw BCAST_CH1 from the list of the candidate CCs">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="CC for CH_2_bit3" Pos="4" Size="1" BitFlag="true" BitPos="7">
			<Comment>Color Code for referred channel, BCAST_CH2</Comment>
			<Data/>
		</Field>
		<Field Name="C_SYScode" Pos="5" Size="2" BitFlag="false">
			<Comment>the system identity code (Model+Net ID+ Site ID + PAR)</Comment>
			<Data/>
		</Field>
		<Field Name="BCAST_CH1_bit0 to bit7" Pos="7" Size="1" BitFlag="false">
			<Comment>Channel ID of the candidate control channel to add/withdraw</Comment>
			<Data/>
		</Field>
		<Field Name="BCAST_CH2_bit0 to bit3" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Channel ID of the candidate control channel to add/withdraw</Comment>
			<Data/>
		</Field>
		<Field Name="BCAST_CH1_bit8 to bit11" Pos="8" Size="4" BitFlag="true" BitPos="4">
			<Comment>Channel ID of the candidate control channel to add/withdraw</Comment>
			<Data/>
		</Field>
		<Field Name="BCAST_CH2_bit4 to bit11" Pos="9" Size="1" BitFlag="false">
			<Comment>Channel ID of the candidate control channel to add/withdraw</Comment>
			<Data/>
		</Field>
		<Field Name="CSBK CRC" Pos="10" Size="2" BitFlag="false">
			<Comment></Comment>
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
	<PDU Name="C_BCAST Adj Site Info" Size="24" SecondaryKeyField="1,6">
		<Comment>This broadcast message C_BCAST[Adjacent Site Info] is used to broadcast the information about the adjacent site. The system sends this message for each adjacent site, one message conveying information of one adjacent site.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_BCAST">0x0028<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast Parms_bit0 to bit2" Pos="2" Size="3" BitFlag="true" BitPos="0">
			<Comment>containing (Model + Net ID + Site ID) of the voted site</Comment>
			<Data/>
		</Field>
		<Field Name="Announcement Type" Pos="2" Size="5" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Adjacent SIte Information">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast Parms_bit3 to bit10" Pos="3" Size="1" BitFlag="false">
			<Comment>containing (Model + Net ID + Site ID) of the voted site</Comment>
			<Data/>
		</Field>
		<Field Name="Backoff Number" Pos="4" Size="4" BitFlag="true" BitPos="0">
			<Comment>No of TDMA frames MS must 'backoff' b4 sending next Random Access</Comment>
			<Data/>
		</Field>
		<Field Name="Registration" Pos="4" Size="1" BitFlag="true" BitPos="4">
			<Comment>Registration flag, which indicates whether the SU is required to register (1) or not (0)  upon entering the site (not the voted site) before allowed to initiate a service request</Comment>
			<Value Description="Registration Require">0x0001<Comment></Comment></Value>
			<Value Description="Registration NOT Require">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast Parms_bit11 to bit13" Pos="4" Size="3" BitFlag="true" BitPos="5">
			<Comment>containing (Model + Net ID + Site ID) of the voted site</Comment>
			<Data/>
		</Field>
		<Field Name="C_SYScode" Pos="5" Size="2" BitFlag="false">
			<Comment>the system identity code (Model+Net ID+ Site ID + PAR)</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="7" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Active Connection" Pos="7" Size="1" BitFlag="true" BitPos="5">
			<Comment>Indicating whether the site is isolated (0) or is in active connection to the rest of the network (1).</Comment>
			<Value Description="Non Active">0x0000<Comment>The TS does not have an active connection with the rest of the network</Comment></Value>
			<Value Description="Active">0x0001<Comment>The TS has an active connection with the rest of the network</Comment></Value>
		</Field>
		<Field Name="2LSB" Pos="7" Size="2" BitFlag="true" BitPos="6">
			<Comment>2 LSB of the C_SYScode of the voted site</Comment>
			<Data/>
		</Field>
		<Field Name="CH_ADJ_SITE_bit0 to bit3" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Channel ID of the active control channel of the adjacent site.</Comment>
			<Data/>
		</Field>
		<Field Name="SITE_STRAT" Pos="8" Size="3" BitFlag="true" BitPos="4">
			<Comment>Site strategy, indicating the roaming strategy the SU shall follow</Comment>
			<Value Description="Radio Site">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved2" Pos="8" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CH_ADJ_SITE_bit4 to bit11" Pos="9" Size="1" BitFlag="false">
			<Comment>Channel ID of the active control channel of the adjacent site.</Comment>
			<Data/>
		</Field>
		<Field Name="CSBK CRC" Pos="10" Size="2" BitFlag="false">
			<Comment></Comment>
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
	<PDU Name="C_MOVE" Size="24" SecondaryKeyField="1">
		<Comment>This CSBK is used by the system to move the specified SUs to the new control channel. The target candidate control channel has been active before deactivating current active control channel. </Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_MOVE">0x0039<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
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
		<Field Name="Reserved2" Pos="3" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Mask" Pos="3" Size="5" BitFlag="true" BitPos="2">
			<Comment>: Mask value used with the MS Address, to address particular set of SUs</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved3" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Backoff Number" Pos="4" Size="4" BitFlag="true" BitPos="0">
			<Comment>No of TDMA frames MS must 'backoff' b4 sending next Random Access</Comment>
			<Data/>
		</Field>
		<Field Name="Registration" Pos="4" Size="1" BitFlag="true" BitPos="4">
			<Comment>Registration flag, which indicates whether the SU is required to register (1) or not (0)  upon entering the site (not the voted site) before allowed to initiate a service request</Comment>
			<Value Description="Registration Require">0x0001<Comment></Comment></Value>
			<Value Description="Registration NOT Require">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved4" Pos="4" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Channel ID_bit0 to bit3" Pos="5" Size="4" BitFlag="true" BitPos="0">
			<Comment>The channel ID of the new active control channel</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="5" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Channel ID_bit4 to bit11" Pos="6" Size="1" BitFlag="false">
			<Comment>The channel ID of the new active control channel</Comment>
			<Data/>
		</Field>
		<Field Name="SUID" Pos="7" Size="3" BitFlag="false">
			<Comment>MS Address: Used together with Mask for addressing particular SUs.</Comment>
			<Data/>
		</Field>
		<Field Name="CSBK CRC" Pos="10" Size="2" BitFlag="false">
			<Comment></Comment>
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
	<PDU Name="C_AHOY : Individual Voice Call/Ambient Listening" Size="24" SecondaryKeyField="1,12">
		<Comment>A CCM transmits the C_AHOY PDU to check the availability of target SU for an individual voice call. Service Kind Flag specifies if the call setup is OACSU or FOACSU. Source Address is the Id of the calling SU.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>A CCM transmits the C_AHOY PDU to check the availability of target SU for an individual packet data call. Service Kind Flag specifies the call setup is OACSU. Source Address is the Id of the calling SU.</Comment>
			<Value Description="C_AHOY">0x001C<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="OACSU">0x0000<Comment>OACSU individual voice call setup</Comment></Value>
			<Value Description="FOACSU">0x0001<Comment>FOACSU individual voice call setup</Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="2" Size="2" BitFlag="true" BitPos="1">
			<Comment>Priority Level</Comment>
			<Data/>
		</Field>
		<Field Name="Open Voice Call Mode" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment>Open Voice Call Mode</Comment>
			<Data/>
		</Field>
		<Field Name="Broadcast" Pos="2" Size="1" BitFlag="true" BitPos="4">
			<Comment>Broadcast</Comment>
			<Value Description="Non broadcast call">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Supplementary Data" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment>Supplementary Data</Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>Privacy</Comment>
			<Data/>
		</Field>
		<Field Name="Emergency" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment>Emergency</Comment>
			<Value Description="Non Emergency Call">0x0000<Comment></Comment></Value>
			<Value Description="Emergency call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind " Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Individual Voice call">0x0000<Comment>Ambient Listening  (Remote monitor) if AL=1</Comment></Value>
		</Field>
		<Field Name="Appended Block" Pos="3" Size="2" BitFlag="true" BitPos="4">
			<Comment>Number of Appended Blocks</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/ Talkgroup" Pos="3" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ambient Listening" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment>Ambient Listening</Comment>
			<Value Description="Ambient Listening">0x0001<Comment></Comment></Value>
			<Value Description="Non Ambient Listening">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_AHOY : Individual Packet Data Call" Size="24" SecondaryKeyField="1,12">
		<Comment>A CCM transmits the C_AHOY PDU to check the availability of target SU for an individual packet data call. Service Kind Flag specifies the call setup is OACSU. Source Address is the Id of the calling SU.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_AHOY">0x001C<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="OACSU">0x0000<Comment>OACSU individual data call setup</Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="2" Size="2" BitFlag="true" BitPos="1">
			<Comment>Priority Level</Comment>
			<Data/>
		</Field>
		<Field Name="Open Voice Call Mode" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment>Open Voice Call Mode</Comment>
			<Data/>
		</Field>
		<Field Name="High Rate" Pos="2" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="Single Slot Data Timing">0x0000<Comment>Payload channel expects single slot data timing</Comment></Value>
			<Value Description="Dual Slot Data Timing">0x0001<Comment>Payload channel expects dual slot data timing</Comment></Value>
		</Field>
		<Field Name="Supplementary Data" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment>Supplementary Data</Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>Privacy</Comment>
			<Data/>
		</Field>
		<Field Name="Emergency" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment>Emergency</Comment>
			<Value Description="Non Emergency Call">0x0000<Comment></Comment></Value>
			<Value Description="Emergency call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind " Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Individual Packet Data call">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Appended Block" Pos="3" Size="2" BitFlag="true" BitPos="4">
			<Comment>Number of Appended Blocks</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/ Talkgroup" Pos="3" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ambient Listening" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment>Ambient Listening</Comment>
			<Value Description="Ambient Listening">0x0001<Comment></Comment></Value>
			<Value Description="Non Ambient Listening">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_AHOY : Short Data Call" Size="24" SecondaryKeyField="1,12,17">
		<Comment>A CCM transmits the C_AHOY PDU to check the availability of target SU for an individual packet data call. Service Kind Flag specifies the call setup is OACSU. Source Address is the Id of the calling SU.</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_AHOY">0x001C<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Not Applicable">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="2" Size="2" BitFlag="true" BitPos="1">
			<Comment>Priority Level</Comment>
			<Data/>
		</Field>
		<Field Name="Open Voice Call Mode" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment>Open Voice Call Mode</Comment>
			<Value Description="Not Supported">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="2" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Supplementary Data" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment>Supplementary Data</Comment>
			<Value Description="Not Supported">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>Privacy</Comment>
			<Data/>
		</Field>
		<Field Name="Emergency" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment>Emergency</Comment>
			<Value Description="Non Emergency Call">0x0000<Comment></Comment></Value>
			<Value Description="Emergency call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind " Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Individual Short Data call">0x0004<Comment></Comment></Value>
			<Value Description="Talkgroup Short Data call">0x0005<Comment></Comment></Value>
		</Field>
		<Field Name="Appended Block" Pos="3" Size="2" BitFlag="true" BitPos="4">
			<Comment>Number of Appended Blocks</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/ Talkgroup" Pos="3" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ambient Listening" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment>Ambient Listening</Comment>
			<Value Description="Ambient Listening">0x0001<Comment></Comment></Value>
			<Value Description="Non Ambient Listening">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address_SDMI" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Value Description="Short Data Message Identifier">0xFFFEC5<Comment>Address used to identify a short data service</Comment></Value>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_AHOY : Emergency Alarm" Size="24" SecondaryKeyField="1,9">
		<Comment>CCM transmits Emergency Alarm as C_AHOY. Emergency Alarm status value is 1. </Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_AHOY">0x001C<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind Flag" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Not Applicable">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Stat_M" Pos="2" Size="5" BitFlag="true" BitPos="1">
			<Comment>Status MS bits </Comment>
			<Value Description="Status MS bits ">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Supplementary Data" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>Supplementary Data</Comment>
			<Data/>
		</Field>
		<Field Name="Individual/Talkgroup" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Talkgroup">0x0001<Comment></Comment></Value>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind " Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Emergency Alarm">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="Stat_L" Pos="3" Size="2" BitFlag="true" BitPos="4">
			<Comment>Status LS bits</Comment>
			<Value Description="Status LS bits">0x0001<Comment>Emergency Alarm = 000 0001</Comment></Value>
		</Field>
		<Field Name="Individual/Talkgroup2" Pos="3" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ambient Listening" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Ambient Listening">0x0001<Comment></Comment></Value>
			<Value Description="Non Ambient Listening">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Group Address" Pos="4" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="P_MAINT" Size="24" SecondaryKeyField="1">
		<Comment>SU transmits P_MAINT PDU to end the call on a trunk channel</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="P_MAINT">0x002A<Comment>SU transmits P_MAINT PDU to end the call on a trunk channel</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
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
		<Field Name="Reserved2" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Determine if the call uses offset timing</Comment>
			<Data/>
		</Field>
		<Field Name="Maint_Kind" Pos="3" Size="3" BitFlag="true" BitPos="1">
			<Comment>Determine if current payload  channel is maintained or disconnected
</Comment>
			<Value Description="Disconnect">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved3" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address_Trunk Station Identifier" Pos="4" Size="3" BitFlag="false">
			<Comment>Trunk Station Identifier</Comment>
			<Value Description="Trunk Station Identifier">0xFFFECA<Comment></Comment></Value>
		</Field>
		<Field Name="Source Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="P_CLEAR" Size="24" SecondaryKeyField="1">
		<Comment>A CCM transmits P_CLEAR PDU to inform SUs to leave the trunk channel and move to the physical channel number specified</Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="P_CLEAR">0x002E<Comment>A CCM transmits P_CLEAR PDU to inform SUs to leave the trunk channel and move to the physical channel number specified</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Logical Physical Channel Number _bit0 to bit7" Pos="2" Size="1" BitFlag="false">
			<Comment>Channel to which the addressed party(s) shall move </Comment>
			<Data/>
		</Field>
		<Field Name="Individual/Talkgroup" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Individual">0x0000<Comment>Target is a SU ID</Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment>Target is a Talkgroup</Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="3" Size="3" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Logical Physical Channel Number_bit8 to bit11" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment>Channel to which the addressed party(s) shall move </Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address_Trunk Station Identifier" Pos="7" Size="3" BitFlag="false">
			<Comment>Address of the Trunked Station</Comment>
			<Value Description="Trunk Station Identifier">0xFFFECA<Comment>Address of the Trunked Station</Comment></Value>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="P_PROTECT" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="P_PROTECT">0x002F<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
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
		<Field Name="Individual/Talkgroup" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Individual">0x0000<Comment>Target is a SU ID</Comment></Value>
			<Value Description="Talkgroup">0x0001<Comment>Target is a Talkgroup</Comment></Value>
		</Field>
		<Field Name="Protect_Kind" Pos="3" Size="3" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="DIS_PTT">0x0000<Comment>Disable Target MS or Talkgroup transmission</Comment></Value>
			<Value Description="EN_PTT">0x0001<Comment>Enable Target MS or Talkgroup transmission</Comment></Value>
			<Value Description="ILLEGALLY_PACKED">0x0002<Comment>Clear down from the payload channel, MS whose address does not match source or target address
</Comment></Value>
		</Field>
		<Field Name="Reserved2" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address_Trunk Station Identifier" Pos="7" Size="3" BitFlag="false">
			<Comment>Address of the Trunked Station</Comment>
			<Value Description="Trunk Station Identifier">0xFFFECA<Comment>Address of the Trunked Station</Comment></Value>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
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
	<PDU Name="C_AHOY Call Alert" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>A CCM transmits the C_AHOY PDU to the target SU. Source Address is the Id of the calling SU. Target address is the Id of called SU.</Comment>
			<Value Description="CSBK Opcode">0x001C<Comment>A CCM transmits the C_AHOY PDU to the target SU.</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protect Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved1" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Reserved1">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="call alert">0x000C<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved2" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="Reserved2">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Target Group Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="5" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="6" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Data/>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="9" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="C_RAND Call Alert" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment>
			<Value Description="CSBK Opcode">0x001F<Comment>Random Access PDU sent by MS to TSCC (inbound)</Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protect Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment></Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved1" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Reserved1">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Service Kind" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="call alert">0x000C<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved2" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Target Group Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="5" Size="3" BitFlag="false">
			<Comment>This field identifies the group subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC-CCITT" Pos="6" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Data/>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="9" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="C_BCAST Local_Time" Size="23" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_BCAST">0x0028<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="B_DAY_bit0 to bit2" Pos="2" Size="3" BitFlag="true" BitPos="0">
			<Comment>Day of the Month 1 to 31 (or 0 if date is not being broadcast)</Comment>
			<Data/>
		</Field>
		<Field Name="Announcement Type" Pos="2" Size="5" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Local_Time">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="B_DAY_bit3 to bit4" Pos="3" Size="2" BitFlag="true" BitPos="0">
			<Comment>Day of the Month 1 to 31 (or 0 if date is not being broadcast)</Comment>
			<Data/>
		</Field>
		<Field Name="B_MONTH" Pos="3" Size="4" BitFlag="true" BitPos="1">
			<Comment>broadcast)</Comment>
			<Value Description="Month not broadcast">0x0000<Comment></Comment></Value>
			<Value Description="January">0x0001<Comment></Comment></Value>
			<Value Description="February">0x0002<Comment></Comment></Value>
			<Value Description="March">0x0003<Comment></Comment></Value>
			<Value Description="April">0x0004<Comment></Comment></Value>
			<Value Description="May">0x0005<Comment></Comment></Value>
			<Value Description="June">0x0006<Comment></Comment></Value>
			<Value Description="July">0x0007<Comment></Comment></Value>
			<Value Description="August">0x0008<Comment></Comment></Value>
			<Value Description="September">0x0009<Comment></Comment></Value>
			<Value Description="October">0x000A<Comment></Comment></Value>
			<Value Description="November">0x000B<Comment></Comment></Value>
			<Value Description="December">0x000C<Comment></Comment></Value>
		</Field>
		<Field Name="UTC_OFFSET_bit0 to bit1" Pos="3" Size="2" BitFlag="true" BitPos="5">
			<Comment>Offset between local hours and UTC hours (as a number in the range 0 to 23 (or 111112 if offset is not being broadcast))</Comment>
			<Data/>
		</Field>
		<Field Name="Backoff Number" Pos="4" Size="4" BitFlag="true" BitPos="0">
			<Comment>No of TDMA frames MS must 'backoff' b4 sending next Random Access</Comment>
			<Data/>
		</Field>
		<Field Name="Registration" Pos="4" Size="1" BitFlag="true" BitPos="4">
			<Comment>Registration flag, which indicates whether the SU is required to register (1) or not (0)  upon entering the site (not the voted site) before allowed to initiate a service request</Comment>
			<Value Description="Registration Require">0x0001<Comment></Comment></Value>
			<Value Description="Registration NOT Require">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="UTC_OFFSET_bit2 to bit4" Pos="4" Size="3" BitFlag="true" BitPos="5">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="C_SYScode" Pos="5" Size="2" BitFlag="false">
			<Comment>the system identity code (Model+Net ID+ Site ID + PAR)</Comment>
			<Data/>
		</Field>
		<Field Name="B_HOURS" Pos="6" Size="5" BitFlag="true" BitPos="0">
			<Comment>Hours 0 to 23</Comment>
			<Data/>
		</Field>
		<Field Name="B_MINS_bit0 to bit2" Pos="6" Size="3" BitFlag="true" BitPos="5">
			<Comment>Minutes 0 to 59</Comment>
			<Data/>
		</Field>
		<Field Name="B_MINS_bit3 to bit5" Pos="7" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="B_SECS_bit0 to bit4" Pos="7" Size="5" BitFlag="true" BitPos="3">
			<Comment>Seconds 0 to 59</Comment>
			<Data/>
		</Field>
		<Field Name="B_SECS_bit5" Pos="8" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="DAYOF_WEEK" Pos="8" Size="3" BitFlag="true" BitPos="1">
			<Comment>The day of the week (or 0 if the day of week is not being broadcast)</Comment>
			<Value Description="Days of Week not broadcast">0x0000<Comment></Comment></Value>
			<Value Description="Sunday">0x0001<Comment></Comment></Value>
			<Value Description="Monday">0x0002<Comment></Comment></Value>
			<Value Description="Tuesday">0x0003<Comment></Comment></Value>
			<Value Description="Wednesday">0x0004<Comment></Comment></Value>
			<Value Description="Thursday">0x0005<Comment></Comment></Value>
			<Value Description="Friday">0x0006<Comment></Comment></Value>
			<Value Description="Saturday">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="UTC_OFFSET_FR" Pos="8" Size="2" BitFlag="true" BitPos="4">
			<Comment>00 - No additional offset, 01 - Add 15 minutes, 10 - Add 30 minutes, 11 - Add 45 minutes</Comment>
			<Value Description="No additional offset">0x0000<Comment></Comment></Value>
			<Value Description="Add 15 minutes">0x0001<Comment></Comment></Value>
			<Value Description="Add 30 minutes">0x0002<Comment></Comment></Value>
			<Value Description="Add 45 minutes">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="8" Size="2" BitFlag="true" BitPos="6">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="CSBK CRC" Pos="10" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="11" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="12" Size="4" BitFlag="true" BitPos="0">
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
		<Field Name="Unused2" Pos="13" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="C_BCAST CallTimer_Parms" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_BCAST">0x0028<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="T_EMERG_TIMER_bit0 to bit2" Pos="2" Size="3" BitFlag="true" BitPos="0">
			<Comment>0 - MS uses its Internal Emergency Timer, 1 to 510 - Call Timer for Emergency Calls. See Appendix A1, 511 - Emergency Call Timer is Infinity</Comment>
			<Data/>
		</Field>
		<Field Name="Announcement Type" Pos="2" Size="5" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="CallTimer_Parms">0x0001<Comment>Specify Call Timer Parameters</Comment></Value>
		</Field>
		<Field Name="T_EMERG_TIMER_bit3 to bit8" Pos="3" Size="6" BitFlag="true" BitPos="0">
			<Comment>0 - MS uses its Internal Emergency Timer, 1 to 510 - Call Timer for Emergency Calls. See Appendix A1, 511 - Emergency Call Timer is Infinity</Comment>
			<Data/>
		</Field>
		<Field Name="T_PACKET_TIMER_bit0 to bit1" Pos="3" Size="2" BitFlag="true" BitPos="6">
			<Comment>0 - MS uses its Internal Packet Timer, 1 to 30 - Call Timer for Packet Data. See Appendix A1, 31 - Packet Call Timer is Infinity</Comment>
			<Data/>
		</Field>
		<Field Name="Backoff Number" Pos="4" Size="4" BitFlag="true" BitPos="0">
			<Comment>No of TDMA frames MS must 'backoff' b4 sending next Random Access</Comment>
			<Data/>
		</Field>
		<Field Name="Registration" Pos="4" Size="1" BitFlag="true" BitPos="4">
			<Comment>Registration flag, which indicates whether the SU is required to register (1) or not (0)  upon entering the site (not the voted site) before allowed to initiate a service request</Comment>
			<Value Description="Registration Require">0x0001<Comment></Comment></Value>
			<Value Description="Registration NOT Require">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="T_PACKET_TIMER_bit2 to bit4" Pos="4" Size="3" BitFlag="true" BitPos="5">
			<Comment>0 - MS uses its Internal Packet Timer, 1 to 30 - Call Timer for Packet Data. See Appendix A1, 31 - Packet Call Timer is Infinity</Comment>
			<Data/>
		</Field>
		<Field Name="C_SYScode" Pos="5" Size="2" BitFlag="false">
			<Comment>the system identity code (Model+Net ID+ Site ID + PAR)</Comment>
			<Data/>
		</Field>
		<Field Name="T_MS-MS_TIMER_bit0 to bit7" Pos="6" Size="1" BitFlag="false">
			<Comment>0 - MS uses its Internal Timer for MS to MS calls, 1 to 4094 - Call Timer for MS to MS Calls. See Appendix A1, 4095 - MS to MS Call Timer is Infinity</Comment>
			<Data/>
		</Field>
		<Field Name="T_MS-MS_TIMER_bit8 to bit11" Pos="7" Size="4" BitFlag="true" BitPos="0">
			<Comment>0 - MS uses its Internal Timer for MS to MS calls, 1 to 4094 - Call Timer for MS to MS Calls. See Appendix A1, 4095 - MS to MS Call Timer is Infinity</Comment>
			<Data/>
		</Field>
		<Field Name="T_MS-LINE_TIMER_bit0 to bit 3" Pos="7" Size="4" BitFlag="true" BitPos="4">
			<Comment>A1, 4095 - Line Connected Call Timer is Infinity</Comment>
			<Data/>
		</Field>
		<Field Name="T_MS-LINE_TIMER_bit4 to bit 11" Pos="8" Size="1" BitFlag="false">
			<Comment>A1, 4095 - Line Connected Call Timer is Infinity</Comment>
			<Data/>
		</Field>
		<Field Name="CSBK CRC" Pos="9" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="10" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="11" Size="4" BitFlag="true" BitPos="0">
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
		<Field Name="Color Code" Pos="11" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="12" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="C_BCAST MassReg" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="C_BCAST">0x0028<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Protected Flag</Comment>
			<Value Description="Encryption">0x0001<Comment></Comment></Value>
			<Value Description="Non-Encryption">0x0000<Comment>No encryption implemented</Comment></Value>
		</Field>
		<Field Name="Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Determine if current block is the last and final block of the entire PDU</Comment>
			<Value Description="MoreCSBK">0x0000<Comment>current block is the MBC header of the multi block MBC PDU</Comment></Value>
			<Value Description="LastCSBK">0x0001<Comment>current block is the last block of a single block CSBK PDU</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved_bit0 to bit2" Pos="2" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Announcement Type" Pos="2" Size="5" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="MassReg">0x0004<Comment>Mass_Registration</Comment></Value>
		</Field>
		<Field Name="Reserved_bit3 to bit4" Pos="3" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reg_Window" Pos="3" Size="4" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Aloha Mask_bit0 to bit1" Pos="3" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Backoff Number" Pos="4" Size="4" BitFlag="true" BitPos="0">
			<Comment>No of TDMA frames MS must 'backoff' b4 sending next Random Access</Comment>
			<Data/>
		</Field>
		<Field Name="Registration" Pos="4" Size="1" BitFlag="true" BitPos="4">
			<Comment>Registration flag, which indicates whether the SU is required to register (1) or not (0)  upon entering the site (not the voted site) before allowed to initiate a service request</Comment>
			<Value Description="Registration Require">0x0001<Comment></Comment></Value>
			<Value Description="Registration NOT Require">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Aloha Mask_bit2 to bit4" Pos="4" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="C_SYScode" Pos="5" Size="2" BitFlag="false">
			<Comment>the system identity code (Model+Net ID+ Site ID + PAR)</Comment>
			<Data/>
		</Field>
		<Field Name="MS Individual Address" Pos="6" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CSBK CRC" Pos="7" Size="2" BitFlag="false">
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
</Protocol>
