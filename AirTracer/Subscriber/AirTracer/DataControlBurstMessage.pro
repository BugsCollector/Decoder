<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Data Control Burst Messages">
	<ATHeader>
		<PrimaryKeyField Name="Data Control Burst Messages" Size="1">0x000B</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Voice Header with LC" Size="20" SecondaryKeyField="16">
		<Comment>This indicates the user of this channel for group voice traffic. This is used on both inbound and outbound messages</Comment>
		<Field Name="LC Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>This indicates the Link Control Format opcode.This has values of 0 through 31 and is set appropriately for the different commands or information and shall be determined by the manufacturer since this is a non-standard format.</Comment>
			<Value Description="Group Voice Channel User">0x0000<Comment></Comment></Value>
			<Value Description="Unit to Unit Voice Channel User">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="SF - MFID Format" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Implicit / Explicit MFID Format</Comment>
			<Value Description="Explixit MFID Format">0x0000<Comment></Comment></Value>
			<Value Description="Implicit MFID Format">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="P - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates that the information is protected or not.</Comment>
			<Value Description="Not Protected">0x0000<Comment></Comment></Value>
			<Value Description="Encrypted">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="MFID - Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>This is the Manufacturers ID.</Comment>
			<Data/>
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
			<Comment></Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved01" Pos="2" Size="2" BitFlag="true" BitPos="4">
			<Comment>Reserved for future used</Comment>
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
		<Field Name="Unused" Pos="14" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Voice Terminator with LC" Size="20" SecondaryKeyField="16">
		<Comment>This indicates the user of this channel for unit to unit voice traffic. This is used on both inbound and outbound messages.</Comment>
		<Field Name="LC Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>This indicates the Link Control Format opcode.This has values of 0 through 31 and is set appropriately for the different commands or information and shall be determined by the manufacturer since this is a non-standard format.</Comment>
			<Value Description="Group Voice Channel User">0x0000<Comment></Comment></Value>
			<Value Description="Unit to Unit Voice Channel User">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="SF - MFID Format" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Implicit / Explicit MFID Format</Comment>
			<Value Description="Explicit MFID Format">0x0000<Comment></Comment></Value>
			<Value Description="Implicit MFID Format">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="P - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates that the information is protected or not.</Comment>
			<Value Description="Not Encrypted">0x0000<Comment></Comment></Value>
			<Value Description="Encrypted">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="MFID - Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>This is the Manufacturers ID.</Comment>
			<Data/>
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
			<Comment></Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved01" Pos="2" Size="2" BitFlag="true" BitPos="4">
			<Comment>Reserved for future Used</Comment>
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
		<Field Name="Unused" Pos="13" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Idle Burst" Size="20" SecondaryKeyField="16">
		<Comment></Comment>
		<Field Name="LC Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>This indicates the Link Control Format opcode.This has values of 0 through 31 and is set appropriately for the different commands or information and shall be determined by the manufacturer since this is a non-standard format.</Comment>
			<Value Description="Group Voice Channel User">0x0000<Comment></Comment></Value>
			<Value Description="Unit to Unit Voice Channel User">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="SF - MFID Format" Pos="0" Size="1" BitFlag="true" BitPos="1">
			<Comment>Implicit / Explicit MFID Format</Comment>
			<Value Description="Explixit MFID Format">0x0000<Comment></Comment></Value>
			<Value Description="Implixit MFID Format">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="P - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>This indicates that the information is protected or not.</Comment>
			<Value Description="Not Protected">0x0000<Comment></Comment></Value>
			<Value Description="Encrypted">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="MFID - Manufacturer ID" Pos="1" Size="1" BitFlag="false">
			<Comment>This is the Manufacturers ID.</Comment>
			<Data/>
		</Field>
		<Field Name="Priority Level" Pos="2" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Open Voice Call Mode" Pos="2" Size="1" BitFlag="true" BitPos="1">
			<Comment>Open Voice Call Mode</Comment>
			<Value Description="Non-OVCM Call">0x0000<Comment></Comment></Value>
			<Value Description="OVCM Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="2" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved01" Pos="2" Size="2" BitFlag="true" BitPos="3">
			<Comment>Reserved for future use</Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="2" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="Clear">0x0000<Comment></Comment></Value>
			<Value Description="Secure">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="2" Size="1" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Value Description="Non-emergency Service">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Group/Target Address" Pos="3" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit group identifier which uniquely defines a group within a System or individual subscriber unit which is the target of the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="5" Size="7" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Invalid Checksum" Pos="5" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Pass">0x0000<Comment></Comment></Value>
			<Value Description="Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved02" Pos="6" Size="8" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="7" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="7" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="8" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
