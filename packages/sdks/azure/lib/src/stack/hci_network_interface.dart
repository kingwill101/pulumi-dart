import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_network_interface_args.dart';
import 'hci_network_interface_ip_configuration.dart';
import 'hci_network_interface_state.dart';

/// Manages an Azure Stack HCI Network Interface.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleHciLogicalNetwork = new azure.stack.HciLogicalNetwork("example", {
///     name: "example-hci-ln",
///     resourceGroupName: example.name,
///     location: example.location,
///     customLocationId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///     virtualSwitchName: "ConvergedSwitch(managementcompute)",
///     dnsServers: [
///         "10.0.0.7",
///         "10.0.0.8",
///     ],
///     subnet: {
///         ipAllocationMethod: "Static",
///         addressPrefix: "10.0.0.0/24",
///         route: {
///             name: "example-route",
///             addressPrefix: "0.0.0.0/0",
///             nextHopIpAddress: "10.0.20.1",
///         },
///         vlanId: 123,
///     },
///     tags: {
///         foo: "bar",
///     },
/// });
/// const exampleHciNetworkInterface = new azure.stack.HciNetworkInterface("example", {
///     name: "example-ni",
///     resourceGroupName: example.name,
///     location: example.location,
///     customLocationId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///     dnsServers: ["10.0.0.8"],
///     ipConfiguration: {
///         privateIpAddress: "10.0.0.2",
///         subnetId: test.id,
///     },
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_hci_logical_network = azure.stack.HciLogicalNetwork("example",
///     name="example-hci-ln",
///     resource_group_name=example.name,
///     location=example.location,
///     custom_location_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///     virtual_switch_name="ConvergedSwitch(managementcompute)",
///     dns_servers=[
///         "10.0.0.7",
///         "10.0.0.8",
///     ],
///     subnet={
///         "ip_allocation_method": "Static",
///         "address_prefix": "10.0.0.0/24",
///         "route": {
///             "name": "example-route",
///             "addressPrefix": "0.0.0.0/0",
///             "nextHopIpAddress": "10.0.20.1",
///         },
///         "vlan_id": 123,
///     },
///     tags={
///         "foo": "bar",
///     })
/// example_hci_network_interface = azure.stack.HciNetworkInterface("example",
///     name="example-ni",
///     resource_group_name=example.name,
///     location=example.location,
///     custom_location_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///     dns_servers=["10.0.0.8"],
///     ip_configuration={
///         "private_ip_address": "10.0.0.2",
///         "subnet_id": test["id"],
///     },
///     tags={
///         "foo": "bar",
///     })
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleHciLogicalNetwork = new Azure.Stack.HciLogicalNetwork("example", new()
///     {
///         Name = "example-hci-ln",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         CustomLocationId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///         VirtualSwitchName = "ConvergedSwitch(managementcompute)",
///         DnsServers = new[]
///         {
///             "10.0.0.7",
///             "10.0.0.8",
///         },
///         Subnet = new Azure.Stack.Inputs.HciLogicalNetworkSubnetArgs
///         {
///             IpAllocationMethod = "Static",
///             AddressPrefix = "10.0.0.0/24",
///             Route =
///             {
///                 { "name", "example-route" },
///                 { "addressPrefix", "0.0.0.0/0" },
///                 { "nextHopIpAddress", "10.0.20.1" },
///             },
///             VlanId = 123,
///         },
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     var exampleHciNetworkInterface = new Azure.Stack.HciNetworkInterface("example", new()
///     {
///         Name = "example-ni",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         CustomLocationId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///         DnsServers = new[]
///         {
///             "10.0.0.8",
///         },
///         IpConfiguration = new Azure.Stack.Inputs.HciNetworkInterfaceIpConfigurationArgs
///         {
///             PrivateIpAddress = "10.0.0.2",
///             SubnetId = test.Id,
///         },
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/stack"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = stack.NewHciLogicalNetwork(ctx, "example", &stack.HciLogicalNetworkArgs{
/// 			Name:              pulumi.String("example-hci-ln"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			CustomLocationId:  pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1"),
/// 			VirtualSwitchName: pulumi.String("ConvergedSwitch(managementcompute)"),
/// 			DnsServers: pulumi.StringArray{
/// 				pulumi.String("10.0.0.7"),
/// 				pulumi.String("10.0.0.8"),
/// 			},
/// 			Subnet: &stack.HciLogicalNetworkSubnetArgs{
/// 				IpAllocationMethod: pulumi.String("Static"),
/// 				AddressPrefix:      pulumi.String("10.0.0.0/24"),
/// 				Route: map[string]interface{}{
/// 					"name":             "example-route",
/// 					"addressPrefix":    "0.0.0.0/0",
/// 					"nextHopIpAddress": "10.0.20.1",
/// 				},
/// 				VlanId: pulumi.Int(123),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = stack.NewHciNetworkInterface(ctx, "example", &stack.HciNetworkInterfaceArgs{
/// 			Name:              pulumi.String("example-ni"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			CustomLocationId:  pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1"),
/// 			DnsServers: pulumi.StringArray{
/// 				pulumi.String("10.0.0.8"),
/// 			},
/// 			IpConfiguration: &stack.HciNetworkInterfaceIpConfigurationArgs{
/// 				PrivateIpAddress: pulumi.String("10.0.0.2"),
/// 				SubnetId:         pulumi.Any(test.Id),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
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
/// import com.pulumi.azure.stack.HciLogicalNetwork;
/// import com.pulumi.azure.stack.HciLogicalNetworkArgs;
/// import com.pulumi.azure.stack.inputs.HciLogicalNetworkSubnetArgs;
/// import com.pulumi.azure.stack.HciNetworkInterface;
/// import com.pulumi.azure.stack.HciNetworkInterfaceArgs;
/// import com.pulumi.azure.stack.inputs.HciNetworkInterfaceIpConfigurationArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleHciLogicalNetwork = new HciLogicalNetwork("exampleHciLogicalNetwork", HciLogicalNetworkArgs.builder()
///             .name("example-hci-ln")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .customLocationId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1")
///             .virtualSwitchName("ConvergedSwitch(managementcompute)")
///             .dnsServers(
///                 "10.0.0.7",
///                 "10.0.0.8")
///             .subnet(HciLogicalNetworkSubnetArgs.builder()
///                 .ipAllocationMethod("Static")
///                 .addressPrefix("10.0.0.0/24")
///                 .route(Map.ofEntries(
///                     Map.entry("name", "example-route"),
///                     Map.entry("addressPrefix", "0.0.0.0/0"),
///                     Map.entry("nextHopIpAddress", "10.0.20.1")
///                 ))
///                 .vlanId(123)
///                 .build())
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///         var exampleHciNetworkInterface = new HciNetworkInterface("exampleHciNetworkInterface", HciNetworkInterfaceArgs.builder()
///             .name("example-ni")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .customLocationId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1")
///             .dnsServers("10.0.0.8")
///             .ipConfiguration(HciNetworkInterfaceIpConfigurationArgs.builder()
///                 .privateIpAddress("10.0.0.2")
///                 .subnetId(test.id())
///                 .build())
///             .tags(Map.of("foo", "bar"))
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
///       name: example-rg
///       location: West Europe
///   exampleHciLogicalNetwork:
///     type: azure:stack:HciLogicalNetwork
///     name: example
///     properties:
///       name: example-hci-ln
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       customLocationId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1
///       virtualSwitchName: ConvergedSwitch(managementcompute)
///       dnsServers:
///         - 10.0.0.7
///         - 10.0.0.8
///       subnet:
///         ipAllocationMethod: Static
///         addressPrefix: 10.0.0.0/24
///         route:
///           name: example-route
///           addressPrefix: 0.0.0.0/0
///           nextHopIpAddress: 10.0.20.1
///         vlanId: 123
///       tags:
///         foo: bar
///   exampleHciNetworkInterface:
///     type: azure:stack:HciNetworkInterface
///     name: example
///     properties:
///       name: example-ni
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       customLocationId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1
///       dnsServers:
///         - 10.0.0.8
///       ipConfiguration:
///         privateIpAddress: 10.0.0.2
///         subnetId: ${test.id}
///       tags:
///         foo: bar
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AzureStackHCI` - 2024-01-01
///
/// ## Import
///
/// Azure Stack HCI Network Interfaces can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:stack/hciNetworkInterface:HciNetworkInterface example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AzureStackHCI/networkInterfaces/ni1
/// ```
class HciNetworkInterface extends pulumi.CustomResource {
  /// The ID of the Custom Location where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> customLocationId;
  /// A list of IPv4 addresses of DNS servers available to VMs deployed in the Network Interface. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> dnsServers;
  /// An `ip_configuration` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<HciNetworkInterfaceIpConfiguration> ipConfiguration;
  /// The Azure Region where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The MAC address of the Network Interface. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If `mac_address` is not specified, it will be assigned by the server. If you experience a diff you may need to add this to `ignore_changes`.
  late final pulumi.Output<String?> macAddress;
  /// The name which should be used for this Azure Stack HCI Network Interface. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Network Interface.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [HciNetworkInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HciNetworkInterface]. {@macro pulumi_stack_hci_network_interface_hci_network_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HciNetworkInterface(
    String name, {
    HciNetworkInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:stack/hciNetworkInterface:HciNetworkInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customLocationId = registerOutput<String>('customLocationId');
    dnsServers = registerOutput<List<String>?>('dnsServers');
    ipConfiguration = registerOutput<HciNetworkInterfaceIpConfiguration>('ipConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HciNetworkInterfaceIpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    macAddress = registerOutput<String?>('macAddress');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [HciNetworkInterface] resource's state with the given [name] and [id].
  static HciNetworkInterface get(
    String name,
    pulumi.Input<String> id, {
    HciNetworkInterfaceState? state,
  }) {
    return HciNetworkInterface._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HciNetworkInterface._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:stack/hciNetworkInterface:HciNetworkInterface',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customLocationId = registerOutput<String>('customLocationId');
    dnsServers = registerOutput<List<String>?>('dnsServers');
    ipConfiguration = registerOutput<HciNetworkInterfaceIpConfiguration>('ipConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HciNetworkInterfaceIpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    macAddress = registerOutput<String?>('macAddress');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
