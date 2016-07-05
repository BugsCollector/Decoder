<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Short LC Message">
	<ATHeader>
		<PrimaryKeyField Name="Short LC" Size="1">0x0006</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Short LC: NULL Message" Size="8" SecondaryKeyField="12">
		<Comment></Comment>
		<Field Name="Individual Slot 2" Pos="0" Size="1" BitFlag="true" BitPos="0">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 2" Pos="0" Size="1" BitFlag="true" BitPos="1">
			<Comment>Indicates whether the advertised activity on timeslot 2 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 2" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 2" Pos="0" Size="1" BitFlag="true" BitPos="3">
			<Comment>Indicates whether timeslot 2 is presently supporting a call or transmission.  If timeslot 2 is not supporting an active call or transmission, then E2, D2, I2, and the Hashed ID for TDMA Channel 2 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Individual Slot 1" Pos="0" Size="1" BitFlag="true" BitPos="4">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 1" Pos="0" Size="1" BitFlag="true" BitPos="5">
			<Comment>Indicates whether the advertised activity on timeslot 1 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 1" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 1" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Indicates whether timeslot 1 is presently supporting a call or transmission.  If timeslot 1 is not supporting an active call or transmission, then E1, D1, I1, and the Hashed ID for TDMA Channel 1 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Hashed ID Slot 1" Pos="1" Size="1" BitFlag="false">
			<Comment>(8 bits) identifies the active ID for timeslot 1 in a hashed format</Comment>
			<Data/>
		</Field>
		<Field Name="Hashed ID Slot 2" Pos="2" Size="1" BitFlag="false">
			<Comment>(8 bits) identifies the active ID for timeslot 2 in a hashed format</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Short LCO" Pos="3" Size="4" BitFlag="true" BitPos="1">
			<Comment>(4 bits) identifies the message type</Comment>
			<Value Description="NULL Message">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="4" Size="7" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Invalid Checksum" Pos="4" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Pass">0x0000<Comment></Comment></Value>
			<Value Description="Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Short LC: Activity Update" Size="8" SecondaryKeyField="12">
		<Comment></Comment>
		<Field Name="Individual Slot 2" Pos="0" Size="1" BitFlag="true" BitPos="0">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 2" Pos="0" Size="1" BitFlag="true" BitPos="1">
			<Comment>Indicates whether the advertised activity on timeslot 2 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 2" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 2" Pos="0" Size="1" BitFlag="true" BitPos="3">
			<Comment>Indicates whether timeslot 2 is presently supporting a call or transmission.  If timeslot 2 is not supporting an active call or transmission, then E2, D2, I2, and the Hashed ID for TDMA Channel 2 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Individual Slot 1" Pos="0" Size="1" BitFlag="true" BitPos="4">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 1" Pos="0" Size="1" BitFlag="true" BitPos="5">
			<Comment>Indicates whether the advertised activity on timeslot 1 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 1" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 1" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Indicates whether timeslot 1 is presently supporting a call or transmission.  If timeslot 1 is not supporting an active call or transmission, then E1, D1, I1, and the Hashed ID for TDMA Channel 1 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Hashed ID Slot 1" Pos="1" Size="1" BitFlag="false">
			<Comment>(8 bits) identifies the active ID for timeslot 1 in a hashed format</Comment>
			<Data/>
		</Field>
		<Field Name="Hashed ID Slot 2" Pos="2" Size="1" BitFlag="false">
			<Comment>(8 bits) identifies the active ID for timeslot 2 in a hashed format</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Short LCO" Pos="3" Size="4" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Activity Update">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="4" Size="7" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Invalid Checksum" Pos="4" Size="1" BitFlag="true" BitPos="1">
			<Comment>(4 bits) identifies the message type</Comment>
			<Value Description="Pass">0x0000<Comment></Comment></Value>
			<Value Description="Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Short LC: Capacity Plus Generic CACH" Size="8" SecondaryKeyField="4,7">
		<Comment></Comment>
		<Field Name="MFID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Motorola">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Rest Channel ID" Pos="1" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved Bit" Pos="1" Size="1" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="OpCode" Pos="1" Size="2" BitFlag="true" BitPos="6">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Value Description="Generic CACH">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved Byte" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Short LCO" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="Capacity Plus">0x000F<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="4" Size="7" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Invalid Checksum" Pos="4" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Pass">0x0000<Comment></Comment></Value>
			<Value Description="Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Short LC: All Call" Size="8" SecondaryKeyField="4,7">
		<Comment></Comment>
		<Field Name="MFID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Motorola">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Traffic Channel" Pos="1" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Emergency Flag" Pos="1" Size="1" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Value Description="Non-emergency Call">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Opcode" Pos="1" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="All Call CACH">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="TGID" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Short LCO" Pos="3" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="Capacity Plus">0x000F<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="4" Size="7" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Invalid Checksum" Pos="4" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Pass">0x0000<Comment></Comment></Value>
			<Value Description="Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
