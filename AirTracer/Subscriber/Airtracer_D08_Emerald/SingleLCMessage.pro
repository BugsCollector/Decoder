<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Single LC Message">
	<ATHeader>
		<PrimaryKeyField Name="Single LC Message" Size="1">0x0012</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name=" Enhanced Privacy" Size="2" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Key ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="1" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Opcode" Pos="1" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Value Description="Enhanced Privacy">0x0001<Comment></Comment></Value>
			<Value Description="AES Privacy">0x0005<Comment></Comment></Value>	
		</Field>
	</PDU>
	<PDU Name="BR Delay" Size="2" SecondaryKeyField="4">
		<Comment></Comment>
		<Field Name="BR Delay" Pos="0" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Single Site (60ms)">0x0002<Comment></Comment></Value>
			<Value Description="Multi Site (Immediate)">0x0000<Comment></Comment></Value>
			<Value Description="Single Site (120ms)">0x0004<Comment></Comment></Value>
			<Value Description="Multi Site (180ms)">0x0006<Comment></Comment></Value>
			<Value Description="Multi Site (240ms)">0x0008<Comment></Comment></Value>
			<Value Description="Multi Site (360ms)">0x000C<Comment></Comment></Value>
		</Field>
		<Field Name="CRC" Pos="0" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="1" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Opcode" Pos="1" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Value Description="BR Delay">0x0003<Comment></Comment></Value>
		</Field>
	</PDU>
</Protocol>
