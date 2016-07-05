<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Embedded Rx Signalling Message">
	<ATHeader>
		<PrimaryKeyField Name="Embedded Rx Signalling Message" Size="1">0x0002</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="EMB Info: First Fragment CSBK " Size="4" SecondaryKeyField="2">
		<Comment></Comment>
		<Field Name="Unused" Pos="0" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved for Future Used</Comment>
			<Data/>
		</Field>
		<Field Name="LC Start/Stop" Pos="0" Size="2" BitFlag="true" BitPos="3">
			<Comment>LCSS information element is used for LC or CSBK signalling and indicates the start, continuation or end of a signalling</Comment>
			<Value Description="First Fragment CSBK Packet">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="EEEI: End to End Encryption" Pos="0" Size="1" BitFlag="true" BitPos="4">
			<Comment>Indicates if vocoder frames are using end-to-end encryption.                           0 = End-to-end encryption not used on voice                                                        1 = End-to-end encryption is used on voice</Comment>
			<Value Description="EEEI not used on voice">0x0000<Comment></Comment></Value>
			<Value Description="EEEI used on voice">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="0" Size="4" BitFlag="true" BitPos="8">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="EMB Info: First Fragment LC" Size="4" SecondaryKeyField="2">
		<Comment></Comment>
		<Field Name="Unused" Pos="0" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="LC Start/Stop" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment>LCSS information element is used for LC or CSBK signalling and indicates the start, continuation or end of a signalling</Comment>
			<Value Description="First Fragment LC Packet">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EEEI: End to End Encryption" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates if vocoder frames are using end-to-end encryption.                           0 = End-to-end encryption not used on voice                                                        1 = End-to-end encryption is used on voice</Comment>
			<Value Description="EEEI not used on voice">0x0000<Comment></Comment></Value>
			<Value Description="EEEI used on voice">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="0" Size="4" BitFlag="true" BitPos="3">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="EMB Info: Last Fragment LC/CSBK" Size="4" SecondaryKeyField="2">
		<Comment></Comment>
		<Field Name="Unused" Pos="0" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="LC Start Stop" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment>LCSS information element is used for LC or CSBK signalling and indicates the start, continuation or end of a signalling</Comment>
			<Value Description="Last Fragment LC/CSBK Packet">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="EEEI: End to End Encryption" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates if vocoder frames are using end-to-end encryption.                           0 = End-to-end encryption not used on voice                                                        1 = End-to-end encryption is used on voice</Comment>
			<Value Description="EEEI not used on voice">0x0000<Comment></Comment></Value>
			<Value Description="EEEI used on voice">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="0" Size="4" BitFlag="true" BitPos="3">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="EMB Info: Continuation Fragment LC/CSBK" Size="4" SecondaryKeyField="2">
		<Comment></Comment>
		<Field Name="Unused" Pos="0" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="LC Start Stop" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment>LCSS information element is used for LC or CSBK signalling and indicates the start, continuation or end of a signalling</Comment>
			<Value Description="Cont. Fragment LC/CSBK Packet">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="EEEI: End to End Encryption" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates if vocoder frames are using end-to-end encryption.                           0 = End-to-end encryption not used on voice                                                        1 = End-to-end encryption is used on voice</Comment>
			<Value Description="EEEI not used on voice">0x0000<Comment></Comment></Value>
			<Value Description="EEEI used on voice">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="0" Size="4" BitFlag="true" BitPos="3">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="1" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
