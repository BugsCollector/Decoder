<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Link Control Message">
	<ATHeader>
		<PrimaryKeyField Name="Link Control Message" Size="1">0x0003</PrimaryKeyField>
	</ATHeader>
	<Comment>The following are the defined LC Messages for explicit MFID formats.</Comment>
	<PDU Name="LC: Group Voice Channel User" Size="12" SecondaryKeyField="1">
		<Comment>This indicates the user of this channel for group voice traffic. This is used on both inbound and outbound messages</Comment>
		<Field Name="LC Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>This indicates the Link Control Format opcode.This has values of 0 through 31 and is set appropriately for the different commands or information and shall be determined by the manufacturer since this is a non-standard format.</Comment>
			<Value Description="Group Voice Channel User Opcode">0X00<Comment>This indicates the user of this channel for group voice traffic. This is used on
both inbound and outbound messages.</Comment></Value>
		</Field>
		<Field Name="SF - MFID Format" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Implicit / Explicit MFID Format</Comment>
			<Value Description="Explicit">0X00<Comment>This is equal to "0" for Explicit [MFID] Format.</Comment></Value>
		</Field>
		<Field Name="P - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates that the information is protected or not.</Comment>
			<Value Description="Not Encrypted">0X00<Comment></Comment></Value>
			<Value Description="Encrypted">0X01<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
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
			<Comment>Reserved for Future Used</Comment>
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
		<Field Name="Group Address" Pos="4" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit group identifier which uniquely defines a group within a System.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="6" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="8" Size="7" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Invalid Checksum" Pos="8" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Pass">0x0000<Comment></Comment></Value>
			<Value Description="Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="9" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="LC: Unit to Unit Voice Channel User" Size="12" SecondaryKeyField="1">
		<Comment>This indicates the user of this channel for unit to unit voice traffic. This is used  on both inbound and outbound messages.</Comment>
		<Field Name="LC Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>This indicates the Link Control Format opcode.This has values of 0 through 31 and is set appropriately for the different commands or information and shall be determined by the manufacturer since this is a non-standard format.</Comment>
			<Value Description="Unit to Unit Voice Channel User Opcode">0x0003<Comment>The LCO field (octet 0, bits 5-0) indicates this as a Unit to Unit Voice Channel User, by
assuming the value of %000011 and SF = 0.</Comment></Value>
		</Field>
		<Field Name="SF - MFID Format" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Implicit / Explicit MFID Format</Comment>
			<Value Description="Explicit">0X00<Comment>This is equal to "0" for Explicit [MFID] Format.</Comment></Value>
		</Field>
		<Field Name="P - Protected Flag" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates that the information is protected or not.</Comment>
			<Value Description="Not Encrypted">0X00<Comment>A "0" shall indicate the LC is not encrypted.</Comment></Value>
			<Value Description="Encrypted">0X01<Comment>A "1" shall indicate the message is protected and Octets 2 through 8 are
encrypted, shown as shaded area</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>Manufacturers ID</Comment>
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
			<Comment>Reserved for Future Used</Comment>
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
		<Field Name="Target Address" Pos="3" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="6" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="7" Size="7" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Invalid Checksum" Pos="7" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Pass">0x0000<Comment></Comment></Value>
			<Value Description="Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
