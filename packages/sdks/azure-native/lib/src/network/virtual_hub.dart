import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'virtual_hub_args.dart';
import 'virtual_hub_route_table_response.dart';
import 'virtual_router_auto_scale_configuration_response.dart';

/// VirtualHub Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VirtualHubPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualHub = new AzureNative.Network.VirtualHub("virtualHub", new()
///     {
///         AddressPrefix = "10.168.0.0/24",
///         Location = "West US",
///         ResourceGroupName = "rg1",
///         Sku = "Basic",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         VirtualHubName = "virtualHub2",
///         VirtualWan = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWans/virtualWan1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewVirtualHub(ctx, "virtualHub", &network.VirtualHubArgs{
/// 			AddressPrefix:     pulumi.String("10.168.0.0/24"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku:               pulumi.String("Basic"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			VirtualHubName: pulumi.String("virtualHub2"),
/// 			VirtualWan: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWans/virtualWan1"),
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
/// resource "azure-native_network_virtualhub" "virtualHub" {
///   address_prefix      = "10.168.0.0/24"
///   location            = "West US"
///   resource_group_name = "rg1"
///   sku                 = "Basic"
///   tags = {
///     "key1" = "value1"
///   }
///   virtual_hub_name = "virtualHub2"
///   virtual_wan = {
///     id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWans/virtualWan1"
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
/// import com.pulumi.azurenative.network.VirtualHub;
/// import com.pulumi.azurenative.network.VirtualHubArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var virtualHub = new VirtualHub("virtualHub", VirtualHubArgs.builder()
///             .addressPrefix("10.168.0.0/24")
///             .location("West US")
///             .resourceGroupName("rg1")
///             .sku("Basic")
///             .tags(Map.of("key1", "value1"))
///             .virtualHubName("virtualHub2")
///             .virtualWan(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWans/virtualWan1")
///                 .build())
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
/// const virtualHub = new azure_native.network.VirtualHub("virtualHub", {
///     addressPrefix: "10.168.0.0/24",
///     location: "West US",
///     resourceGroupName: "rg1",
///     sku: "Basic",
///     tags: {
///         key1: "value1",
///     },
///     virtualHubName: "virtualHub2",
///     virtualWan: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWans/virtualWan1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_hub = azure_native.network.VirtualHub("virtualHub",
///     address_prefix="10.168.0.0/24",
///     location="West US",
///     resource_group_name="rg1",
///     sku="Basic",
///     tags={
///         "key1": "value1",
///     },
///     virtual_hub_name="virtualHub2",
///     virtual_wan={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWans/virtualWan1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   virtualHub:
///     type: azure-native:network:VirtualHub
///     properties:
///       addressPrefix: 10.168.0.0/24
///       location: West US
///       resourceGroupName: rg1
///       sku: Basic
///       tags:
///         key1: value1
///       virtualHubName: virtualHub2
///       virtualWan:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWans/virtualWan1
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
/// $ pulumi import azure-native:network:VirtualHub virtualHub2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualHubs/{virtualHubName}
/// ```
class VirtualHub extends pulumi.CustomResource {
  /// Address-prefix for this VirtualHub.
  late final pulumi.Output<String?> addressPrefix;
  /// Flag to control transit for VirtualRouter hub.
  late final pulumi.Output<bool?> allowBranchToBranchTraffic;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The azureFirewall associated with this VirtualHub.
  late final pulumi.Output<SubResourceResponse?> azureFirewall;
  /// List of references to Bgp Connections.
  late final pulumi.Output<List<Map<String, dynamic>>> bgpConnections;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The expressRouteGateway associated with this VirtualHub.
  late final pulumi.Output<SubResourceResponse?> expressRouteGateway;
  /// The hubRoutingPreference of this VirtualHub.
  late final pulumi.Output<String?> hubRoutingPreference;
  /// List of references to IpConfigurations.
  late final pulumi.Output<List<Map<String, dynamic>>> ipConfigurations;
  /// Kind of service virtual hub. This is metadata used for the Azure portal experience for Route Server.
  late final pulumi.Output<String> kind;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The P2SVpnGateway associated with this VirtualHub.
  late final pulumi.Output<SubResourceResponse?> p2SVpnGateway;
  /// The preferred gateway to route on-prem traffic
  late final pulumi.Output<String?> preferredRoutingGateway;
  /// The provisioning state of the virtual hub resource.
  late final pulumi.Output<String> provisioningState;
  /// List of references to RouteMaps.
  late final pulumi.Output<List<Map<String, dynamic>>> routeMaps;
  /// The routeTable associated with this virtual hub.
  late final pulumi.Output<VirtualHubRouteTableResponse?> routeTable;
  /// The routing state.
  late final pulumi.Output<String> routingState;
  /// The securityPartnerProvider associated with this VirtualHub.
  late final pulumi.Output<SubResourceResponse?> securityPartnerProvider;
  /// The Security Provider name.
  late final pulumi.Output<String?> securityProviderName;
  /// The sku of this VirtualHub.
  late final pulumi.Output<String?> sku;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// List of all virtual hub route table v2s associated with this VirtualHub.
  late final pulumi.Output<List<Map<String, dynamic>>?> virtualHubRouteTableV2s;
  /// VirtualRouter ASN.
  late final pulumi.Output<double?> virtualRouterAsn;
  /// The VirtualHub Router autoscale configuration.
  late final pulumi.Output<VirtualRouterAutoScaleConfigurationResponse?> virtualRouterAutoScaleConfiguration;
  /// VirtualRouter IPs.
  late final pulumi.Output<List<String>?> virtualRouterIps;
  /// The VirtualWAN to which the VirtualHub belongs.
  late final pulumi.Output<SubResourceResponse?> virtualWan;
  /// The VpnGateway associated with this VirtualHub.
  late final pulumi.Output<SubResourceResponse?> vpnGateway;

