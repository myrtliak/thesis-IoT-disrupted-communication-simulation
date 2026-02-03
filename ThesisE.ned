package inet.tutorials.wireless.Thesis;

import inet.common.scenario.ScenarioManager;
import inet.environment.common.PhysicalEnvironment;
import inet.environment.ground.FlatGround;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.contract.INetworkNode;
import inet.physicallayer.wireless.common.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;

network ThesisE
{
    parameters:
        @display("bgb=2000,1006.9,,,0;bgg=100,0;bgi=background/xanthi,s;bgu=m");

        //---------------ΕΜΦΑΝΙΣΗ ΠΑΚΕΤΩΝ ΠΟΥ ΠΑΡΕΛΑΒΕ Ο ΠΑΡΑΛΗΠΤΗΣ------------
        @figure[rcvdPkText](type=indicatorText; pos=380,20; anchor=w; font=,18; textFormat="packets received: %g"; initialValue=0);
        @statistic[packetReceived](source=BuildingE.app[0].packetReceived; record=figure(count); targetFigure=rcvdPkText);

    submodules:
        visualizer: <default(firstAvailableOrEmpty("IntegratedCanvasVisualizer"))> like IIntegratedVisualizer if typename != "" {
            @display("p=305,128");
        }
        radioMedium: <default("Ieee80211ScalarRadioMedium")> like IRadioMedium {
            @display("p=118,125");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=90,280");
        }
        physicalEnvironment: PhysicalEnvironment {
            @display("p=355,280");
        }
        scenarioManager: ScenarioManager {
            @display("p=583,128");
        }
        BuildingA: <default("ManetRouter")> like INetworkNode {
            @display("p=275,591;i=misc/city;is=l");
        }
        BuildingE: <default("ManetRouter")> like INetworkNode {
            @display("p=1670,576;i=misc/city;is=l");
        }
        BuildingD: <default("ManetRouter")> like INetworkNode {
            @display("p=883,455;i=misc/city;is=l");
        }
        BuildingB: <default("ManetRouter")> like INetworkNode {
            @display("p=450,895;i=misc/city;is=l");
        }
        BuildingC: <default("ManetRouter")> like INetworkNode {
            @display("p=762,699;i=misc/city;is=l");
        }
        car1: <default("ManetRouter")> like INetworkNode {
            @display("p=370,555;i=misc/car;is=s");
        }
        car5: <default("ManetRouter")> like INetworkNode {
            @display("p=612,917;i=misc/car;is=s");
        }
        car7: <default("ManetRouter")> like INetworkNode {
            @display("p=969,516;i=misc/car;is=s");
        }
        car8: <default("ManetRouter")> like INetworkNode {
            @display("p=1204,502;i=misc/car;is=s");
        }
        car4: <default("ManetRouter")> like INetworkNode {
            @display("p=233,718;i=misc/car;is=s");
        }
        car2: <default("ManetRouter")> like INetworkNode {
            @display("p=549,670;i=misc/car;is=s");
        }
        car3: <default("ManetRouter")> like INetworkNode {
            @display("p=629,766;i=misc/car;is=s");
        }
        car6: <default("ManetRouter")> like INetworkNode {
            @display("p=741,536;i=misc/car;is=s");
        }
        car9: <default("ManetRouter")> like INetworkNode {
            @display("p=1388,489;i=misc/car;is=s");
        }
        car10: <default("ManetRouter")> like INetworkNode {
            @display("p=1537,479;i=misc/car;is=s");
        }
        car11: <default("ManetRouter")> like INetworkNode {
            @display("p=1694,467;i=misc/car;is=s");
        }
        BuildingF: <default("ManetRouter")> like INetworkNode {
            @display("p=1180,595;i=misc/city;is=l");
        }
        car12: <default("ManetRouter")> like INetworkNode {
            @display("p=562,600;i=misc/car;is=s");
        }
}
