<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Data Control Burst Message">
	<ATHeader>
		<PrimaryKeyField Name="Data Control Burst Message" Size="1">0x000c</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Last Confirmed Data Continuation" Size="20" SecondaryKeyField="6">
		<Comment></Comment>
		<Field Name="9-Bit CRC: Bit 0" Pos="0" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Control Serial Number" Pos="0" Size="7" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="9-Bit CRC: Bit 1~8" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="User Data" Pos="2" Size="12" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Packet CRC" Pos="3" Size="4" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="4" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="4" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by LTD Air Tracer</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="5" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
