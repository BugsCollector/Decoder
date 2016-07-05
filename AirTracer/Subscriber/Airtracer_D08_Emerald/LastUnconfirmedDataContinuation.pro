<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Data Control Burst Message">
	<ATHeader>
		<PrimaryKeyField Name="Data Control Burst Message" Size="1">0x000d</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Last Unconfirmed Data Continuation" Size="24" SecondaryKeyField="4">
		<Comment></Comment>
		<Field Name="User Data" Pos="0" Size="8" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Packet CRC" Pos="1" Size="4" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Pad" Pos="2" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="3" Size="4" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="4" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
