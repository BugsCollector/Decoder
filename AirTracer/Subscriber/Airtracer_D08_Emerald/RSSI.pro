<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="RSSI">
	<ATHeader>
		<PrimaryKeyField Name="RSSI Message" Size="1">0x000F</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="RSSI" Size="4" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="RSSI Message" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="True">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="RSSI Value in Neg dBm" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="RSSI Value Fraction - Divide by 256" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
