<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="IdleMessage">
	<ATHeader>
		<PrimaryKeyField Name="IdleMessage" Size="1">0x0010</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Idle Burst" Size="24" SecondaryKeyField="2">
		<Comment></Comment>
		<Field Name="Unused01" Pos="0" Size="18" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Idle Burst">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="1" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused02" Pos="2" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
