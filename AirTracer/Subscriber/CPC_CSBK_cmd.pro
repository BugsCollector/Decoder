<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="CSBK Message">
	<ATHeader>
		<PrimaryKeyField Name="CSBK Message" Size="1">0x0005</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Acknowledge Response Unit" Size="24" SecondaryKeyField="1">
		<Comment>This is the generic response supplied by a unit to acknowledge an action when there is no other expected response.</Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates the Acknowledge Response. This is set to %100000</Comment>
			<Value Description="ACK_RSP_U">0x0020<Comment>This is the generic response supplied by a unit to acknowledge an action when there is no other expected response.</Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
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
			<Value Description="ACK_RSP_U">0x0020<Comment></Comment></Value>
		</Field>
		<Field Name="Fixed value" Pos="2" Size="2" BitFlag="true" BitPos="6">
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
		<Field Name="Blank" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
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
	<PDU Name="Call Alert Request" Size="24" SecondaryKeyField="1">
		<Comment>This transaction is used to command a radio to execute a Call Alert request operation.</Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates the Call Alert Request. This is set to %011111</Comment>
			<Value Description="CALL_ALRT_REQ">0x001F<Comment>This transaction is used to command a radio to execute a Call Alert request operation.</Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
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
		<Field Name="Blank" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
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
	<PDU Name="Emergency Alarm Request" Size="24" SecondaryKeyField="1">
		<Comment>This is a special status indication typically reserved for the "life threatening" situation.</Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bits 5-0) indicates this is the Emergency Alarm from an identified subscriber unit. This is set to the value of %100111</Comment>
			<Value Description="EMRG_ALRM_REQ">0x0027<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block " Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="EASN - Emeregency Alarm Sequence Number" Pos="2" Size="4" BitFlag="true" BitPos="0">
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
		<Field Name="Blank" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Hearder">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
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
	<PDU Name="Radio Unit Remote Monitor Command" Size="24" SecondaryKeyField="1">
		<Comment>This transaction is used to command a radio to execute a Radio Unit Remote Monitor operation.</Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates this is the radio unit remote monitor command. This is set to %011101</Comment>
			<Value Description="RAD_MON_CMD">0x001D<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
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
		<Field Name="Blank" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
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
	<PDU Name="Extended Function Command" Size="24" SecondaryKeyField="1">
		<Comment>This is the transaction addressed to an SU for an extended function.</Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Extended Function command, denoted as %100100</Comment>
			<Value Description="EXT_FNCT_CMD">0x0024<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
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
		<Field Name="Class" Pos="2" Size="1" BitFlag="false">
			<Comment>Class will determine the type of extended function to be considered.</Comment>
			<Data/>
		</Field>
		<Field Name="Operand" Pos="10" Size="1" BitFlag="false">
			<Comment>Operand will determine the actual function being addressed based upon the Class designation.</Comment>
			<Value Description="Radio Check">0x0000<Comment></Comment></Value>
			<Value Description="Radio Uninhibit">0x007E<Comment></Comment></Value>
			<Value Description="Radio Inhibit">0x007F<Comment></Comment></Value>
		</Field>
		<Field Name="Source Address" Pos="12" Size="3" BitFlag="false">
			<Comment>Arguments will supply additional processing information. This may not be required for all extended functions, and will be set to "null" (0) if not required.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="13" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="14" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="15" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="16" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="16" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="17" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="BS Downlink Activation" Size="24" SecondaryKeyField="1">
		<Comment>This is the transaction from a SU to BS for downlink activation.</Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the BS Downlink Activation command, denoted as: %111000</Comment>
			<Value Description="BS_DWN_ACT">0x0038<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="1" Size="1" BitFlag="false">
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
		<Field Name="Blank" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
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
	<PDU Name="Negative Acknowledgement Response" Size="24" SecondaryKeyField="1">
		<Comment>This is the generic response supplied by a unit for negative acknowledgement when the requested service is not supported by the target.</Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Negative Acknowledgement Response command, denoted as: %100110.</Comment>
			<Value Description="NACK_RSP_U">0x0026<Comment></Comment></Value>
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
		<Field Name="FID - Feature Set ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Type" Pos="2" Size="6" BitFlag="true" BitPos="0">
			<Comment>The 6-bit Service Type field indicates the service which is being identified. This is set equal to the appropriate "Opcode value" for the identified service</Comment>
			<Value Description="NACK_RSP_U">0x0026<Comment></Comment></Value>
		</Field>
		<Field Name="Source Type" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment>The Source Type information element has a length of 1 bit.	                                                                                     Source Type = 0 ( BS Sourced )                Source Type = 1 ( MS Sourced )</Comment>
			<Value Description="BS Sourced">0x0000<Comment></Comment></Value>
			<Value Description="MS Sourced">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="AIV - Additional Information Valid Flag" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment>The AIV flag is used to indicate when the Additional Information field is to be considered valid. This flag is set to 1 if the Additional Information field is valid. Otherwise the information in the Additional Information field is to be ignored. Note: Additional Information Valid Flag field shall always be used for the 24 bit source address. Thus the AIV flag shall always be set to 1.</Comment>
		</Field>
		<Field Name="Reason Code" Pos="3" Size="1" BitFlag="false">
			<Comment>The reason code information element has a length of 8 bits. Reason Code = 00100001 --> Ms does not suppport this service or feature.</Comment>
			<Value Description="MS does not support this service or feature.">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Additional Information (Source Address)" Pos="4" Size="3" BitFlag="false">
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
		<Field Name="Blank" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
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
	<PDU Name="Preamble CSBK" Size="24" SecondaryKeyField="1,4">
		<Comment>This preamble CSBK is normally sent before the actual CSBK to improve system reliability for features like scan or battery saver.</Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Preamble CSBK command, denoted as: %111101.</Comment>
			<Value Description="PREAMBLE_CSBK">0x003D<Comment></Comment></Value>
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
		<Field Name="Manufacturers Feature ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="2" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Group or Individual Call" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual Call">0x0000<Comment></Comment></Value>
			<Value Description="Group Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data or CSBK" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Blocks to Follow" Pos="3" Size="1" BitFlag="false">
			<Comment>Number of Preamble CSBK blocks to follow inclusive of this block.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="10" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="12" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="13" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="14" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="14" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="15" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Unit to unit Service Request" Size="24" SecondaryKeyField="1">
		<Comment>This is the service request for a voice call between two specified SUs.</Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate unit-to-unit service request, denoted as: %000100.</Comment>
			<Value Description="UU_V_REQ">0x0004<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More Block">0x0000<Comment></Comment></Value>
			<Value Description="Last Block">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="2" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1 (Low)">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2 (Medium)">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3 (High)">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="OVCM - Open Voice Call Mode" Pos="2" Size="1" BitFlag="true" BitPos="2">
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
			<Value Description="Non-secure">0x0000<Comment></Comment></Value>
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
		<Field Name="Blank" Pos="8" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="9" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="9" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="10" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Unit-to-unit Service Answer Response" Size="24" SecondaryKeyField="1">
		<Comment>This is a transaction from the target unit responding to the private call to unit answer request. It is used, to express the target USER decision for this pending voice call.</Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate unit-to-unit service request, denoted as: %000101.</Comment>
			<Value Description="UU_ANS_RSP">0x0005<Comment></Comment></Value>
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
		<Field Name="FID - Feature Set ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="3" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1 (Low)">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2 (Medium)">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3 (High)">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="OVCM - Open Voice Call Mode" Pos="3" Size="1" BitFlag="true" BitPos="2">
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
			<Value Description="Non-secure">0x0000<Comment></Comment></Value>
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
		<Field Name="Blank" Pos="8" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="9" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="9" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="10" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="System Channel Status CSBK" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="System Channel Status CSBK">0x003E<Comment></Comment></Value>
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
		<Field Name="FID - Feature Set ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Rest Channel ID" Pos="2" Size="5" BitFlag="true" BitPos="0">
			<Comment>Indicates the current active rest channel of the CPC system</Comment>
			<Data/>
		</Field>
		<Field Name="Slot Number" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment>indicates the TDMA timeslot</Comment>
			<Value Description="Slot 1">0x0000<Comment></Comment></Value>
			<Value Description="Slot 2">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="First/Last" Pos="2" Size="2" BitFlag="true" BitPos="6">
			<Comment>Indicates single or multiple CSBK channel status bursts. If multiple CSBK channel status bursts, it also indicates whether it is the first, middle or last CSBK channel status burst</Comment>
			<Value Description="Cont">0x0000<Comment></Comment></Value>
			<Value Description="Last">0x0001<Comment></Comment></Value>
			<Value Description="First and Cont">0x0002<Comment></Comment></Value>
			<Value Description="Single Burst">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Ch8 status" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch7 status" Pos="3" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch6 status" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch5 status" Pos="3" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch4 status" Pos="3" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch3 status" Pos="3" Size="1" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch2 status" Pos="3" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Ch1 status" Pos="3" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="inactive">0x0000<Comment></Comment></Value>
			<Value Description="active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="First active TGID" Pos="4" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Second active TGID" Pos="5" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Third active TGID" Pos="6" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Fourth active TGID" Pos="7" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Fifth active TGID" Pos="8" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Sixth active TGID" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="10" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="11" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="12" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Data Header">0x0001<Comment></Comment></Value>
			<Value Description="Data Terminator">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="12" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="13" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="CPC Preamble CSBK" Size="24" SecondaryKeyField="1,4">
		<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Preamble CSBK command, denoted as: %111101.</Comment>
			<Value Description="PREAMBLE_CSBK">0x003D<Comment></Comment></Value>
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
		<Field Name="Manufacturer Feature ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved1" Pos="2" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Emergency Bit" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="Non-Emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Group or Individual Call" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual Call">0x0000<Comment></Comment></Value>
			<Value Description="Group Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data or CSBK" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Blocks to Follow" Pos="3" Size="1" BitFlag="false">
			<Comment>Number of Preamble CSBK blocks to follow inclusive of this block.</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="4" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="5" Size="2" BitFlag="false">
			<Comment>This field identifies the group or individual subscriber unit which is the target of the transaction. This is a 8-bit vector which uniquely identifies a talkgroup or a 16-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Id of Rest Channel" Pos="7" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved3" Pos="7" Size="3" BitFlag="true" BitPos="5">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="8" Size="2" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 16-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
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
	<PDU Name="Inbound LCP Preamble CSBK" Size="25" SecondaryKeyField="1,4,6">
		<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Preamble CSBK command, denoted as: %111101.</Comment>
			<Value Description="PREAMBLE_CSBK">0x003D<Comment></Comment></Value>
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
		<Field Name="Manufacturer Feature ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved1" Pos="2" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Linked Capacity Plus Bit" Pos="2" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="Linked Capacity Plus">0x0001<Comment></Comment></Value>
			<Value Description="Non-LCP">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Bit" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="Non-Emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Group or Individual Call" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual Call">0x0000<Comment></Comment></Value>
			<Value Description="Group Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data or CSBK" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Blocks to Follow" Pos="3" Size="1" BitFlag="false">
			<Comment>Number of Preamble CSBK blocks to follow inclusive of this block.</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="4" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="5" Size="2" BitFlag="false">
			<Comment>This field identifies the group or individual subscriber unit which is the target of the transaction. This is a 8-bit vector which uniquely identifies a talkgroup or a 16-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Id of Rest Channel" Pos="7" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved3" Pos="7" Size="3" BitFlag="true" BitPos="5">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="8" Size="2" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 16-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
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
	<PDU Name="Backward Channel Command" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates the Backward Channel Command.This is set to %01,1110</Comment>
			<Value Description="Backward Channel Command">0x001E<Comment></Comment></Value>
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
		<Field Name="Backward Channel Opcode" Pos="2" Size="5" BitFlag="true" BitPos="0">
			<Comment>Data Over Voice Interrupt is set to %0,0100.</Comment>
			<Value Description="Voice Interrupt">0x0001<Comment></Comment></Value>
			<Value Description="Remote Voice Dekey">0x0002<Comment></Comment></Value>
			<Value Description="Emergency Voice Interrupt">0x0003<Comment></Comment></Value>
			<Value Description="Data Over Voice Interrupt">0x0004<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="2" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved01" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
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
		<Field Name="BLANK" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="9" Size="5" BitFlag="false">
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
	<PDU Name="Scheduled Window Announcement" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Window Announcement CSBK command, denoted as: %101001.</Comment>
			<Value Description="Scheduled Window Announcement">0x0029<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Rest Channel" Pos="2" Size="1" BitFlag="false">
			<Comment>Rest Channel(Only for cap plus)</Comment>
			<Data/>
		</Field>
		<Field Name="Announcement SUID" Pos="3" Size="2" BitFlag="false">
			<Comment>This field indicates subscriber ID of radio which will transmit Data on next window.</Comment>
			<Data/>
		</Field>
		<Field Name="Announcement Window Number" Pos="4" Size="1" BitFlag="false">
			<Comment>This field indicates window number of next window.</Comment>
			<Data/>
		</Field>
		<Field Name="Announcement Data Frame" Pos="5" Size="4" BitFlag="true" BitPos="0">
			<Comment>This field indicates the data frame to which the next window belongs.</Comment>
			<Data/>
		</Field>
		<Field Name="Grant Data Frame" Pos="5" Size="4" BitFlag="true" BitPos="4">
			<Comment>The first data frame where the granted window will start from.</Comment>
			<Data/>
		</Field>
		<Field Name="Grant Window Number" Pos="6" Size="1" BitFlag="false">
			<Comment>The window number that was granted to the requesting radio.</Comment>
			<Value Description="Announcement Only">0x00FC<Comment></Comment></Value>
			<Value Description="Not Able Allocate Periodic Window">0x00FD<Comment>Not able to allocate any more periodic update Requests.</Comment></Value>
			<Value Description="No Able Allocate One Time Window">0x00FE<Comment>Not able to allocate any more one time update Requests or available window is more than 1 min away.</Comment></Value>
			<Value Description="No Available One Time or Periodic Window">0x00FF<Comment>No more windows available for one time or periodic requests.</Comment></Value>
		</Field>
		<Field Name="Grant Abbreviated SUID" Pos="7" Size="2" BitFlag="false">
			<Comment>Abbreviated Subscriber ID (16 bits) of radio that made the request for window.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="9" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="10" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="10" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="11" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Window Request" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Window Request CSBK command, denoted as: %101000.</Comment>
			<Value Description="CSBK_WIN_REQ">0x0028<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non Protected">0x0000<Comment></Comment></Value>
			<Value Description="Protected">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard ID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary ID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Source ID" Pos="2" Size="3" BitFlag="false">
			<Comment>Subscriber ID of radio making window request.</Comment>
			<Data/>
		</Field>
		<Field Name="Request Period" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates if the request is for one time udpate (0x00), update rate (0x01-0x05) or de-allocation(0x0F).</Comment>
			<Value Description="De-allocation">0x000F<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved_1" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved_2" Pos="4" Size="4" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="5" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="6" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="7" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="7" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="8" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Window Grant" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Window Grant Only CSBK command, denoted as: %101010.</Comment>
			<Value Description="Scheduled Window Grant">0x002A<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Rest Channel" Pos="2" Size="1" BitFlag="false">
			<Comment>Rest Channel(Only for cap plus)</Comment>
			<Data/>
		</Field>
		<Field Name="Grant SUID" Pos="3" Size="2" BitFlag="false">
			<Comment>Subscriber ID of radio that made the request for window.</Comment>
			<Data/>
		</Field>
		<Field Name="Grant Window Number" Pos="4" Size="1" BitFlag="false">
			<Comment>The window number that was granted to the requesting radio.</Comment>
			<Data/>
		</Field>
		<Field Name="Grant Data Frame" Pos="5" Size="4" BitFlag="true" BitPos="0">
			<Comment>The first data frame where the granted window will start from.</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved_1" Pos="5" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved_2" Pos="6" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="7" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="8" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="9" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="9" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="10" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Enhanced System Status CSBK" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Enhanced System Status CSBK">0x003C<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Rest Channel ID" Pos="2" Size="5" BitFlag="true" BitPos="0">
			<Comment>Indicates the current active rest channel of the CPC system</Comment>
			<Data/>
		</Field>
		<Field Name="Slot Number" Pos="2" Size="1" BitFlag="true" BitPos="1">
			<Comment>indicates the TDMA timeslot</Comment>
			<Value Description="Slot 1">0x0000<Comment></Comment></Value>
			<Value Description="Slot 2">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="First/Last" Pos="2" Size="2" BitFlag="true" BitPos="2">
			<Comment>Indicates single or multiple CSBK channel status bursts. If multiple CSBK channel status bursts, it also indicates whether it is the first, middle or last CSBK channel status burst</Comment>
			<Value Description="Cont">0x0000<Comment></Comment></Value>
			<Value Description="Last">0x0001<Comment></Comment></Value>
			<Value Description="First and Cont">0x0002<Comment></Comment></Value>
			<Value Description="Single Burst">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Byte 0" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Byte 1" Pos="4" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Byte 2" Pos="5" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Byte 3" Pos="6" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Byte 4" Pos="7" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Byte 5" Pos="8" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Byte 6" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="10" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="11" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="12" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="12" Size="4" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="13" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
    <PDU Name="CSBK Data ARS" Size="24" SecondaryKeyField="1">
		<Comment>This is the generic response supplied by a unit to acknowledge an action when there is no other expected response.</Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates the Acknowledge Response. This is set to %100000</Comment>
			<Value Description="CSBK_DATA_LRRP">0x0008<Comment>This is the generic response supplied by a unit to acknowledge an action when there is no other expected response.</Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
			<Value Description="CSBK Data MFID">0x0020<Comment></Comment></Value>
		</Field>
		<Field Name="Target ID" Pos="2" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source ID" Pos="3" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="PDU Type" Pos="4" Size="4" BitFlag="true" BitPos="0">
			<Comment>The 6-bit Service Type field indicates the service which is being identified. This is set equal to the appropriate "Opcode value" for the identified service.</Comment>
			<Data/>
		</Field>
		<Field Name="Control" Pos="4" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Priority" Pos="4" Size="1" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="ACK" Pos="4" Size="1" BitFlag="true" BitPos="10">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Ext" Pos="4" Size="1" BitFlag="true" BitPos="11">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Message Option Field" Pos="7" Size="1" BitFlag="false">
			<Comment></Comment>
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
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
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
	<PDU Name="CSBK Data For Location Report" Size="24" SecondaryKeyField="1,8">
		<Comment></Comment>
		<Field Name="CSBK_DATA_LRRP" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="CSBK Data LRRP">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="Non-Protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
			<Value Description="CSBK Data MFID">0x0020<Comment></Comment></Value>
		</Field>
		<Field Name="Request ID" Pos="5" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Latitude Low" Pos="5" Size="1" BitFlag="true" BitPos="3">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Longitude Low" Pos="5" Size="2" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Format" Pos="5" Size="2" BitFlag="true" BitPos="6">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="Report with Location Coordinates">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Source ID" Pos="7" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Truncated Longitude High" Pos="9" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Truncated Latitude High" Pos="11" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CRC" Pos="17" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Blank" Pos="18" Size="6" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Type" Pos="19" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="19" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
		</Field>
		<Field Name="Unused" Pos="20" Size="5" BitFlag="false">
			<Comment></Comment>
		</Field>
	</PDU>
	<PDU Name="CSBK Data with Info Time and Speed" Size="24" SecondaryKeyField="1,8">
		<Comment></Comment>
		<Field Name="CSBK_DATA_LRRP" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="CSBK_DATA_LRRP">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non-Protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
			<Value Description="CSBK Data MFID">0x0020<Comment></Comment></Value>
		</Field>
		<Field Name="Request ID" Pos="2" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Latitude Low" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Longitude Low" Pos="2" Size="2" BitFlag="true" BitPos="6">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Format" Pos="2" Size="2" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="Report with Location Coordinaates, Info-Time and Speed">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Info Time, Speed Horizontal (Scheduled Channel)" Pos="11" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Truncated Longitude High" Pos="17" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Truncated Latitude High" Pos="18" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="19" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Blank" Pos="20" Size="6" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Type" Pos="21" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
		</Field>
		<Field Name="Color Code" Pos="21" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
		</Field>
		<Field Name="Unused" Pos="22" Size="5" BitFlag="false">
			<Comment></Comment>
		</Field>
	</PDU>
	<PDU Name="CSBK Data with Error Response" Size="24" SecondaryKeyField="1,8">
		<Comment></Comment>
		<Field Name="CSBK_DATA_LRRP" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="CSBK_DATA_LRRP">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="Protected Flag">0x0001<Comment></Comment></Value>
			<Value Description="Non-Protected Flag">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
			<Value Description="CSBK Data MFID">0x0020<Comment></Comment></Value>
		</Field>
		<Field Name="Request ID" Pos="2" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Truncated Time" Pos="2" Size="1" BitFlag="true" BitPos="1">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="RSV" Pos="2" Size="2" BitFlag="true" BitPos="2">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Format" Pos="2" Size="2" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="Location Report with Error Response">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Source ID" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Truncated Longitude High" Pos="7" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Truncated Latitude High" Pos="9" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CRC" Pos="11" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Blank" Pos="17" Size="6" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Type" Pos="18" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="18" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
		</Field>
		<Field Name="Unused" Pos="19" Size="5" BitFlag="false">
			<Comment></Comment>
		</Field>
	</PDU>
	<PDU Name="CSBK Data Other LRRP Response" Size="24" SecondaryKeyField="1,8">
		<Comment></Comment>
		<Field Name="CSBK_DATA_LRRP" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="CSBK_DATA_LRRP">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non-Protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
			<Value Description="CSBK Data MFID">0x0020<Comment></Comment></Value>
		</Field>
		<Field Name="Request ID" Pos="2" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="RSV" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Other Type" Pos="2" Size="2" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="Triggered location answer">0x0000<Comment></Comment></Value>
			<Value Description="Triggered location stop answer">0x0001<Comment></Comment></Value>
			<Value Description="Location protocol report">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Format" Pos="2" Size="2" BitFlag="true" BitPos="6">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="Other LRRP Response">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Source ID" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Result Code/Protocol Version" Pos="7" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="9" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="11" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Blank" Pos="17" Size="6" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Type" Pos="18" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="18" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
		</Field>
		<Field Name="Unused" Pos="19" Size="5" BitFlag="false">
			<Comment></Comment>
		</Field>
	</PDU>
	<PDU Name="CSBK Data From XCMP" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="CSBK_DATA_XCMP" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="CSBK DATA XCMP">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non-Protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
			<Value Description="CSBK Data MFID">0x0020<Comment></Comment></Value>
		</Field>
		<Field Name="DPID" Pos="2" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="PC (CPS Provisioned)">0x0000<Comment></Comment></Value>
			<Value Description="Option Board">0x0001<Comment></Comment></Value>
			<Value Description="Non-IP Peripheral">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="SPID" Pos="2" Size="3" BitFlag="true" BitPos="3">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="PC">0x0000<Comment></Comment></Value>
			<Value Description="Option Board">0x0001<Comment></Comment></Value>
			<Value Description="Non IP Peripheral">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Format" Pos="2" Size="2" BitFlag="true" BitPos="6">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="No source and destination SU ID">0x0000<Comment></Comment></Value>
			<Value Description="Source SU ID only">0x0001<Comment></Comment></Value>
			<Value Description="Destination SU ID only">0x0002<Comment></Comment></Value>
			<Value Description="Both Source and Destination SU ID">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Source ID" Pos="9" Size="7" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="11" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Blank" Pos="17" Size="6" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Type" Pos="18" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="18" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
		</Field>
		<Field Name="Unused" Pos="19" Size="5" BitFlag="false">
			<Comment></Comment>
		</Field>
	</PDU>
	<PDU Name="CSBK Data XCMP to XCMP" Size="24" SecondaryKeyField="4">
		<Comment></Comment>
		<Field Name="CSBK_DATA_XCMP2XCMP" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non Protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
			<Value Description="CSBK Data MFID">0x0020<Comment></Comment></Value>
		</Field>
		<Field Name="Data Payload" Pos="2" Size="8" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="3" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="4" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="5" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="5" Size="4" BitFlag="true" BitPos="1">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="6" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
