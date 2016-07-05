<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Tx Halt event">
	<ATHeader>
		<PrimaryKeyField Name="Tx Halt Message" Size="1">0x0013</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Tx Halt Burst" Size="1" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Status" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Tx Halt Burst">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
</Protocol>