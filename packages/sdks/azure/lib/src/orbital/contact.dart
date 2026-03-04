import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_args.dart';
import 'contact_state.dart';

/// Manages an orbital contact.
///
/// &gt; **Note:** The `azure.orbital.Contact` resource has been deprecated and will be removed in v5.0 of the AzureRM Provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "West Europe",
/// });
/// const exampleSpacecraft = new azure.orbital.Spacecraft("example", {
///     name: "example-spacecraft",
///     resourceGroupName: example.name,
///     location: "westeurope",
///     noradId: "12345",
///     links: [{
///         bandwidthMhz: 100,
///         centerFrequencyMhz: 101,
///         direction: "Uplink",
///         polarization: "LHCP",
///         name: "examplename",
///     }],
///     twoLineElements: [
///         "1 23455U 94089A   97320.90946019  .00000140  00000-0  10191-3 0  2621",
///         "2 23455  99.0090 272.6745 0008546 223.1686 136.8816 14.11711747148495",
///     ],
///     titleLine: "AQUA",
///     tags: {
///         "aks-managed-cluster-name": "9a57225d-a405-4d40-aa46-f13d2342abef",
///     },
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
///     delegations: [{
///         name: "orbitalgateway",
///         serviceDelegation: {
///             name: "Microsoft.Orbital/orbitalGateways",
///             actions: [
///                 "Microsoft.Network/publicIPAddresses/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/read",
///                 "Microsoft.Network/publicIPAddresses/read",
///             ],
///         },
///     }],
/// });
/// const exampleContactProfile = new azure.orbital.ContactProfile("example", {
///     name: "example-contactprofile",
///     resourceGroupName: example.name,
///     location: example.location,
///     minimumVariableContactDuration: "PT1M",
///     autoTracking: "disabled",
///     links: [{
///         channels: [{
///             name: "channelname",
///             bandwidthMhz: 100,
///             centerFrequencyMhz: 101,
///             endPoints: [{
///                 endPointName: "AQUA_command",
///                 ipAddress: "10.0.1.0",
///                 port: "49153",
///                 protocol: "TCP",
///             }],
///         }],
///         direction: "Uplink",
///         name: "RHCP_UL",
///         polarization: "RHCP",
///     }],
///     networkConfigurationSubnetId: exampleSubnet.id,
/// });
/// const exampleContact = new azure.orbital.Contact("example", {
///     name: "example-contact",
///     spacecraftId: exampleSpacecraft.id,
///     reservationStartTime: "2020-07-16T20:35:00.00Z",
///     reservationEndTime: "2020-07-16T20:55:00.00Z",
///     groundStationName: "WESTUS2_0",
///     contactProfileId: exampleContactProfile.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// example_spacecraft = azure.orbital.Spacecraft("example",
///     name="example-spacecraft",
///     resource_group_name=example.name,
///     location="westeurope",
///     norad_id="12345",
///     links=[{
///         "bandwidth_mhz": 100,
///         "center_frequency_mhz": 101,
///         "direction": "Uplink",
///         "polarization": "LHCP",
///         "name": "examplename",
///     }],
///     two_line_elements=[
///         "1 23455U 94089A   97320.90946019  .00000140  00000-0  10191-3 0  2621",
///         "2 23455  99.0090 272.6745 0008546 223.1686 136.8816 14.11711747148495",
///     ],
///     title_line="AQUA",
///     tags={
///         "aks-managed-cluster-name": "9a57225d-a405-4d40-aa46-f13d2342abef",
///     })
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"],
///     delegations=[{
///         "name": "orbitalgateway",
///         "service_delegation": {
///             "name": "Microsoft.Orbital/orbitalGateways",
///             "actions": [
///                 "Microsoft.Network/publicIPAddresses/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/read",
///                 "Microsoft.Network/publicIPAddresses/read",
///             ],
///         },
///     }])
/// example_contact_profile = azure.orbital.ContactProfile("example",
///     name="example-contactprofile",
///     resource_group_name=example.name,
///     location=example.location,
///     minimum_variable_contact_duration="PT1M",
///     auto_tracking="disabled",
///     links=[{
///         "channels": [{
///             "name": "channelname",
///             "bandwidth_mhz": 100,
///             "center_frequency_mhz": 101,
///             "end_points": [{
///                 "end_point_name": "AQUA_command",
///                 "ip_address": "10.0.1.0",
///                 "port": "49153",
///                 "protocol": "TCP",
///             }],
///         }],
///         "direction": "Uplink",
///         "name": "RHCP_UL",
///         "polarization": "RHCP",
///     }],
///     network_configuration_subnet_id=example_subnet.id)
/// example_contact = azure.orbital.Contact("example",
///     name="example-contact",
///     spacecraft_id=example_spacecraft.id,
///     reservation_start_time="2020-07-16T20:35:00.00Z",
///     reservation_end_time="2020-07-16T20:55:00.00Z",
///     ground_station_name="WESTUS2_0",
///     contact_profile_id=example_contact_profile.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "rg-example",
///         Location = "West Europe",
///     });
///
///     var exampleSpacecraft = new Azure.Orbital.Spacecraft("example", new()
///     {
///         Name = "example-spacecraft",
///         ResourceGroupName = example.Name,
///         Location = "westeurope",
///         NoradId = "12345",
///         Links = new[]
///         {
///             new Azure.Orbital.Inputs.SpacecraftLinkArgs
///             {
///                 BandwidthMhz = 100,
///                 CenterFrequencyMhz = 101,
///                 Direction = "Uplink",
///                 Polarization = "LHCP",
///                 Name = "examplename",
///             },
///         },
///         TwoLineElements = new[]
///         {
///             "1 23455U 94089A   97320.90946019  .00000140  00000-0  10191-3 0  2621",
///             "2 23455  99.0090 272.6745 0008546 223.1686 136.8816 14.11711747148495",
///         },
///         TitleLine = "AQUA",
///         Tags =
///         {
///             { "aks-managed-cluster-name", "9a57225d-a405-4d40-aa46-f13d2342abef" },
///         },
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "orbitalgateway",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Orbital/orbitalGateways",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/publicIPAddresses/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/read",
///                         "Microsoft.Network/publicIPAddresses/read",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleContactProfile = new Azure.Orbital.ContactProfile("example", new()
///     {
///         Name = "example-contactprofile",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         MinimumVariableContactDuration = "PT1M",
///         AutoTracking = "disabled",
///         Links = new[]
///         {
///             new Azure.Orbital.Inputs.ContactProfileLinkArgs
///             {
///                 Channels = new[]
///                 {
///                     new Azure.Orbital.Inputs.ContactProfileLinkChannelArgs
///                     {
///                         Name = "channelname",
///                         BandwidthMhz = 100,
///                         CenterFrequencyMhz = 101,
///                         EndPoints = new[]
///                         {
///                             new Azure.Orbital.Inputs.ContactProfileLinkChannelEndPointArgs
///                             {
///                                 EndPointName = "AQUA_command",
///                                 IpAddress = "10.0.1.0",
///                                 Port = "49153",
///                                 Protocol = "TCP",
///                             },
///                         },
///                     },
///                 },
///                 Direction = "Uplink",
///                 Name = "RHCP_UL",
///                 Polarization = "RHCP",
///             },
///         },
///         NetworkConfigurationSubnetId = exampleSubnet.Id,
///     });
///
///     var exampleContact = new Azure.Orbital.Contact("example", new()
///     {
///         Name = "example-contact",
///         SpacecraftId = exampleSpacecraft.Id,
///         ReservationStartTime = "2020-07-16T20:35:00.00Z",
///         ReservationEndTime = "2020-07-16T20:55:00.00Z",
///         GroundStationName = "WESTUS2_0",
///         ContactProfileId = exampleContactProfile.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/orbital"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpacecraft, err := orbital.NewSpacecraft(ctx, "example", &orbital.SpacecraftArgs{
/// 			Name:              pulumi.String("example-spacecraft"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("westeurope"),
/// 			NoradId:           pulumi.String("12345"),
/// 			Links: orbital.SpacecraftLinkArray{
/// 				&orbital.SpacecraftLinkArgs{
/// 					BandwidthMhz:       pulumi.Float64(100),
/// 					CenterFrequencyMhz: pulumi.Float64(101),
/// 					Direction:          pulumi.String("Uplink"),
/// 					Polarization:       pulumi.String("LHCP"),
/// 					Name:               pulumi.String("examplename"),
/// 				},
/// 			},
/// 			TwoLineElements: pulumi.StringArray{
/// 				pulumi.String("1 23455U 94089A   97320.90946019  .00000140  00000-0  10191-3 0  2621"),
/// 				pulumi.String("2 23455  99.0090 272.6745 0008546 223.1686 136.8816 14.11711747148495"),
/// 			},
/// 			TitleLine: pulumi.String("AQUA"),
/// 			Tags: pulumi.StringMap{
/// 				"aks-managed-cluster-name": pulumi.String("9a57225d-a405-4d40-aa46-f13d2342abef"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("orbitalgateway"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Orbital/orbitalGateways"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/publicIPAddresses/join/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/read"),
/// 							pulumi.String("Microsoft.Network/publicIPAddresses/read"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContactProfile, err := orbital.NewContactProfile(ctx, "example", &orbital.ContactProfileArgs{
/// 			Name:                           pulumi.String("example-contactprofile"),
/// 			ResourceGroupName:              example.Name,
/// 			Location:                       example.Location,
/// 			MinimumVariableContactDuration: pulumi.String("PT1M"),
/// 			AutoTracking:                   pulumi.String("disabled"),
/// 			Links: orbital.ContactProfileLinkArray{
/// 				&orbital.ContactProfileLinkArgs{
/// 					Channels: orbital.ContactProfileLinkChannelArray{
/// 						&orbital.ContactProfileLinkChannelArgs{
/// 							Name:               pulumi.String("channelname"),
/// 							BandwidthMhz:       pulumi.Float64(100),
/// 							CenterFrequencyMhz: pulumi.Float64(101),
/// 							EndPoints: orbital.ContactProfileLinkChannelEndPointArray{
/// 								&orbital.ContactProfileLinkChannelEndPointArgs{
/// 									EndPointName: pulumi.String("AQUA_command"),
/// 									IpAddress:    pulumi.String("10.0.1.0"),
/// 									Port:         pulumi.String("49153"),
/// 									Protocol:     pulumi.String("TCP"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Direction:    pulumi.String("Uplink"),
/// 					Name:         pulumi.String("RHCP_UL"),
/// 					Polarization: pulumi.String("RHCP"),
/// 				},
/// 			},
/// 			NetworkConfigurationSubnetId: exampleSubnet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = orbital.NewContact(ctx, "example", &orbital.ContactArgs{
/// 			Name:                 pulumi.String("example-contact"),
/// 			SpacecraftId:         exampleSpacecraft.ID(),
/// 			ReservationStartTime: pulumi.String("2020-07-16T20:35:00.00Z"),
/// 			ReservationEndTime:   pulumi.String("2020-07-16T20:55:00.00Z"),
/// 			GroundStationName:    pulumi.String("WESTUS2_0"),
/// 			ContactProfileId:     exampleContactProfile.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.orbital.Spacecraft;
/// import com.pulumi.azure.orbital.SpacecraftArgs;
/// import com.pulumi.azure.orbital.inputs.SpacecraftLinkArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.orbital.ContactProfile;
/// import com.pulumi.azure.orbital.ContactProfileArgs;
/// import com.pulumi.azure.orbital.inputs.ContactProfileLinkArgs;
/// import com.pulumi.azure.orbital.Contact;
/// import com.pulumi.azure.orbital.ContactArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("rg-example")
///             .location("West Europe")
///             .build());
///
///         var exampleSpacecraft = new Spacecraft("exampleSpacecraft", SpacecraftArgs.builder()
///             .name("example-spacecraft")
///             .resourceGroupName(example.name())
///             .location("westeurope")
///             .noradId("12345")
///             .links(SpacecraftLinkArgs.builder()
///                 .bandwidthMhz(100.0)
///                 .centerFrequencyMhz(101.0)
///                 .direction("Uplink")
///                 .polarization("LHCP")
///                 .name("examplename")
///                 .build())
///             .twoLineElements(
///                 "1 23455U 94089A   97320.90946019  .00000140  00000-0  10191-3 0  2621",
///                 "2 23455  99.0090 272.6745 0008546 223.1686 136.8816 14.11711747148495")
///             .titleLine("AQUA")
///             .tags(Map.of("aks-managed-cluster-name", "9a57225d-a405-4d40-aa46-f13d2342abef"))
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("orbitalgateway")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Orbital/orbitalGateways")
///                     .actions(
///                         "Microsoft.Network/publicIPAddresses/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/read",
///                         "Microsoft.Network/publicIPAddresses/read")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleContactProfile = new ContactProfile("exampleContactProfile", ContactProfileArgs.builder()
///             .name("example-contactprofile")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .minimumVariableContactDuration("PT1M")
///             .autoTracking("disabled")
///             .links(ContactProfileLinkArgs.builder()
///                 .channels(ContactProfileLinkChannelArgs.builder()
///                     .name("channelname")
///                     .bandwidthMhz(100.0)
///                     .centerFrequencyMhz(101.0)
///                     .endPoints(ContactProfileLinkChannelEndPointArgs.builder()
///                         .endPointName("AQUA_command")
///                         .ipAddress("10.0.1.0")
///                         .port("49153")
///                         .protocol("TCP")
///                         .build())
///                     .build())
///                 .direction("Uplink")
///                 .name("RHCP_UL")
///                 .polarization("RHCP")
///                 .build())
///             .networkConfigurationSubnetId(exampleSubnet.id())
///             .build());
///
///         var exampleContact = new Contact("exampleContact", ContactArgs.builder()
///             .name("example-contact")
///             .spacecraftId(exampleSpacecraft.id())
///             .reservationStartTime("2020-07-16T20:35:00.00Z")
///             .reservationEndTime("2020-07-16T20:55:00.00Z")
///             .groundStationName("WESTUS2_0")
///             .contactProfileId(exampleContactProfile.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: rg-example
///       location: West Europe
///   exampleSpacecraft:
///     type: azure:orbital:Spacecraft
///     name: example
///     properties:
///       name: example-spacecraft
///       resourceGroupName: ${example.name}
///       location: westeurope
///       noradId: '12345'
///       links:
///         - bandwidthMhz: 100
///           centerFrequencyMhz: 101
///           direction: Uplink
///           polarization: LHCP
///           name: examplename
///       twoLineElements:
///         - 1 23455U 94089A   97320.90946019  .00000140  00000-0  10191-3 0  2621
///         - 2 23455  99.0090 272.6745 0008546 223.1686 136.8816 14.11711747148495
///       titleLine: AQUA
///       tags:
///         aks-managed-cluster-name: 9a57225d-a405-4d40-aa46-f13d2342abef
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///       delegations:
///         - name: orbitalgateway
///           serviceDelegation:
///             name: Microsoft.Orbital/orbitalGateways
///             actions:
///               - Microsoft.Network/publicIPAddresses/join/action
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///               - Microsoft.Network/virtualNetworks/read
///               - Microsoft.Network/publicIPAddresses/read
///   exampleContactProfile:
///     type: azure:orbital:ContactProfile
///     name: example
///     properties:
///       name: example-contactprofile
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       minimumVariableContactDuration: PT1M
///       autoTracking: disabled
///       links:
///         - channels:
///             - name: channelname
///               bandwidthMhz: 100
///               centerFrequencyMhz: 101
///               endPoints:
///                 - endPointName: AQUA_command
///                   ipAddress: 10.0.1.0
///                   port: '49153'
///                   protocol: TCP
///           direction: Uplink
///           name: RHCP_UL
///           polarization: RHCP
///       networkConfigurationSubnetId: ${exampleSubnet.id}
///   exampleContact:
///     type: azure:orbital:Contact
///     name: example
///     properties:
///       name: example-contact
///       spacecraftId: ${exampleSpacecraft.id}
///       reservationStartTime: 2020-07-16T20:35:00.00Z
///       reservationEndTime: 2020-07-16T20:55:00.00Z
///       groundStationName: WESTUS2_0
///       contactProfileId: ${exampleContactProfile.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Orbital` - 2022-11-01
///
/// ## Import
///
/// Spacecraft can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:orbital/contact:Contact example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Orbital/spacecrafts/spacecraft1/contacts/contact1
/// ```
class Contact extends pulumi.CustomResource {
  /// ID of the orbital contact profile. Changing this forces a new resource to be created.
  late final pulumi.Output<String> contactProfileId;

