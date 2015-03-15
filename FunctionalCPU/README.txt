Dieser FunctionalCPU wurde im Rahmen der Vorlesung "Entwurf digitaler Systeme mit VHDL und SystemC"  TUM/EDA

Diese Datei ist eine Einf�hrung von Projekt-Ordners.

Studenten:
*Achraf Kamoun(ga46rax,  ImmatrikulationsNr: 03642799) 
*Kamel Shibli(ga32miw)
*Omar Grati(ga46yom,ImmatrikulationsNr: 03643546)

 \:


1) \Code:                    enth�lt alle .vhd Dateien von unseren Projekt.
2) \testbench:            enth�lt alle .txt Dateien f�r die Testbench und kontrolle .
3) \documentation:  enth�lt die Dokumentation f�r jede Package.


1) \Code: 13 .vhd Dateien

1.1)top_entity.vhd          enth�lt die "top entity" unserer CPU. 

Initializierung (implimentiert in ersten tag des projektes)
1.2)cpu_defs_pack.vhd  enth�lt die Definition von benutzte types( dat_type...)
1.3)mem_defs_pack.vhd   enth�lt die initializierung von Speicher mit konstanten werten.
1.4)bit_vector_natural_pack.vhd  entth�lt bit_vector_to_natural function.

CPU-commands
1.5)arith_defs_pack.vhd enth�lt arithmetic proceduren.
1.6)logic_pack.vhd enth�lt logic proceduren.
1.7)shift_rotate_pack.vhd enth�lt shift/rotate proceduren.
1.8)IN_OUT.vhd enth�lt in und out proceduren.
1.9)mem_acess_pack.vhd enth�lt memory acess  proceduren.
1.10)jmps_defs_pack.vhd enth�lt jump proceduren.

test_bench:
1.11)file_in_memory.vhd enth�lt init_memory procedure.
1.12)dump_memory.vhd enth�lt dump_memory procedure.
1.13)trace_pack.vhd enth�lt trace funktionen und proceduren.


2) \testbench:   
zu jeder Package-test wurde ein Mnemonic-assembly-code in excel file geschrieben.
 Jeder Mnemonic-assembly-code wurde durch ein matlab code zu integer-assembly-code konvertiert.
 Der matlab skript finden Sie unter \testbench\MnemonicToInteger_read.m.
( mnemonic.xlsx --> | mtlab script | ---> integer-assembly-code.txt).

Durch den erzeugten .txt datei wurde die Memory intializiert . 

Sie Finden unter \testbench 6 Ordners , wo in jeder  5 .txt Dateien und ein excel Datei gibt.

beispiel: 
\in_out_tb:
*)ProcessorCommand_read.xlsx und Memory.txt:
 ProcessorCommand_read.xlsx --> matlab script --> Memory.txt
*) IOInput.txt enth�lt die Integers , die  durch in-procedure  gelesen wurden . (file    ---- :  in text)
*)IOOutput.txt entth�lt die Integers, die durch out-Funktionen geschrieben wurden. (file    ---- :  out text)
*)dump.txt enth�lt  den Inhalt von Memory.
*)trace.txt enth�lt trace execution f�r jeder assembly-code.


durch unsere assembly-codes wurden alle m�gliche �nderung von Flags (inhalt von memory, values von Registers... ) getestet  und wir haben keinen Fehler in Implementierung bemerkt.




3) \documentation:
 enth�lt die Dokumentation von Packages.




**Bemerkungen:
1) Wenn Sie die Top_entity.vhd simulieren wollten, passen Sie darauf die Location-Pfads von files zu �nderen.
2) die Dokumentationen sollten mit wordpad , word ... (und nicht notepad) ge�ffnet werden , um klare Einsicht zu haben.
3)die Dateien (Excel file, matlab file, Dump/Memory/Trace/Input/Output .txt files) m�ssen im selben Ordner wie die VHDL-codes sein , damit die Simulation fehlerfrei laufen kann.