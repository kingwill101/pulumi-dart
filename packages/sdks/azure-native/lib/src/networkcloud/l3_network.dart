import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'l3_network_args.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01-preview, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update L3 network
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var l3Network = new AzureNative.NetworkCloud.L3Network("l3Network", new()
///     {
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///             Type = "CustomLocation",
///         },
///         InterfaceName = "eth0",
///         IpAllocationType = AzureNative.NetworkCloud.IpAllocationType.DualStack,
///         Ipv4ConnectedPrefix = "198.51.100.0/24",
///         Ipv6ConnectedPrefix = "2001:db8::/64",
///         L3IsolationDomainId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName",
///         L3NetworkName = "l3NetworkName",
///         Location = "location",
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "key1", "myvalue1" },
///             { "key2", "myvalue2" },
///         },
///         Vlan = 12,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	networkcloud "github.com/pulumi/pulumi-azure-native-sdk/networkcloud/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkcloud.NewL3Network(ctx, "l3Network", &networkcloud.L3NetworkArgs{
/// 			ExtendedLocation: &networkcloud.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			InterfaceName:       pulumi.String("eth0"),
/// 			IpAllocationType:    pulumi.String(networkcloud.IpAllocationTypeDualStack),
/// 			Ipv4ConnectedPrefix: pulumi.String("198.51.100.0/24"),
/// 			Ipv6ConnectedPrefix: pulumi.String("2001:db8::/64"),
/// 			L3IsolationDomainId: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName"),
/// 			L3NetworkName:       pulumi.String("l3NetworkName"),
/// 			Location:            pulumi.String("location"),
/// 			ResourceGroupName:   pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("myvalue1"),
/// 				"key2": pulumi.String("myvalue2"),
/// 			},
/// 			Vlan: pulumi.Float64(12),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.networkcloud.L3Network;
/// import com.pulumi.azurenative.networkcloud.L3NetworkArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ExtendedLocationArgs;
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
///         var l3Network = new L3Network("l3Network", L3NetworkArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .interfaceName("eth0")
///             .ipAllocationType("DualStack")
///             .ipv4ConnectedPrefix("198.51.100.0/24")
///             .ipv6ConnectedPrefix("2001:db8::/64")
///             .l3IsolationDomainId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName")
///             .l3NetworkName("l3NetworkName")
///             .location("location")
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "myvalue1"),
///                 Map.entry("key2", "myvalue2")
///             ))
///             .vlan(12.0)
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const l3Network = new azure_native.networkcloud.L3Network("l3Network", {
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         type: "CustomLocation",
///     },
///     interfaceName: "eth0",
///     ipAllocationType: azure_native.networkcloud.IpAllocationType.DualStack,
///     ipv4ConnectedPrefix: "198.51.100.0/24",
///     ipv6ConnectedPrefix: "2001:db8::/64",
///     l3IsolationDomainId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName",
///     l3NetworkName: "l3NetworkName",
///     location: "location",
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         key1: "myvalue1",
///         key2: "myvalue2",
///     },
///     vlan: 12,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// l3_network = azure_native.networkcloud.L3Network("l3Network",
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         "type": "CustomLocation",
///     },
///     interface_name="eth0",
///     ip_allocation_type=azure_native.networkcloud.IpAllocationType.DUAL_STACK,
///     ipv4_connected_prefix="198.51.100.0/24",
///     ipv6_connected_prefix="2001:db8::/64",
///     l3_isolation_domain_id="/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName",
///     l3_network_name="l3NetworkName",
///     location="location",
///     resource_group_name="resourceGroupName",
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     },
///     vlan=12)
///
/// ```
///
/// ```yaml
/// resources:
///   l3Network:
///     type: azure-native:networkcloud:L3Network
///     properties:
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName
///         type: CustomLocation
///       interfaceName: eth0
///       ipAllocationType: DualStack
///       ipv4ConnectedPrefix: 198.51.100.0/24
///       ipv6ConnectedPrefix: 2001:db8::/64
///       l3IsolationDomainId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName
///       l3NetworkName: l3NetworkName
///       location: location
///       resourceGroupName: resourceGroupName
///       tags:
///         key1: myvalue1
///         key2: myvalue2
///       vlan: 12
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:networkcloud:L3Network l3NetworkName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/l3Networks/{l3NetworkName}
/// ```
class L3Network extends pulumi.CustomResource {
  /// The list of resource IDs for the other Microsoft.NetworkCloud resources that have attached this network.
  late final pulumi.Output<List<String>> associatedResourceIds;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource ID of the Network Cloud cluster this L3 network is associated with.
  late final pulumi.Output<String> clusterId;
  /// The more detailed status of the L3 network.
  late final pulumi.Output<String> detailedStatus;
  /// The descriptive message about the current detailed status.
  late final pulumi.Output<String> detailedStatusMessage;
  /// Resource ETag.
  late final pulumi.Output<String> etag;
  /// The extended location of the cluster associated with the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// Field Deprecated. These fields will be empty/omitted. The list of Hybrid AKS cluster resource IDs that are associated with this L3 network.
  late final pulumi.Output<List<String>> hybridAksClustersAssociatedIds;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The indicator of whether or not to disable IPAM allocation on the network attachment definition injected into the Hybrid AKS Cluster.
  late final pulumi.Output<String?> hybridAksIpamEnabled;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  late final pulumi.Output<String?> hybridAksPluginType;
  /// The default interface name for this L3 network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  late final pulumi.Output<String?> interfaceName;
  /// The type of the IP address allocation, defaulted to "DualStack".
  late final pulumi.Output<String?> ipAllocationType;
  /// The IPV4 prefix (CIDR) assigned to this L3 network. Required when the IP allocation type
  /// is IPV4 or DualStack.
  late final pulumi.Output<String?> ipv4ConnectedPrefix;
  /// The IPV6 prefix (CIDR) assigned to this L3 network. Required when the IP allocation type
  /// is IPV6 or DualStack.
  late final pulumi.Output<String?> ipv6ConnectedPrefix;
  /// The resource ID of the Network Fabric l3IsolationDomain.
  late final pulumi.Output<String> l3IsolationDomainId;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the L3 network.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Field Deprecated. These fields will be empty/omitted. The list of virtual machine resource IDs, excluding any Hybrid AKS virtual machines, that are currently using this L3 network.
  late final pulumi.Output<List<String>> virtualMachinesAssociatedIds;
  /// The VLAN from the l3IsolationDomain that is used for this network.
  late final pulumi.Output<double> vlan;

  /// Creates a new [L3Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [L3Network]. {@macro pulumi_networkcloud_l3_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  L3Network(
    String name, {
    L3NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:networkcloud:L3Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.associatedResourceIds = registerOutput<List<String>>('associatedResourceIds');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.clusterId = registerOutput<String>('clusterId');
    this.detailedStatus = registerOutput<String>('detailedStatus');
    this.detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    this.etag = registerOutput<String>('etag');
    this.extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation');
    this.hybridAksClustersAssociatedIds = registerOutput<List<String>>('hybridAksClustersAssociatedIds');
    this.hybridAksIpamEnabled = registerOutput<String?>('hybridAksIpamEnabled');
    this.hybridAksPluginType = registerOutput<String?>('hybridAksPluginType');
    this.interfaceName = registerOutput<String?>('interfaceName');
    this.ipAllocationType = registerOutput<String?>('ipAllocationType');
    this.ipv4ConnectedPrefix = registerOutput<String?>('ipv4ConnectedPrefix');
    this.ipv6ConnectedPrefix = registerOutput<String?>('ipv6ConnectedPrefix');
    this.l3IsolationDomainId = registerOutput<String>('l3IsolationDomainId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.virtualMachinesAssociatedIds = registerOutput<List<String>>('virtualMachinesAssociatedIds');
    this.vlan = registerOutput<double>('vlan');
  }
}
