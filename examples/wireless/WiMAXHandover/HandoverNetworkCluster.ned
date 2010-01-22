package inet.examples.wireless.WiMAXHandover;
//
// Roland Siedlaczek
//

import inet.underTest.nodes.WiMAX.WiMAXMS;


network HandoverNetworkCluster extends HandoverNetworkClusterBS
{
    submodules:
        ms11: WiMAXMS {
            parameters:
                @display("p=100,300;i=device/cellphone_s;r=,,#707070");
        }
        //ms4: WiMAXMS;
        //    display: "p=100,300;i=device/cellphone_s;r=,,#707070";
        //ms5: WiMAXMS;
        //    display: "p=100,300;i=device/cellphone_s;r=,,#707070";
        //ms6: WiMAXMS;
        //    display: "p=100,300;i=device/cellphone_s;r=,,#707070";
}
