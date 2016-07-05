<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Data Control Burst Messages">
	<ATHeader>
		<PrimaryKeyField Name="Data Control Burst Messages" Size="1">0x0009</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Confirmed Data Continuation" Size="20" SecondaryKeyField="5">
		<Comment></Comment>
		<Field Name="9-Bit CRC: Bit 0" Pos="0" Size="1" BitFlag="true" BitPos="0">
			<Comment>To protect the user data and DBSN information</Comment>
			<Data/>
		</Field>
		<Field Name="Data Block Serial Number" Pos="0" Size="7" BitFlag="true" BitPos="1">
			<Comment>To identify the serial number for the data block within the packet </Comment>
			<Data/>
		</Field>
		<Field Name="9-Bit CRC: Bit 1~8" Pos="1" Size="1" BitFlag="false">
			<Comment>To protect the user data and DBSN information</Comment>
			<Data/>
		</Field>
		<Field Name="User Data" Pos="2" Size="16" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="3" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="4" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
