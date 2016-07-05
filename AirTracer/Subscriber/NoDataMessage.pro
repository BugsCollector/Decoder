<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="No-data Message">
	<ATHeader>
		<PrimaryKeyField Name="No-data Message" Size="1">0x0000</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Sync Pattern Undetect" Size="1" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Status" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Sync Pattern Undetect">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Carrier Detect" Size="1" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Status" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Carrier Detect">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Carrier Undetect" Size="1" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Status" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Carrier Undetect">0x0002<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Carrier Detect S1" Size="1" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Status" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Carrier Detect S1">0x0003<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Carrier Detect S2" Size="1" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Status" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Carrier Detect S2">0x0004<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Carrier Undetect S1" Size="1" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Status" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Carrier Undetect S1">0x0005<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Carrier Undetect S2" Size="1" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Status" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Carrier Undetect S2">0x0006<Comment></Comment></Value>
		</Field>
	</PDU>
</Protocol>
