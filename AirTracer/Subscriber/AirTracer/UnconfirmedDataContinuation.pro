<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Data Control Burst Messages">
	<ATHeader>
		<PrimaryKeyField Name="Data Control Burst Messages" Size="1">0x0008</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Unconfirmed Data Continuation" Size="20" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="User Data" Pos="0" Size="12" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Pad" Pos="1" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="2" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="2" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
