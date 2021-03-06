//
// TraCIScenarioManager - connects OMNeT++ to a TraCI server, manages hosts
// Copyright (C) 2006 Christoph Sommer <christoph.sommer@informatik.uni-erlangen.de>
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
//

package inet.world;

//
// TraCIScenarioManager connects OMNeT++ to a TraCI server running road traffic simulations. 
// It sets up and controls simulation experiments, moving nodes with the help
// of a TraCIMobility module.
//
simple TraCIScenarioManager
{
    parameters:
        @display("i=block/cogwheel");
        bool debug = default(false); // emit debug messages?
        double updateInterval @unit("s") = default(1s); // time interval of hosts' position updates
        string moduleType = default("inet.nodes.wireless.WirelessHostSimplified"); // module type to be used in the simulation for each managed vehicle
        string moduleName = default("host"); // module name to be used in the simulation for each managed vehicle
        string moduleDisplayString = default("i=misc/node2;is=vs;r=0,,#707070,1"); // module displayString to be used in the simulation for each managed vehicle
        string host = default("localhost"); // TraCI server hostname
        int port = default(8888); // TraCI server port
        bool autoShutdown = default(true); // Shutdown module as soon as no more vehicles are in the simulation
        int margin = default(25); // margin to add to all received vehicle positions
}

