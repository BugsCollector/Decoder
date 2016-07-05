<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Data Control Burst Messages">
	<ATHeader>
		<PrimaryKeyField Name="Data Control Burst Messages" Size="1">0x000B</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Voice Header with LC" Size="24" SecondaryKeyField="1,16">
		<Comment>This indicates the user of this channel for group voice traffic. This is used on both inbound and outbound messages</Comment>
		<Field Name="FLCO - Full Link Control Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>This indicates the Link Control Format opcode.This has values of 0 through 31 and is set appropriately for the different commands or information and shall be determined by the manufacturer since this is a non-standard format.</Comment>
			<Value Description="Group Voice Channel User">0x0000<Comment></Comment></Value>
			<Value Description="Unit to Unit Voice Channel User">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="R - Reserved" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="PF - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates that the information is protected or not.</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="1" Size="1" BitFlag="false">
			<Comment>This is the Manufacturers ID.</Comment>
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
		<Field Name="Phone Call" Pos="2" Size="1" BitFlag="true" BitPos="2">
			<Comment>Phone Call</Comment>
			<Value Description="Non-Phone Call">0x0000<Comment></Comment></Value>
			<Value Description="Phone Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="TIC" Pos="2" Size="2" BitFlag="true" BitPos="4">
			<Comment>Transmit Interrupt Control</Comment>
			<Value Description="Non TI Frame">0x0000<Comment></Comment></Value>
			<Value Description="TI Frame">0x0002<Comment></Comment></Value>
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
		<Field Name="Group/Target Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit group identifier which uniquely defines a group within a System or individual subscriber unit which is the target of the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="6" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="9" Size="7" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Invalid Cheksum" Pos="9" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Pass">0x0000<Comment></Comment></Value>
			<Value Description="Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved02" Pos="12" Size="8" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice LC Header">0x0001<Comment></Comment></Value>
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
	<PDU Name="Voice Terminator with LC" Size="24" SecondaryKeyField="1,16">
		<Comment>This indicates the user of this channel for unit to unit voice traffic. This is used on both inbound and outbound messages.</Comment>
		<Field Name="FLCO - Full Link Control  Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>This indicates the Link Control Format opcode.This has values of 0 through 31 and is set appropriately for the different commands or information and shall be determined by the manufacturer since this is a non-standard format.</Comment>
			<Value Description="Group Voice Channel User">0x0000<Comment></Comment></Value>
			<Value Description="Unit to Unit Voice Channel User">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="R - Reserved" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="PF - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates that the information is protected or not.</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="1" Size="1" BitFlag="false">
			<Comment>This is the Manufacturers ID.</Comment>
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
		<Field Name="Phone Call" Pos="2" Size="1" BitFlag="true" BitPos="2">
			<Comment>Phone Call</Comment>
			<Value Description="Non-Phone Call">0x0000<Comment></Comment></Value>
			<Value Description="Phone Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="TIC" Pos="2" Size="2" BitFlag="true" BitPos="4">
			<Comment>Transmit Interrupt Control</Comment>
			<Value Description="Non TI Frame">0x0000<Comment></Comment></Value>
			<Value Description="TI Frame">0x0002<Comment></Comment></Value>
			<Value Description="TI ACK">0x0001<Comment></Comment></Value>
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
		<Field Name="Group/Target Address" Pos="3" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit group identifier which uniquely defines a group within a System or individual subscriber unit which is the target of the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="6" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="9" Size="7" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Invalid Checksum" Pos="9" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Pass">0x0000<Comment></Comment></Value>
			<Value Description="Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved02" Pos="10" Size="8" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="12" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="12" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="13" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Capacity Plus Voice Header with LC" Size="24" SecondaryKeyField="1,17">
		<Comment></Comment>
		<Field Name="FLCO - Full Link Control Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="CP_Grp_V_Ch_Usr">0x0004<Comment></Comment></Value>
			<Value Description="CP_UU_V_Ch_Usr">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="R - Reserved" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="PF - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates that the information is protected or not.</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="1" Size="1" BitFlag="false">
			<Comment>This is the Manufacturers ID.</Comment>
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
		<Field Name="Phone Call" Pos="2" Size="1" BitFlag="true" BitPos="2">
			<Comment>Phone Call</Comment>
			<Value Description="Non-Phone Call">0x0000<Comment></Comment></Value>
			<Value Description="Phone Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="2" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="TIC" Pos="2" Size="2" BitFlag="true" BitPos="4">
			<Comment>Reserved for future Used</Comment>
			<Value Description="Non TI Frame">0x0000<Comment></Comment></Value>
			<Value Description="TI Frame">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
		</Field>
		<Field Name="Emergency" Pos="2" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Non-emergency Service">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Group/Target Address" Pos="3" Size="3" BitFlag="false">
			<Comment>This field defines the 8-bit group identifier which uniquely defines a group within a CPC system or 16-bit individual subscriber unit ID which is the target of the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Rest Channel" Pos="4" Size="1" BitFlag="false">
			<Comment>Current active CPC rest channel</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="5" Size="2" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="6" Size="7" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Invalid Checksum" Pos="6" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Pass">0x0000<Comment></Comment></Value>
			<Value Description="Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved02" Pos="7" Size="8" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Voice LC Header">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="9" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
