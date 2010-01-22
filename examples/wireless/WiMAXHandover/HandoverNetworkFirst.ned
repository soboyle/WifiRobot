package inet.examples.wireless.WiMAXHandover;
//
// Roland Siedlaczek
//


import inet.underTest.nodes.WiMAX.WiMAXAP;
import inet.underTest.nodes.WiMAX.WiMAXMS;
import inet.world.ChannelControl;


network HandoverNetworkFirst
{
    parameters:
        double playgroundSizeX;
        double playgroundSizeY;
        @display("bgb=1085,582");
    submodules:
        ms1: WiMAXMS {
            parameters:
                @display("p=100,1000;i=device/cellphone_s;r=,,#707070");
        }
        bs1: WiMAXAP {
            parameters:
                @display("p=200,1000;i=device/antennatower_l;r=,,#707070");
        }
        bs2: WiMAXAP {
            parameters:
                @display("p=2200,1000;i=device/antennatower_l;r=,,#707070");
        }
        channelcontrol: ChannelControl {
            parameters:
                playgroundSizeX = playgroundSizeX;
                playgroundSizeY = playgroundSizeY;
                @display("p=60,50;i=misc/sun");
        }
    connections allowunconnected:
}
