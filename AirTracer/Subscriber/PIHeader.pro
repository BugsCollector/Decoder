<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="PI Header Messages">
	<ATHeader>
		<PrimaryKeyField Name="PI Messages" Size="1">0x0011</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="PI Header" Size="24" SecondaryKeyField="11">
		<Comment></Comment>
		<Field Name="Algorithm ID" Pos="0" Size="3" BitFlag="true" BitPos="0">
			<Comment>This indicates the Algorithm ID of Enhanced Privacy.</Comment>
		</Field>
		<Field Name="R - Reserved1" Pos="0" Size="2" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="G/I" Pos="0" Size="1" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Value Description="Group Call">0x0001<Comment></Comment></Value>
			<Value Description="Individual Call">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="R - Reserved2" Pos="0" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="1" Size="1" BitFlag="false">
			<Comment>This is the Manufacturers ID.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Key ID" Pos="2" Size="1" BitFlag="false">
			<Comment>This field defines the 8-bit Key ID.</Comment>
			<Data/>
		</Field>
		<Field Name="IV" Pos="3" Size="4" BitFlag="false">
			<Comment>This field defines the 32-bit IV.</Comment>
			<Data/>
		</Field>
		<Field Name="Destination Address" Pos="7" Size="3" BitFlag="false">
			<Comment>This field identifies the destination address.</Comment>
			<Data/>
		</Field>
		<Field Name="Header CRC" Pos="10" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved02" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="12" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="PI Header">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="12" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="13" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
