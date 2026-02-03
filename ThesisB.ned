package inet.tutorials.wireless.Thesis;

import inet.environment.common.PhysicalEnvironment;
import inet.environment.ground.FlatGround;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.contract.INetworkNode;
import inet.physicallayer.wireless.common.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;

network ThesisB
{
    parameters:
        @display("bgb=2000,1000,,,0;bgg=100,0;bgi=background/xanthi,s;bgu=m");

        //---------------ΕΜΦΑΝΙΣΗ ΠΑΚΕΤΩΝ ΠΟΥ ΠΑΡΕΛΑΒΕ Ο ΠΑΡΑΛΗΠΤΗΣ------------
        @figure[rcvdPkText](type=indicatorText; pos=380,20; anchor=w; font=,18; textFormat="packets received: %g"; initialValue=0);
        @statistic[packetReceived](source=BuildingB.app[0].packetReceived; record=figure(count); targetFigure=rcvdPkText);

    submodules:
        visualizer: <default(firstAvailableOrEmpty("IntegratedCanvasVisualizer"))> like IIntegratedVisualizer if typename != "" {
            @display("p=258,128");
        }
        radioMedium: <default("Ieee80211ScalarRadioMedium")> like IRadioMedium {
            @display("p=90,125");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=90,280");
        }
        physicalEnvironment: PhysicalEnvironment {
            @display("p=258,273");
        }
        BuildingA: <default("ManetRouter")> like INetworkNode {
            @display("p=275,591;i=misc/city;is=l");
        }
        BuildingB: <default("ManetRouter")> like INetworkNode {
            @display("p=1670,576;i=misc/city;is=l");
        }
        drone1: <default("ManetRouter")> like INetworkNode {
            @display("p=435,688;i=misc/drone");
        }
        drone2: <default("ManetRouter")> like INetworkNode {
            @display("p=668,588;i=misc/drone");
        }
        drone3: <default("ManetRouter")> like INetworkNode {
            @display("p=868,688;i=misc/drone");
        }
        drone5: <default("ManetRouter")> like INetworkNode {
            @display("p=1088,550;i=misc/drone");
        }
        drone4: <default("ManetRouter")> like INetworkNode {
            @display("p=1213,738;i=misc/drone");
        }
        drone6: <default("ManetRouter")> like INetworkNode {
            @display("p=1433,638;i=misc/drone");
        }

}

