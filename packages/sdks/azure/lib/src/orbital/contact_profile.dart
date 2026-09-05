import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_profile_args.dart';
import 'contact_profile_link.dart';
import 'contact_profile_state.dart';

/// Manages a Contact profile.
///
/// &gt; **Note:** The `azure.orbital.ContactProfile` resource has been deprecated and will be removed in v5.0 of the AzureRM Provider.
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
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "testvnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "testsubnet",
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
///     name: "example-contact-profile",
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
///                 port: "49513",
///                 protocol: "TCP",
///             }],
///         }],
///         direction: "Uplink",
///         name: "RHCP_UL",
///         polarization: "RHCP",
///     }],
///     networkConfigurationSubnetId: exampleSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="testvnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="testsubnet",
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
///     name="example-contact-profile",
///     resource_group_name=example.name,
///     location=example.location,
///     minimum_variable_contact_duration="PT1M",
///     auto_tracking="disabled",
///     links=[{
///         "channels": [{
///             "name": "channelname",
///             "bandwidth_mhz": float(100),
///             "center_frequency_mhz": float(101),
///             "end_points": [{
///                 "end_point_name": "AQUA_command",
///                 "ip_address": "10.0.1.0",
///                 "port": "49513",
///                 "protocol": "TCP",
///             }],
///         }],
///         "direction": "Uplink",
///         "name": "RHCP_UL",
///         "polarization": "RHCP",
///     }],
///     network_configuration_subnet_id=example_subnet.id)
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
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "testvnet",
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
///         Name = "testsubnet",
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
///         Name = "example-contact-profile",
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
///                                 Port = "49513",
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
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("testvnet"),
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
/// 			Name:               pulumi.String("testsubnet"),
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
/// 		_, err = orbital.NewContactProfile(ctx, "example", &orbital.ContactProfileArgs{
/// 			Name:                           pulumi.String("example-contact-profile"),
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
/// 									Port:         pulumi.String("49513"),
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
/// 			NetworkConfigurationSubnetId: exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "rg-example"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "testvnet"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "testsubnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.1.0/24"]
///   delegations {
///     name = "orbitalgateway"
///     service_delegation = {
///       name    = "Microsoft.Orbital/orbitalGateways"
///       actions = ["Microsoft.Network/publicIPAddresses/join/action", "Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/read", "Microsoft.Network/publicIPAddresses/read"]
///     }
///   }
/// }
/// resource "azure_orbital_contactprofile" "example" {
///   name                              = "example-contact-profile"
///   resource_group_name               = azure_core_resourcegroup.example.name
///   location                          = azure_core_resourcegroup.example.location
///   minimum_variable_contact_duration = "PT1M"
///   auto_tracking                     = "disabled"
///   links {
///     channels {
///       name                 = "channelname"
///       bandwidth_mhz        = 100
///       center_frequency_mhz = 101
///       end_points {
///         end_point_name = "AQUA_command"
///         ip_address     = "10.0.1.0"
///         port           = "49513"
///         protocol       = "TCP"
///       }
///     }
///     direction    = "Uplink"
///     name         = "RHCP_UL"
///     polarization = "RHCP"
///   }
///   network_configuration_subnet_id = azure_network_subnet.example.id
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.orbital.ContactProfile;
/// import com.pulumi.azure.orbital.ContactProfileArgs;
/// import com.pulumi.azure.orbital.inputs.ContactProfileLinkArgs;
/// import com.pulumi.azure.orbital.inputs.ContactProfileLinkChannelArgs;
/// import com.pulumi.azure.orbital.inputs.ContactProfileLinkChannelEndPointArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("testvnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("testsubnet")
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
///             .name("example-contact-profile")
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
///                         .port("49513")
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
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: testvnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: testsubnet
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
///       name: example-contact-profile
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
///                   port: '49513'
///                   protocol: TCP
///           direction: Uplink
///           name: RHCP_UL
///           polarization: RHCP
///       networkConfigurationSubnetId: ${exampleSubnet.id}
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
/// Contact profile can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:orbital/contactProfile:ContactProfile example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Orbital/contactProfiles/contactProfile1
/// ```
class ContactProfile extends pulumi.CustomResource {
  /// Auto-tracking configurations for a spacecraft. Possible values are `disabled`, `xBand` and `sBand`.
  late final pulumi.Output<String> autoTracking;
  /// ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub.
  late final pulumi.Output<String?> eventHubUri;
  /// A list of spacecraft links. A `links` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<ContactProfileLink>> links;
  /// The location where the contact profile exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Maximum elevation of the antenna during the contact in decimal degrees.
  late final pulumi.Output<double?> minimumElevationDegrees;
  /// Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station.
  late final pulumi.Output<String> minimumVariableContactDuration;
  /// The name of the contact profile. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// ARM resource identifier of the subnet delegated to the Microsoft.Orbital/orbitalGateways. Needs to be at least a class C subnet, and should not have any IP created in it. Changing this forces a new resource to be created.
  late final pulumi.Output<String> networkConfigurationSubnetId;
  /// The name of the Resource Group where the contact profile exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ContactProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContactProfile]. {@macro pulumi_orbital_contact_profile_contact_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContactProfile(
    String name, {
    ContactProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:orbital/contactProfile:ContactProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    autoTracking = registerOutput<String>('autoTracking');
    eventHubUri = registerOutput<String?>('eventHubUri');
    links = registerOutput<List<ContactProfileLink>>('links', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContactProfileLink>(guardedValue, (value) => ContactProfileLink.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    minimumElevationDegrees = registerOutput<double?>('minimumElevationDegrees');
    minimumVariableContactDuration = registerOutput<String>('minimumVariableContactDuration');
    this.name = registerOutput<String>('name');
    networkConfigurationSubnetId = registerOutput<String>('networkConfigurationSubnetId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ContactProfile] resource's state with the given [name] and [id].
  static ContactProfile get(
    String name,
    pulumi.Input<String> id, {
    ContactProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ContactProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ContactProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:orbital/contactProfile:ContactProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoTracking = registerOutput<String>('autoTracking');
    eventHubUri = registerOutput<String?>('eventHubUri');
    links = registerOutput<List<ContactProfileLink>>('links', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContactProfileLink>(guardedValue, (value) => ContactProfileLink.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    minimumElevationDegrees = registerOutput<double?>('minimumElevationDegrees');
    minimumVariableContactDuration = registerOutput<String>('minimumVariableContactDuration');
    this.name = registerOutput<String>('name');
    networkConfigurationSubnetId = registerOutput<String>('networkConfigurationSubnetId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ContactProfile] resource.
  ContactProfile.reference(String urn)
    : super(
        'azure:orbital/contactProfile:ContactProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoTracking = registerOutput<String>('autoTracking');
    eventHubUri = registerOutput<String?>('eventHubUri');
    links = registerOutput<List<ContactProfileLink>>('links', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContactProfileLink>(guardedValue, (value) => ContactProfileLink.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    minimumElevationDegrees = registerOutput<double?>('minimumElevationDegrees');
    minimumVariableContactDuration = registerOutput<String>('minimumVariableContactDuration');
    this.name = registerOutput<String>('name');
    networkConfigurationSubnetId = registerOutput<String>('networkConfigurationSubnetId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
