import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_bridge_args.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// AccessBridge represents a managed access bridge resource.
///
/// Uses Azure REST API version 2026-01-01-preview.
///
/// Other available API versions: 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update access bridge
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var accessBridge = new AzureNative.NetworkCloud.AccessBridge("accessBridge", new()
///     {
///         AccessBridgeName = "Bastion",
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///             Type = AzureNative.NetworkCloud.ExtendedLocationType.CustomLocation,
///         },
///         Ipv4ConnectedPrefix = "198.51.100.0/24",
///         Ipv6ConnectedPrefix = "2001:db8::/64",
///         Location = "location",
///         NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName/internalNetworks/internalNetworkName",
///         ResourceGroupName = "resourceGroupName",
///         SecurityRules = new[]
///         {
///             new AzureNative.NetworkCloud.Inputs.AccessBridgeSecurityRuleArgs
///             {
///                 Description = "Allow management plane egress",
///                 Direction = AzureNative.NetworkCloud.SecurityRuleDirection.Outbound,
///                 Ipv4Addresses = new[]
///                 {
///                     "10.10.20.10-10.10.20.20",
///                 },
///                 Ipv6Addresses = new[]
///                 {
///                     "2001:db8:abcd:12::1000-2001:db8:abcd:12::1fff",
///                 },
///                 Port = "24562-24570",
///             },
///         },
///         Tags =
///         {
///             { "key1", "myvalue1" },
///             { "key2", "myvalue2" },
///         },
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
/// 		_, err := networkcloud.NewAccessBridge(ctx, "accessBridge", &networkcloud.AccessBridgeArgs{
/// 			AccessBridgeName: pulumi.String("Bastion"),
/// 			ExtendedLocation: &networkcloud.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"),
/// 				Type: pulumi.String(networkcloud.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			Ipv4ConnectedPrefix: pulumi.String("198.51.100.0/24"),
/// 			Ipv6ConnectedPrefix: pulumi.String("2001:db8::/64"),
/// 			Location:            pulumi.String("location"),
/// 			NetworkId:           pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName/internalNetworks/internalNetworkName"),
/// 			ResourceGroupName:   pulumi.String("resourceGroupName"),
/// 			SecurityRules: networkcloud.AccessBridgeSecurityRuleArray{
/// 				&networkcloud.AccessBridgeSecurityRuleArgs{
/// 					Description: pulumi.String("Allow management plane egress"),
/// 					Direction:   pulumi.String(networkcloud.SecurityRuleDirectionOutbound),
/// 					Ipv4Addresses: pulumi.StringArray{
/// 						pulumi.String("10.10.20.10-10.10.20.20"),
/// 					},
/// 					Ipv6Addresses: pulumi.StringArray{
/// 						pulumi.String("2001:db8:abcd:12::1000-2001:db8:abcd:12::1fff"),
/// 					},
/// 					Port: pulumi.String("24562-24570"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("myvalue1"),
/// 				"key2": pulumi.String("myvalue2"),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_networkcloud_accessbridge" "accessBridge" {
///   access_bridge_name = "Bastion"
///   extended_location = {
///     name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"
///     type = "CustomLocation"
///   }
///   ipv4_connected_prefix = "198.51.100.0/24"
///   ipv6_connected_prefix = "2001:db8::/64"
///   location              = "location"
///   network_id            = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName/internalNetworks/internalNetworkName"
///   resource_group_name   = "resourceGroupName"
///   security_rules {
///     description    = "Allow management plane egress"
///     direction      = "Outbound"
///     ipv4_addresses = ["10.10.20.10-10.10.20.20"]
///     ipv6_addresses = ["2001:db8:abcd:12::1000-2001:db8:abcd:12::1fff"]
///     port           = "24562-24570"
///   }
///   tags = {
///     "key1" = "myvalue1"
///     "key2" = "myvalue2"
///   }
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
/// import com.pulumi.azurenative.networkcloud.AccessBridge;
/// import com.pulumi.azurenative.networkcloud.AccessBridgeArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AccessBridgeSecurityRuleArgs;
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
///         var accessBridge = new AccessBridge("accessBridge", AccessBridgeArgs.builder()
///             .accessBridgeName("Bastion")
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .ipv4ConnectedPrefix("198.51.100.0/24")
///             .ipv6ConnectedPrefix("2001:db8::/64")
///             .location("location")
///             .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName/internalNetworks/internalNetworkName")
///             .resourceGroupName("resourceGroupName")
///             .securityRules(AccessBridgeSecurityRuleArgs.builder()
///                 .description("Allow management plane egress")
///                 .direction("Outbound")
///                 .ipv4Addresses("10.10.20.10-10.10.20.20")
///                 .ipv6Addresses("2001:db8:abcd:12::1000-2001:db8:abcd:12::1fff")
///                 .port("24562-24570")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "myvalue1"),
///                 Map.entry("key2", "myvalue2")
///             ))
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
/// const accessBridge = new azure_native.networkcloud.AccessBridge("accessBridge", {
///     accessBridgeName: "Bastion",
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         type: azure_native.networkcloud.ExtendedLocationType.CustomLocation,
///     },
///     ipv4ConnectedPrefix: "198.51.100.0/24",
///     ipv6ConnectedPrefix: "2001:db8::/64",
///     location: "location",
///     networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName/internalNetworks/internalNetworkName",
///     resourceGroupName: "resourceGroupName",
///     securityRules: [{
///         description: "Allow management plane egress",
///         direction: azure_native.networkcloud.SecurityRuleDirection.Outbound,
///         ipv4Addresses: ["10.10.20.10-10.10.20.20"],
///         ipv6Addresses: ["2001:db8:abcd:12::1000-2001:db8:abcd:12::1fff"],
///         port: "24562-24570",
///     }],
///     tags: {
///         key1: "myvalue1",
///         key2: "myvalue2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// access_bridge = azure_native.networkcloud.AccessBridge("accessBridge",
///     access_bridge_name="Bastion",
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         "type": azure_native.networkcloud.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     ipv4_connected_prefix="198.51.100.0/24",
///     ipv6_connected_prefix="2001:db8::/64",
///     location="location",
///     network_id="/subscriptions/123e4567-e89b-12d3-a456-426655440000/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName/internalNetworks/internalNetworkName",
///     resource_group_name="resourceGroupName",
///     security_rules=[{
///         "description": "Allow management plane egress",
///         "direction": azure_native.networkcloud.SecurityRuleDirection.OUTBOUND,
///         "ipv4_addresses": ["10.10.20.10-10.10.20.20"],
///         "ipv6_addresses": ["2001:db8:abcd:12::1000-2001:db8:abcd:12::1fff"],
///         "port": "24562-24570",
///     }],
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   accessBridge:
///     type: azure-native:networkcloud:AccessBridge
///     properties:
///       accessBridgeName: Bastion
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName
///         type: CustomLocation
///       ipv4ConnectedPrefix: 198.51.100.0/24
///       ipv6ConnectedPrefix: 2001:db8::/64
///       location: location
///       networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/l3IsolationDomainName/internalNetworks/internalNetworkName
///       resourceGroupName: resourceGroupName
///       securityRules:
///         - description: Allow management plane egress
///           direction: Outbound
///           ipv4Addresses:
///             - 10.10.20.10-10.10.20.20
///           ipv6Addresses:
///             - 2001:db8:abcd:12::1000-2001:db8:abcd:12::1fff
///           port: 24562-24570
///       tags:
///         key1: myvalue1
///         key2: myvalue2
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
/// $ pulumi import azure-native:networkcloud:AccessBridge accessBridgeName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/accessBridges/{accessBridgeName}
/// ```
class AccessBridge extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The detailed status reported by the access bridge.
  late final pulumi.Output<String> detailedStatus;
  /// The descriptive message that accompanies the detailed status.
  late final pulumi.Output<String> detailedStatusMessage;
  /// The observed endpoints that clients should use to reach the access bridge.
  late final pulumi.Output<List<Map<String, dynamic>>> endpoints;
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  late final pulumi.Output<String> etag;
  /// The extended location of the resource. This property is required when creating the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// The IPv4 subnet from which the access bridge allocates an address. This subnet must be part of the internal network specified by networkId.
  late final pulumi.Output<String?> ipv4ConnectedPrefix;
  /// The IPv6 subnet from which the access bridge allocates an address. This subnet must be part of the internal network specified by networkId.
  late final pulumi.Output<String?> ipv6ConnectedPrefix;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource ID of the internal network in a layer 3 isolation domain containing the IP subnets to use.
  late final pulumi.Output<String> networkId;
  /// The protocol advertised by the access bridge endpoints.
  late final pulumi.Output<String> protocol;
  /// The provisioning state of the access bridge.
  late final pulumi.Output<String> provisioningState;
  /// The list of security rules enforced by the access bridge.
  late final pulumi.Output<List<Map<String, dynamic>>?> securityRules;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AccessBridge].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessBridge]. {@macro pulumi_networkcloud_access_bridge_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessBridge(
    String name, {
    AccessBridgeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:networkcloud:AccessBridge',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    endpoints = registerOutput<List<Map<String, dynamic>>>('endpoints');
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipv4ConnectedPrefix = registerOutput<String?>('ipv4ConnectedPrefix');
    ipv6ConnectedPrefix = registerOutput<String?>('ipv6ConnectedPrefix');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkId = registerOutput<String>('networkId');
    protocol = registerOutput<String>('protocol');
    provisioningState = registerOutput<String>('provisioningState');
    securityRules = registerOutput<List<Map<String, dynamic>>?>('securityRules');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
