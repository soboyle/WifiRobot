package inet.examples.wireless.WiMAXHandover;
//
// Roland Siedlaczek
//

import inet.underTest.nodes.WiMAX.WiMAXAP;
import inet.underTest.nodes.WiMAX.WiMAXMS;
import inet.world.ChannelControl;


network HandoverNetworkTwoBS
{
    parameters:
        double playgroundSizeX;
        double playgroundSizeY;
        @display("bgb=1085,582");
    submodules:
        ms51: WiMAXMS {
            parameters:
                @display("p=200,300;i=device/cellphone_s;r=,,#707070");
        }
        bs1: WiMAXAP {
            parameters:
                @display("p=150,300;i=device/antennatower_l;r=,,#707070");
        }
        bs7: WiMAXAP {
            parameters:
                @display("p=350,300;i=device/antennatower_l;r=,,#707070");

        }
        channelcontrol: ChannelControl {
            parameters:
                playgroundSizeX = playgroundSizeX;
                playgroundSizeY = playgroundSizeY;
                @display("p=60,50;i=misc/sun");
        }
    connections allowunconnected:
}
