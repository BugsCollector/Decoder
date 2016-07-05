<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Common Announcement Channel ">
	<ATHeader>
		<PrimaryKeyField Name="Common Announcement Channel " Size="1">0x0004</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Cach Tact Rx Info - First Fragment CSBK" Size="4" SecondaryKeyField="2">
		<Comment></Comment>
		<Field Name="Unused" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment>Reserved for Future Used</Comment>
			<Data/>
		</Field>
		<Field Name="LCSS" Pos="0" Size="2" BitFlag="true" BitPos="6">
			<Comment>LC Start Stop - indicates that the burst contains the start or end of an LC packet.</Comment>
			<Value Description="Single fragment of LC Packet">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="TDMA Channel" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>Indicates whether the next inbound and outbound burst is Channel 1 or 2.             0 = following outbound Burst is TDMA Channel 1                                                1 = following outbound Burst is TDMA Channel 2</Comment>
			<Value Description="Channel 1">0x0000<Comment></Comment></Value>
			<Value Description="Channel 2">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Access Type" Pos="0" Size="1" BitFlag="true" BitPos="8">
			<Comment>Indicate whether the next inbound slot is busy or idle.                                             0 = idle on the next inbound traffic channel                                                     1 = busy on the next inbound traffic channel</Comment>
			<Value Description="Next Inbound Slot - Idle">0x0000<Comment></Comment></Value>
			<Value Description="Next Inbound Slot - Busy">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Cach Tact Rx Info - First Fragment LC" Size="4" SecondaryKeyField="2">
		<Comment></Comment>
		<Field Name="Unused" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment>Reserved for Future Used</Comment>
			<Data/>
		</Field>
		<Field Name="LCSS" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment>LC Start Stop - indicates that the burst contains the start or end of an LC packet.</Comment>
			<Value Description="First fragment of LC Packet">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="TDMA Channel" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates whether the next inbound and outbound burst is Channel 1 or 2.             0 = following outbound Burst is TDMA Channel 1                                                1 = following outbound Burst is TDMA Channel 2</Comment>
			<Value Description="Channel 1">0x0000<Comment></Comment></Value>
			<Value Description="Channel 2">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Access Type" Pos="0" Size="1" BitFlag="true" BitPos="3">
			<Comment>Indicate whether the next inbound slot is busy or idle.                                             0 = idle on the next inbound traffic channel                                                    1 = busy on the next inbound traffic channel</Comment>
			<Value Description="Next Inbound Slot - Idle">0x0000<Comment></Comment></Value>
			<Value Description="Next Inbound Slot - Busy">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Cach Tact Rx Info - Last Fragment LC/CSBK" Size="4" SecondaryKeyField="2">
		<Comment></Comment>
		<Field Name="Unused" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment>Reserved for Future Used</Comment>
			<Data/>
		</Field>
		<Field Name="LCSS" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment>LC Start Stop - indicates that the burst contains the start or end of an LC packet.</Comment>
			<Value Description="Last fragment of LC Packet">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="TDMA Channel" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates whether the next inbound and outbound burst is Channel 1 or 2.             0 = following outbound Burst is TDMA Channel 1                                                1 = following outbound Burst is TDMA Channel 2</Comment>
			<Value Description="Channel 1">0x0000<Comment></Comment></Value>
			<Value Description="Channel 2">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Access Type" Pos="0" Size="1" BitFlag="true" BitPos="3">
			<Comment>Indicate whether the next inbound slot is busy or idle.                                             0 = idle on the next inbound traffic channel                                                     1 = busy on the next inbound traffic channel</Comment>
			<Value Description="Next Inbound Slot - Idle">0x0000<Comment></Comment></Value>
			<Value Description="Next Inbound Slot - Busy">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Cach Tact Rx Info - Continuation Fragment LC/CSBK" Size="4" SecondaryKeyField="2">
		<Comment></Comment>
		<Field Name="Unused" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment>Reserved for Future Used</Comment>
			<Data/>
		</Field>
		<Field Name="LCSS" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment>LC Start Stop - indicates that the burst contains the start or end of an LC packet.</Comment>
			<Value Description="Continuation fragment of LC Packet">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="TDMA Channel" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates whether the next inbound and outbound burst is Channel 1 or 2.             0 = following outbound Burst is TDMA Channel 1                                                1 = following outbound Burst is TDMA Channel 2</Comment>
			<Value Description="Channel 1">0x0000<Comment></Comment></Value>
			<Value Description="Channel 2">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Access Type" Pos="0" Size="1" BitFlag="true" BitPos="3">
			<Comment>Indicate whether the next inbound slot is busy or idle.                                             0 = idle on the next inbound traffic channel                                                    1 = busy on the next inbound traffic channel</Comment>
			<Value Description="Next Inbound Slot - Idle">0x0000<Comment></Comment></Value>
			<Value Description="Next Inbound Slot - Busy">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
