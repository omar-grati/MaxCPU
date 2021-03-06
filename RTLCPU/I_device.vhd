entity I_device is
port(
clk : in bit;
rst: in bit;
DataOut: out bit_vector(11 downto 0);
DevRdy : out bit := '0';
AccType: in bit;
AccEn: in bit;
DataReq: out bit;
DataIn: in bit_vector(11 downto 0);
DataRdy: in bit);

end I_device;

architecture RTL of I_device is

component D_REG12RE is 
port (
D_IN : in bit_vector(11 downto 0);
RST : in bit;
Enable : in bit;
clk : in bit;
Q_out : out bit_vector (11 downto 0) );
end component;

component D_FFaR is 
  port(   D  : in bit; 
          CLK: in bit;
          RST: in bit; 
          Enable : in bit;
          Q  : out bit );
end component;

signal d:bit:='0';
signal q:bit;
signal enable: bit :='1';
signal Data_out: bit_vector(11 downto 0);
signal Data_in: bit_vector(11 downto 0):=B"0000_0000_0000";
begin
Dreg12: D_REG12RE port map (Data_IN,rst,clk,enable,Data_out);
emptyreg: D_FFaR port map (d,clk,rst,enable,q);
 
process

begin
if q='1' then DevRdy<='1';
else DevRdy<='0';
end if;
if AccEn='1' and AccType = '0' and q='1' then Dataout<=Data_out;d<='0';
else Dataout <=B"000000000000";
end if;
if q='0' then DataReq<='1';
else   DataReq<='0';
end if;
if DataRdy='1' and q='0' then Data_in<=DataIN; d<='1';
end if;
end process;

end RTL;
