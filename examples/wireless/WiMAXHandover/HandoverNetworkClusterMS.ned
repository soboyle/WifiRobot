package inet.examples.wireless.WiMAXHandover;
//
// Roland Siedlaczek
//

import inet.underTest.nodes.WiMAX.WiMAXMS;


network HandoverNetworkClusterMS extends HandoverNetworkClusterBS
{
    submodules:
        ms1: WiMAXMS {
            parameters:
                @display("p=300,300;i=device/cellphone_s;r=,,#707070");
        }
        ms2: WiMAXMS {
            parameters:
                @display("p=300,300;i=device/cellphone_s;r=,,#707070");
        }
        ms3: WiMAXMS {
            parameters:
                @display("p=300,300;i=device/cellphone_s;r=,,#707070");
        }
        ms4: WiMAXMS {
            parameters:
                @display("p=300,300;i=device/cellphone_s;r=,,#707070");
        }
        ms5: WiMAXMS {
            parameters:
                @display("p=300,300;i=device/cellphone_s;r=,,#707070");
        }
        ms6: WiMAXMS {
            parameters:
                @display("p=300,300;i=device/cellphone_s;r=,,#707070");
        }
}