  /// Name of the Azure ground station. Changing this forces a new resource to be created.
  late final pulumi.Output<String> groundStationName;

  /// The name of the Contact. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Reservation end time of the Contact. Changing this forces a new resource to be created.
  late final pulumi.Output<String> reservationEndTime;

  /// Reservation start time of the Contact. Changing this forces a new resource to be created.
  late final pulumi.Output<String> reservationStartTime;

  /// The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> spacecraftId;

  /// Creates a new [Contact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Contact]. {@macro pulumi_orbital_contact_contact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Contact(
    String name, {
    ContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:orbital/contact:Contact',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    contactProfileId = registerOutput<String>('contactProfileId');
    groundStationName = registerOutput<String>('groundStationName');
    this.name = registerOutput<String>('name');
    reservationEndTime = registerOutput<String>('reservationEndTime');
    reservationStartTime = registerOutput<String>('reservationStartTime');
    spacecraftId = registerOutput<String>('spacecraftId');
  }

  /// Gets an existing [Contact] resource's state with the given [name] and [id].
  static Contact get(
    String name,
    pulumi.Input<String> id, {
    ContactState? state,
  }) {
    return Contact._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Contact._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:orbital/contact:Contact',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    contactProfileId = registerOutput<String>('contactProfileId');
    groundStationName = registerOutput<String>('groundStationName');
    this.name = registerOutput<String>('name');
    reservationEndTime = registerOutput<String>('reservationEndTime');
    reservationStartTime = registerOutput<String>('reservationStartTime');
    spacecraftId = registerOutput<String>('spacecraftId');
  }
}
