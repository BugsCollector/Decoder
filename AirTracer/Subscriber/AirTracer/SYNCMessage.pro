<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Sync Message">
	<ATHeader>
		<PrimaryKeyField Name="Sync Message" Size="1">0x0001</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="APCO I" Size="4" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Sync Type" Pos="0" Size="1" BitFlag="false">
			<Comment>0=APCO_PHASE_I  1=APCO_PHASE_II_VOICE_BS_SOURCED  2=APCO_PHASE_II_DATA_BS_SOURCED  3=APCO_PHASE_II_VOICE_MS_SOURCED  4=APCO_PHASE_II_DATA_MS_SOURCED                   5=VOICE_SYNC_BS_SOURCED  6=DATA_SYNC_BS_SOURCED 7=VOICE_SYNC_MS_SOURCED  8=DATA_SYNC_MS_SOURCED 9=REVERSE_CHANNEL_MS_SOURCED  10=UNKNOWN_SYNC</Comment>
			<Value Description="APCO Phase I">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="APCO II: Voice BS Sourced" Size="4" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Sync Type" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="APCO II: Voice BS Sourced">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="APCO II: Data BS Sourced" Size="4" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Sync Type" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="APCO II: Data BS Sourced">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="APCO II: Voice MS Sourced" Size="4" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Sync Type" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="APCO II: Voice MS Sourced">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="APCO II: Data MS Sourced" Size="4" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Sync Type" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="APCO II: Data MS Sourced">0x0004<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="LTD: Voice SYNC BS Sourced" Size="4" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Sync Type" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice SYNC BS Sourced">0x0005<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="LTD: Data SYNC BS Sourced" Size="4" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Sync Type" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Data SYNC BS Sourced">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="LTD: Voice SYNC MS Sourced" Size="4" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Sync Type" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice SYNC MS Sourced">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="LTD: Data SYNC MS Sourced" Size="4" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Sync Type" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Data SYNC MS Sourced">0x0008<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="LTD: Reverse Channel MS Sourced" Size="4" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Sync Type" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Reverse Channel MS Sourced">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="LTD: Unknown SYNC" Size="4" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Sync Type" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Unknown SYNC">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
