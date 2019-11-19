601,100
602,"Dim.Risk Categories"
562,"CHARACTERDELIMITED"
586,"D:\share\TI Source\Dim Risk Categories.csv"
585,"D:\share\TI Source\Dim Risk Categories.csv"
564,
565,"s?hF4;w5UXp;xQn0Bn4ah9nha32=PuRXH:FuAWvLzQoXh\EuJ<TVlG[XPdm3p_kM?uDjH8V0b9A>NZVUX0d4\C7H4ap947MbHVWS5K1dxH26WJyg4a7rb[2OPC6t28[Gr4t4qFh;O;_vy:0nt`b[1VRm\IbiIrJzbSGlF`==d:`_=1jFtJftVt5\BOCo@6itbA:^oD\x"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,";"
588,"."
589,","
568,""""
570,
571,
569,0
592,0
599,1000
560,2
create
dim
561,2
1
2
590,2
create,0
dim,"test"
637,2
create,""
dim,""
577,4
Level1
Level2
Level3
Level4
578,4
2
2
2
2
579,4
1
2
3
4
580,4
0
0
0
0
581,4
0
0
0
0
582,4
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
603,0
572,35

#****Begin: Generated Statements***
#****End: Generated Statements****


IF( dim @= 'test' );
sDimName = 'Risk Categories__test';
ElseIf( dim @= 'prod');
sDimName = 'Risk Categories';
Endif;

IF( create = 1 );

IF(  DIMENSIONEXISTS( sDimName ) = 1);

DimensionDeleteAllElements( sDimName );

Else;

DIMENSIONCREATE(sDimName);

ENDIF;

DIMENSIONSORTORDER( sDimName,'ByInput','ASCENDING','ByInput','ASCENDING');

else;

ProcessQuit;

Endif;

AttrInsert(sDimName, '', 'Caption', 'A');
AttrInsert(sDimName, '', 'Risk Category', 'S');
AttrInsert(sDimName, '', 'Performance Scenario', 'S');

573,42

#****Begin: Generated Statements***
#****End: Generated Statements****




IF(  DIMENSIONEXISTS( sDimName ) = 1);


IF(  Level1 @<> '' & Level2 @<> '' & Level3 @<> '' & Level4 @<> ''  );

DIMENSIONELEMENTINSERTDirect(sDimName,'',Level1,'c');
DIMENSIONELEMENTINSERTDirect(sDimName,'',Level2,'c');
DIMENSIONELEMENTINSERTDirect(sDimName,'',Level3,'c');
DIMENSIONELEMENTINSERTDirect(sDimName,'',Level4,'n');

DIMENSIONELEMENTCOMPONENTADDDirect(sDimName,Level1,Level2,1.000000);
DIMENSIONELEMENTCOMPONENTADDDirect(sDimName,Level2,Level3,1.000000);
DIMENSIONELEMENTCOMPONENTADDDirect(sDimName,Level3,Level4,1.000000);

ELSEIF( Level1 @<> '' & Level2 @<> '' & Level3 @<> '' );

DIMENSIONELEMENTINSERTDirect(sDimName,'',Level1,'c');
DIMENSIONELEMENTINSERTDirect(sDimName,'',Level2,'c');
DIMENSIONELEMENTINSERTDirect(sDimName,'',Level3,'n');

DIMENSIONELEMENTCOMPONENTADDDirect(sDimName,Level1,Level2,1.000000);
DIMENSIONELEMENTCOMPONENTADDDirect(sDimName,Level2,Level3,1.000000);

ELSEIF( Level1 @<> '' & Level2 @<> ''  );

DIMENSIONELEMENTINSERTDirect(sDimName,'',Level1,'c');
DIMENSIONELEMENTINSERTDirect(sDimName,'',Level2,'n');

DIMENSIONELEMENTCOMPONENTADDDirect(sDimName,Level1,Level2,1.000000);


ENDIF;

ENDIF;

574,30

#****Begin: Generated Statements***
#****End: Generated Statements****


### Attr Risk Category ###
IF(Scan('Stretch -', Level3) <> 0 );AttrPutS('Stretch', sDimName, Level3, 'Risk Category');ENDIF;
IF(Scan('Solid -', Level4) <> 0 );AttrPutS('Solid', sDimName, Level4, 'Risk Category');ENDIF;
IF( Level3 @= 'Dummy');AttrPutS('Commit', sDimName, Level3, 'Risk Category');ENDIF;  
IF( Level3 @= 'Odd days');AttrPutS('Commit', sDimName, Level3, 'Risk Category');ENDIF;  
IF( Level3 @= 'Mgmt Judgement');AttrPutS('Commit', sDimName, Level3, 'Risk Category');ENDIF;  

### Attr Performance Scenario
IF(Scan('Best Can Do', Level1) <> 0 );AttrPutS('Best Can Do', sDimName, Level1, 'Performance Scenario');ENDIF;
IF(Scan('Stretch', Level3) <> 0 );AttrPutS('Opportunity', sDimName, Level3, 'Performance Scenario');ENDIF;
IF(Scan('Stretch', Level2) <> 0 );AttrPutS('Opportunity', sDimName, Level2, 'Performance Scenario');ENDIF;

IF(Scan('Commit', Level2) <> 0 );AttrPutS('Risk', sDimName, Level2, 'Performance Scenario');ENDIF;
IF(Scan('Solid', Level3) <> 0 );AttrPutS('Risk', sDimName, Level3, 'Performance Scenario');ENDIF;
IF(Scan('Risk', Level3) <> 0 );AttrPutS('Risk', sDimName, Level3, 'Performance Scenario');ENDIF;
IF(Scan('Solid', Level4) <> 0 );AttrPutS('Risk', sDimName, Level4, 'Performance Scenario');ENDIF;
  
IF(ELPAR(sDimName,level3,1) @= 'Commit');AttrPutS('Risk', sDimName, Level3, 'Performance Scenario');ENDIF;  
    
  





575,3

#****Begin: Generated Statements***
#****End: Generated Statements****
576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,0
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
