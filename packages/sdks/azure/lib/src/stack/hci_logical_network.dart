import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_logical_network_args.dart';
import 'hci_logical_network_state.dart';
import 'hci_logical_network_subnet.dart';

/// Manages an Azure Stack HCI Logical Network.
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
///         vlanId: 123,
///         route: {
///             addressPrefix: "0.0.0.0/0",
///             nextHopIpAddress: "10.0.0.1",
///         },
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
///         "vlan_id": 123,
///         "route": {
///             "addressPrefix": "0.0.0.0/0",
///             "nextHopIpAddress": "10.0.0.1",
///         },
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
///             VlanId = 123,
///             Route =
///             {
///                 { "addressPrefix", "0.0.0.0/0" },
///                 { "nextHopIpAddress", "10.0.0.1" },
///             },
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
/// 				VlanId:             pulumi.Int(123),
/// 				Route: map[string]interface{}{
/// 					"addressPrefix":    "0.0.0.0/0",
/// 					"nextHopIpAddress": "10.0.0.1",
/// 				},
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
///                 .vlanId(123)
///                 .route(Map.ofEntries(
///                     Map.entry("addressPrefix", "0.0.0.0/0"),
///                     Map.entry("nextHopIpAddress", "10.0.0.1")
///                 ))
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
///         vlanId: 123
///         route:
///           addressPrefix: 0.0.0.0/0
///           nextHopIpAddress: 10.0.0.1
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
/// Azure Stack HCI Logical Networks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:stack/hciLogicalNetwork:HciLogicalNetwork example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AzureStackHCI/logicalNetworks/ln1
/// ```
class HciLogicalNetwork extends pulumi.CustomResource {
  /// The ID of Custom Location where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> customLocationId;

  /// A list of IPv4 addresses of DNS servers available to VMs deployed in the Logical Networks. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> dnsServers;

  /// The Azure Region where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this Azure Stack HCI Logical Network. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `subnet` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<HciLogicalNetworkSubnet> subnet;

  /// A mapping of tags which should be assigned to the Azure Stack HCI Logical Network.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The name of the virtual switch on the cluster used to associate with the Azure Stack HCI Logical Network. Possible switch names can be retrieved by following this [Azure guide](https://learn.microsoft.com/azure-stack/hci/manage/create-logical-networks?tabs=azurecli#prerequisites). Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualSwitchName;

  /// Creates a new [HciLogicalNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HciLogicalNetwork]. {@macro pulumi_stack_hci_logical_network_hci_logical_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HciLogicalNetwork(
    String name, {
    HciLogicalNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:stack/hciLogicalNetwork:HciLogicalNetwork',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customLocationId = registerOutput<String>('customLocationId');
    dnsServers = registerOutput<List<String>?>('dnsServers');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnet = registerOutput<HciLogicalNetworkSubnet>(
      'subnet',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HciLogicalNetworkSubnet.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    virtualSwitchName = registerOutput<String>('virtualSwitchName');
  }

  /// Gets an existing [HciLogicalNetwork] resource's state with the given [name] and [id].
  static HciLogicalNetwork get(
    String name,
    pulumi.Input<String> id, {
    HciLogicalNetworkState? state,
  }) {
    return HciLogicalNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HciLogicalNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:stack/hciLogicalNetwork:HciLogicalNetwork',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customLocationId = registerOutput<String>('customLocationId');
    dnsServers = registerOutput<List<String>?>('dnsServers');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnet = registerOutput<HciLogicalNetworkSubnet>(
      'subnet',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HciLogicalNetworkSubnet.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    virtualSwitchName = registerOutput<String>('virtualSwitchName');
  }
}
