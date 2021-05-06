<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_16(7:0)" />
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="NACK" />
        <signal name="Reset" />
        <signal name="Clk" />
        <signal name="Start" />
        <signal name="I2C_ADDRESS(7:0)" />
        <signal name="XLXN_65(7:0)" />
        <signal name="XLXN_66(3:0)" />
        <signal name="XLXN_67" />
        <signal name="I2C_GO" />
        <signal name="XLXN_69" />
        <signal name="I2C_BUSY" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="X(15:0)" />
        <signal name="Y(15:0)" />
        <signal name="Z(15:0)" />
        <port polarity="BiDirectional" name="SDA" />
        <port polarity="BiDirectional" name="SCL" />
        <port polarity="Output" name="NACK" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="Start" />
        <port polarity="Output" name="X(15:0)" />
        <port polarity="Output" name="Y(15:0)" />
        <port polarity="Output" name="Z(15:0)" />
        <blockdef name="I2C_Master">
            <timestamp>2021-3-23T8:0:12</timestamp>
            <rect width="304" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="SteeringBox">
            <timestamp>2021-4-23T8:24:3</timestamp>
            <rect width="64" x="464" y="20" height="24" />
            <line x2="528" y1="32" y2="32" x1="464" />
            <rect width="64" x="464" y="84" height="24" />
            <line x2="528" y1="96" y2="96" x1="464" />
            <rect width="64" x="464" y="148" height="24" />
            <line x2="528" y1="160" y2="160" x1="464" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="528" y1="-416" y2="-416" x1="464" />
            <line x2="528" y1="-352" y2="-352" x1="464" />
            <line x2="528" y1="-288" y2="-288" x1="464" />
            <rect width="64" x="464" y="-236" height="24" />
            <line x2="528" y1="-224" y2="-224" x1="464" />
            <rect width="64" x="464" y="-172" height="24" />
            <line x2="528" y1="-160" y2="-160" x1="464" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
            <rect width="400" x="64" y="-448" height="640" />
        </blockdef>
        <block symbolname="SteeringBox" name="XLXI_5">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Start" name="Start" />
            <blockpin signalname="I2C_BUSY" name="I2C_Busy" />
            <blockpin signalname="XLXN_71" name="I2C_FIFO_Empty" />
            <blockpin signalname="XLXN_72" name="I2C_FIFO_Full" />
            <blockpin signalname="XLXN_16(7:0)" name="I2C_FIFO_DO(7:0)" />
            <blockpin signalname="XLXN_67" name="I2C_FIFO_Pop" />
            <blockpin signalname="I2C_GO" name="I2C_Go" />
            <blockpin signalname="XLXN_69" name="I2C_FIFO_Push" />
            <blockpin signalname="I2C_ADDRESS(7:0)" name="I2C_Address(7:0)" />
            <blockpin signalname="XLXN_65(7:0)" name="I2C_FIFO_DI(7:0)" />
            <blockpin signalname="XLXN_66(3:0)" name="I2C_ReadCnt(3:0)" />
            <blockpin signalname="X(15:0)" name="X(15:0)" />
            <blockpin signalname="Y(15:0)" name="Y(15:0)" />
            <blockpin signalname="Z(15:0)" name="Z(15:0)" />
        </block>
        <block symbolname="I2C_Master" name="XLXI_1">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_67" name="FIFO_Pop" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="I2C_GO" name="Go" />
            <blockpin signalname="XLXN_69" name="FIFO_Push" />
            <blockpin signalname="I2C_ADDRESS(7:0)" name="Address(7:0)" />
            <blockpin signalname="XLXN_65(7:0)" name="FIFO_DI(7:0)" />
            <blockpin signalname="XLXN_66(3:0)" name="ReadCnt(3:0)" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="NACK" name="NACK" />
            <blockpin signalname="I2C_BUSY" name="Busy" />
            <blockpin signalname="XLXN_71" name="FIFO_Empty" />
            <blockpin signalname="XLXN_72" name="FIFO_Full" />
            <blockpin signalname="XLXN_16(7:0)" name="FIFO_DO(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="400" y="688" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1088" y="704" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_16(7:0)">
            <wire x2="400" y1="656" y2="656" x1="336" />
            <wire x2="336" y1="656" y2="960" x1="336" />
            <wire x2="1600" y1="960" y2="960" x1="336" />
            <wire x2="1600" y1="480" y2="480" x1="1520" />
            <wire x2="1600" y1="480" y2="960" x1="1600" />
        </branch>
        <branch name="SDA">
            <wire x2="1648" y1="544" y2="544" x1="1520" />
        </branch>
        <branch name="SCL">
            <wire x2="1648" y1="608" y2="608" x1="1520" />
        </branch>
        <branch name="NACK">
            <wire x2="1632" y1="224" y2="224" x1="1520" />
        </branch>
        <branch name="Reset">
            <wire x2="368" y1="272" y2="272" x1="256" />
            <wire x2="400" y1="272" y2="272" x1="368" />
            <wire x2="960" y1="128" y2="128" x1="368" />
            <wire x2="960" y1="128" y2="352" x1="960" />
            <wire x2="1088" y1="352" y2="352" x1="960" />
            <wire x2="368" y1="128" y2="272" x1="368" />
        </branch>
        <branch name="Clk">
            <wire x2="384" y1="336" y2="336" x1="256" />
            <wire x2="400" y1="336" y2="336" x1="384" />
            <wire x2="1088" y1="144" y2="144" x1="384" />
            <wire x2="1088" y1="144" y2="224" x1="1088" />
            <wire x2="384" y1="144" y2="336" x1="384" />
        </branch>
        <branch name="Start">
            <wire x2="400" y1="400" y2="400" x1="256" />
        </branch>
        <iomarker fontsize="28" x="1648" y="544" name="SDA" orien="R0" />
        <iomarker fontsize="28" x="1648" y="608" name="SCL" orien="R0" />
        <iomarker fontsize="28" x="1632" y="224" name="NACK" orien="R0" />
        <iomarker fontsize="28" x="256" y="400" name="Start" orien="R180" />
        <iomarker fontsize="28" x="256" y="336" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="256" y="272" name="Reset" orien="R180" />
        <branch name="I2C_ADDRESS(7:0)">
            <wire x2="960" y1="464" y2="464" x1="928" />
            <wire x2="960" y1="464" y2="544" x1="960" />
            <wire x2="1088" y1="544" y2="544" x1="960" />
        </branch>
        <branch name="XLXN_65(7:0)">
            <wire x2="944" y1="528" y2="528" x1="928" />
            <wire x2="944" y1="528" y2="608" x1="944" />
            <wire x2="1088" y1="608" y2="608" x1="944" />
        </branch>
        <branch name="XLXN_66(3:0)">
            <wire x2="1008" y1="592" y2="592" x1="928" />
            <wire x2="1008" y1="592" y2="672" x1="1008" />
            <wire x2="1088" y1="672" y2="672" x1="1008" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="1008" y1="272" y2="272" x1="928" />
            <wire x2="1008" y1="272" y2="288" x1="1008" />
            <wire x2="1088" y1="288" y2="288" x1="1008" />
        </branch>
        <branch name="I2C_GO">
            <wire x2="944" y1="336" y2="336" x1="928" />
            <wire x2="944" y1="336" y2="416" x1="944" />
            <wire x2="1088" y1="416" y2="416" x1="944" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="1008" y1="400" y2="400" x1="928" />
            <wire x2="1008" y1="400" y2="480" x1="1008" />
            <wire x2="1088" y1="480" y2="480" x1="1008" />
        </branch>
        <branch name="I2C_BUSY">
            <wire x2="400" y1="464" y2="464" x1="352" />
            <wire x2="352" y1="464" y2="944" x1="352" />
            <wire x2="1584" y1="944" y2="944" x1="352" />
            <wire x2="1584" y1="288" y2="288" x1="1520" />
            <wire x2="1584" y1="288" y2="944" x1="1584" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="400" y1="528" y2="528" x1="368" />
            <wire x2="368" y1="528" y2="928" x1="368" />
            <wire x2="1568" y1="928" y2="928" x1="368" />
            <wire x2="1568" y1="352" y2="352" x1="1520" />
            <wire x2="1568" y1="352" y2="928" x1="1568" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="400" y1="592" y2="592" x1="384" />
            <wire x2="384" y1="592" y2="912" x1="384" />
            <wire x2="1552" y1="912" y2="912" x1="384" />
            <wire x2="1552" y1="416" y2="416" x1="1520" />
            <wire x2="1552" y1="416" y2="912" x1="1552" />
        </branch>
        <branch name="X(15:0)">
            <wire x2="960" y1="720" y2="720" x1="928" />
        </branch>
        <branch name="Y(15:0)">
            <wire x2="960" y1="784" y2="784" x1="928" />
        </branch>
        <iomarker fontsize="28" x="960" y="784" name="Y(15:0)" orien="R0" />
        <branch name="Z(15:0)">
            <wire x2="960" y1="848" y2="848" x1="928" />
        </branch>
        <iomarker fontsize="28" x="960" y="848" name="Z(15:0)" orien="R0" />
        <iomarker fontsize="28" x="960" y="720" name="X(15:0)" orien="R0" />
    </sheet>
</drawing>