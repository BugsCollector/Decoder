<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Neptune Short Link Control Messages">
	<ATHeader>
		<PrimaryKeyField Name="Neptune Short Link Control Messages" Size="1">0x0006</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Control Channel Short LC" Size="8" SecondaryKeyField="8">
		<Comment></Comment>
		<Field Name="Network ID (MSB)" Pos="0" Size="1" BitFlag="false">
			<Comment>4095 Networks</Comment>
			<Data/>
		</Field>
		<Field Name="Site ID (MSB)" Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>255 Sites</Comment>
			<Data/>
		</Field>
		<Field Name="Network ID (LSB)" Pos="1" Size="4" BitFlag="true" BitPos="4">
			<Comment>4095 Networks</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="2" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Access Attempt Level" Pos="2" Size="2" BitFlag="true" BitPos="2">
			<Comment>2 Bits</Comment>
			<Data/>
		</Field>
		<Field Name="Site ID (LSB)" Pos="2" Size="4" BitFlag="true" BitPos="4">
			<Comment>255 Sites</Comment>
			<Data/>
		</Field>
		<Field Name="padding" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment>4 Bits padding</Comment>
			<Data/>
		</Field>
		<Field Name="SLC Opcode" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment>SLCO, Shall be set to 1010</Comment>
			<Value Description="NEP_CC_SLC">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="4" Size="4" BitFlag="false">
			<Comment>4 Bytes</Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Developmentatl version of Control Channel Short LC(thru 1.14)" Size="8" SecondaryKeyField="8">
		<Comment></Comment>
		<Field Name="Network ID (MSB)" Pos="0" Size="1" BitFlag="false">
			<Comment>4095 Networks</Comment>
			<Data/>
		</Field>
		<Field Name="Site ID (MSB)" Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>255 Sites</Comment>
			<Data/>
		</Field>
		<Field Name="Network ID (LSB)" Pos="1" Size="4" BitFlag="true" BitPos="4">
			<Comment>4095 Networks</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="2" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Access Attempt Level" Pos="2" Size="2" BitFlag="true" BitPos="2">
			<Comment>2 Bits</Comment>
			<Data/>
		</Field>
		<Field Name="Site ID (LSB)" Pos="2" Size="4" BitFlag="true" BitPos="4">
			<Comment>255 Sites</Comment>
			<Data/>
		</Field>
		<Field Name="padding" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment>4 Bits padding</Comment>
			<Data/>
		</Field>
		<Field Name="SLC Opcode" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment>SLCO, Shall be set to 1000</Comment>
			<Value Description="NEP_DEV_CC_SLC">0x0008<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="4" Size="4" BitFlag="false">
			<Comment>4 Bytes</Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Trunk Channel Short LC" Size="8" SecondaryKeyField="7">
		<Comment></Comment>
		<Field Name="Network ID (HSB)" Pos="0" Size="1" BitFlag="false">
			<Comment>4095 Networks</Comment>
			<Data/>
		</Field>
		<Field Name="Site ID (HSB)" Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>255 Sites</Comment>
			<Data/>
		</Field>
		<Field Name="Network ID (LSB)" Pos="1" Size="4" BitFlag="true" BitPos="4">
			<Comment>4095 Networks</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="2" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Site ID (LSB)" Pos="2" Size="4" BitFlag="true" BitPos="4">
			<Comment>255 Sites</Comment>
			<Data/>
		</Field>
		<Field Name="padding" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment>4 Bits padding</Comment>
			<Data/>
		</Field>
		<Field Name="SLC Opcode" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment>SLCO, Shall be set to 1001</Comment>
			<Value Description="NEP_TC_SLC">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="4" Size="4" BitFlag="false">
			<Comment>4 Bytes</Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Control Channel PM Short LC" Size="8" SecondaryKeyField="7">
		<Comment></Comment>
		<Field Name="Priority TGID (MSB)" Pos="0" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Time Slot" Pos="2" Size="1" BitFlag="true" BitPos="1">
			<Comment>1 Bit</Comment>
			<Data/>
		</Field>
		<Field Name="Repeater ID" Pos="2" Size="4" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Priority TGID (LSB)" Pos="2" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="padding" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment>4 Bits padding</Comment>
			<Data/>
		</Field>
		<Field Name="CC PMSLC Opcode" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment>SLCO, Shall be set to 1110</Comment>
			<Value Description="NEP_CC_PM_SLC">0x000E<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="4" Size="4" BitFlag="false">
			<Comment>4 Bytes</Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Trunk Channel PM Short LC" Size="8" SecondaryKeyField="7">
		<Comment></Comment>
		<Field Name="Priority TGID (MSB)" Pos="0" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="2" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Time Slot" Pos="2" Size="1" BitFlag="true" BitPos="1">
			<Comment>1 Bit</Comment>
			<Data/>
		</Field>
		<Field Name="Repeater ID" Pos="2" Size="4" BitFlag="true" BitPos="2">
			<Comment>4 Bits</Comment>
			<Data/>
		</Field>
		<Field Name="Priority TGID (LSB)" Pos="2" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="padding" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment>4 Bits padding</Comment>
			<Data/>
		</Field>
		<Field Name="TC PMSLC Opcode" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment>SLCO, Shall be set to 1111</Comment>
			<Value Description="NEP_TC_PM_SLC">0x000F<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="4" Size="4" BitFlag="false">
			<Comment>4 Bytes</Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Unknown Short LC" Size="8" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Unknown Fields" Pos="0" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="padding" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment>4 Bits padding</Comment>
			<Data/>
		</Field>
		<Field Name="SLC Opcode" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Data/>
		</Field>
		<Field Name="Pad" Pos="4" Size="4" BitFlag="false">
			<Comment>4 Bytes</Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