  /// Creates a new [VirtualHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualHub]. {@macro pulumi_network_virtual_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualHub(
    String name, {
    VirtualHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:VirtualHub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressPrefix = registerOutput<String?>('addressPrefix');
    allowBranchToBranchTraffic = registerOutput<bool?>('allowBranchToBranchTraffic');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureFirewall = registerOutput<SubResourceResponse?>('azureFirewall', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bgpConnections = registerOutput<List<Map<String, dynamic>>>('bgpConnections');
    etag = registerOutput<String>('etag');
    expressRouteGateway = registerOutput<SubResourceResponse?>('expressRouteGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hubRoutingPreference = registerOutput<String?>('hubRoutingPreference');
    ipConfigurations = registerOutput<List<Map<String, dynamic>>>('ipConfigurations');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    p2SVpnGateway = registerOutput<SubResourceResponse?>('p2SVpnGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preferredRoutingGateway = registerOutput<String?>('preferredRoutingGateway');
    provisioningState = registerOutput<String>('provisioningState');
    routeMaps = registerOutput<List<Map<String, dynamic>>>('routeMaps');
    routeTable = registerOutput<VirtualHubRouteTableResponse?>('routeTable', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualHubRouteTableResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    routingState = registerOutput<String>('routingState');
    securityPartnerProvider = registerOutput<SubResourceResponse?>('securityPartnerProvider', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityProviderName = registerOutput<String?>('securityProviderName');
    sku = registerOutput<String?>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualHubRouteTableV2s = registerOutput<List<Map<String, dynamic>>?>('virtualHubRouteTableV2s');
    virtualRouterAsn = registerOutput<double?>('virtualRouterAsn');
    virtualRouterAutoScaleConfiguration = registerOutput<VirtualRouterAutoScaleConfigurationResponse?>('virtualRouterAutoScaleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualRouterAutoScaleConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualRouterIps = registerOutput<List<String>?>('virtualRouterIps');
    virtualWan = registerOutput<SubResourceResponse?>('virtualWan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpnGateway = registerOutput<SubResourceResponse?>('vpnGateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
