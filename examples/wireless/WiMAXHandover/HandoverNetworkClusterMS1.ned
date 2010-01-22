package inet.examples.wireless.WiMAXHandover;
//
// Roland Siedlaczek
//


import inet.underTest.nodes.WiMAX.WiMAXMS;


network HandoverNetworkClusterMS1 extends HandoverNetworkClusterBS
{
    submodules:
        ms1: WiMAXMS {
            parameters:
                @display("p=225,300;i=device/cellphone_s;r=,,#707070");
        }
}
