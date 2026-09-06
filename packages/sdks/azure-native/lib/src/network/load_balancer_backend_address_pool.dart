import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_load_balancer_tunnel_interface_response.dart';
import 'load_balancer_backend_address_pool_args.dart';
import 'load_balancer_backend_address_response.dart';
import 'network_interface_ipconfiguration_response.dart';
import 'sub_resource_response.dart';

/// Pool of backend IP addresses.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update load balancer backend pool with backend addresses containing virtual network and  IP address.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancerBackendAddressPool = new AzureNative.Network.LoadBalancerBackendAddressPool("loadBalancerBackendAddressPool", new()
///     {
///         BackendAddressPoolName = "backend",
///         LoadBalancerBackendAddresses = new[]
///         {
///             new AzureNative.Network.Inputs.LoadBalancerBackendAddressArgs
///             {
///                 IpAddress = "10.0.0.4",
///                 Name = "address1",
///                 VirtualNetwork = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb",
///                 },
///             },
///             new AzureNative.Network.Inputs.LoadBalancerBackendAddressArgs
///             {
///                 IpAddress = "10.0.0.5",
///                 Name = "address2",
///                 VirtualNetwork = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb",
///                 },
///             },
///         },
///         LoadBalancerName = "lb",
///         ResourceGroupName = "testrg",
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
/// 		_, err := network.NewLoadBalancerBackendAddressPool(ctx, "loadBalancerBackendAddressPool", &network.LoadBalancerBackendAddressPoolArgs{
/// 			BackendAddressPoolName: pulumi.String("backend"),
/// 			LoadBalancerBackendAddresses: network.LoadBalancerBackendAddressArray{
/// 				&network.LoadBalancerBackendAddressArgs{
/// 					IpAddress: pulumi.String("10.0.0.4"),
/// 					Name:      pulumi.String("address1"),
/// 					VirtualNetwork: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb"),
/// 					},
/// 				},
/// 				&network.LoadBalancerBackendAddressArgs{
/// 					IpAddress: pulumi.String("10.0.0.5"),
/// 					Name:      pulumi.String("address2"),
/// 					VirtualNetwork: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb"),
/// 					},
/// 				},
/// 			},
/// 			LoadBalancerName:  pulumi.String("lb"),
/// 			ResourceGroupName: pulumi.String("testrg"),
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
/// resource "azure-native_network_loadbalancerbackendaddresspool" "loadBalancerBackendAddressPool" {
///   backend_address_pool_name = "backend"
///   load_balancer_backend_addresses {
///     ip_address = "10.0.0.4"
///     name       = "address1"
///     virtual_network = {
///       id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb"
///     }
///   }
///   load_balancer_backend_addresses {
///     ip_address = "10.0.0.5"
///     name       = "address2"
///     virtual_network = {
///       id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb"
///     }
///   }
///   load_balancer_name  = "lb"
///   resource_group_name = "testrg"
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
/// import com.pulumi.azurenative.network.LoadBalancerBackendAddressPool;
/// import com.pulumi.azurenative.network.LoadBalancerBackendAddressPoolArgs;
/// import com.pulumi.azurenative.network.inputs.LoadBalancerBackendAddressArgs;
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
///         var loadBalancerBackendAddressPool = new LoadBalancerBackendAddressPool("loadBalancerBackendAddressPool", LoadBalancerBackendAddressPoolArgs.builder()
///             .backendAddressPoolName("backend")
///             .loadBalancerBackendAddresses(
///                 LoadBalancerBackendAddressArgs.builder()
///                     .ipAddress("10.0.0.4")
///                     .name("address1")
///                     .virtualNetwork(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb")
///                         .build())
///                     .build(),
///                 LoadBalancerBackendAddressArgs.builder()
///                     .ipAddress("10.0.0.5")
///                     .name("address2")
///                     .virtualNetwork(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb")
///                         .build())
///                     .build())
///             .loadBalancerName("lb")
///             .resourceGroupName("testrg")
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
/// const loadBalancerBackendAddressPool = new azure_native.network.LoadBalancerBackendAddressPool("loadBalancerBackendAddressPool", {
///     backendAddressPoolName: "backend",
///     loadBalancerBackendAddresses: [
///         {
///             ipAddress: "10.0.0.4",
///             name: "address1",
///             virtualNetwork: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb",
///             },
///         },
///         {
///             ipAddress: "10.0.0.5",
///             name: "address2",
///             virtualNetwork: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb",
///             },
///         },
///     ],
///     loadBalancerName: "lb",
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer_backend_address_pool = azure_native.network.LoadBalancerBackendAddressPool("loadBalancerBackendAddressPool",
///     backend_address_pool_name="backend",
///     load_balancer_backend_addresses=[
///         {
///             "ip_address": "10.0.0.4",
///             "name": "address1",
///             "virtual_network": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb",
///             },
///         },
///         {
///             "ip_address": "10.0.0.5",
///             "name": "address2",
///             "virtual_network": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb",
///             },
///         },
///     ],
///     load_balancer_name="lb",
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancerBackendAddressPool:
///     type: azure-native:network:LoadBalancerBackendAddressPool
///     properties:
///       backendAddressPoolName: backend
///       loadBalancerBackendAddresses:
///         - ipAddress: 10.0.0.4
///           name: address1
///           virtualNetwork:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb
///         - ipAddress: 10.0.0.5
///           name: address2
///           virtualNetwork:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnetlb
///       loadBalancerName: lb
///       resourceGroupName: testrg
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
/// $ pulumi import azure-native:network:LoadBalancerBackendAddressPool backend /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/backendAddressPools/{backendAddressPoolName}
/// ```
class LoadBalancerBackendAddressPool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// An array of references to IP addresses defined in network interfaces.
  late final pulumi.Output<List<NetworkInterfaceIPConfigurationResponse>> backendIPConfigurations;
  /// Amount of seconds Load Balancer waits for before sending RESET to client and backend address.
  late final pulumi.Output<int?> drainPeriodInSeconds;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// An array of references to inbound NAT rules that use this backend address pool.
  late final pulumi.Output<List<SubResourceResponse>> inboundNatRules;
  /// An array of backend addresses.
  late final pulumi.Output<List<LoadBalancerBackendAddressResponse>?> loadBalancerBackendAddresses;
  /// An array of references to load balancing rules that use this backend address pool.
  late final pulumi.Output<List<SubResourceResponse>> loadBalancingRules;
  /// The location of the backend address pool.
  late final pulumi.Output<String?> location;
  /// The name of the resource that is unique within the set of backend address pools used by the load balancer. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// A reference to an outbound rule that uses this backend address pool.
  late final pulumi.Output<SubResourceResponse> outboundRule;
  /// An array of references to outbound rules that use this backend address pool.
  late final pulumi.Output<List<SubResourceResponse>> outboundRules;
  /// The provisioning state of the backend address pool resource.
  late final pulumi.Output<String> provisioningState;
  /// Backend address synchronous mode for the backend pool
  late final pulumi.Output<String?> syncMode;
  /// An array of gateway load balancer tunnel interfaces.
  late final pulumi.Output<List<GatewayLoadBalancerTunnelInterfaceResponse>?> tunnelInterfaces;
  /// Type of the resource.
  late final pulumi.Output<String> type;
  /// A reference to a virtual network.
  late final pulumi.Output<SubResourceResponse?> virtualNetwork;

  /// Creates a new [LoadBalancerBackendAddressPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerBackendAddressPool]. {@macro pulumi_network_load_balancer_backend_address_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerBackendAddressPool(
    String name, {
    LoadBalancerBackendAddressPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:LoadBalancerBackendAddressPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backendIPConfigurations = registerOutput<List<NetworkInterfaceIPConfigurationResponse>>('backendIPConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponse>(guardedValue, (value) => NetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    drainPeriodInSeconds = registerOutput<int?>('drainPeriodInSeconds');
    etag = registerOutput<String>('etag');
    inboundNatRules = registerOutput<List<SubResourceResponse>>('inboundNatRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    loadBalancerBackendAddresses = registerOutput<List<LoadBalancerBackendAddressResponse>?>('loadBalancerBackendAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerBackendAddressResponse>(guardedValue, (value) => LoadBalancerBackendAddressResponse.fromMap((value as Map).cast<String, dynamic>())); });
    loadBalancingRules = registerOutput<List<SubResourceResponse>>('loadBalancingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String?>('name');
    outboundRule = registerOutput<SubResourceResponse>('outboundRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outboundRules = registerOutput<List<SubResourceResponse>>('outboundRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    syncMode = registerOutput<String?>('syncMode');
    tunnelInterfaces = registerOutput<List<GatewayLoadBalancerTunnelInterfaceResponse>?>('tunnelInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GatewayLoadBalancerTunnelInterfaceResponse>(guardedValue, (value) => GatewayLoadBalancerTunnelInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    virtualNetwork = registerOutput<SubResourceResponse?>('virtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [LoadBalancerBackendAddressPool] resource.
  LoadBalancerBackendAddressPool.reference(String urn)
    : super(
        'azure-native:network:LoadBalancerBackendAddressPool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backendIPConfigurations = registerOutput<List<NetworkInterfaceIPConfigurationResponse>>('backendIPConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponse>(guardedValue, (value) => NetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    drainPeriodInSeconds = registerOutput<int?>('drainPeriodInSeconds');
    etag = registerOutput<String>('etag');
    inboundNatRules = registerOutput<List<SubResourceResponse>>('inboundNatRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    loadBalancerBackendAddresses = registerOutput<List<LoadBalancerBackendAddressResponse>?>('loadBalancerBackendAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerBackendAddressResponse>(guardedValue, (value) => LoadBalancerBackendAddressResponse.fromMap((value as Map).cast<String, dynamic>())); });
    loadBalancingRules = registerOutput<List<SubResourceResponse>>('loadBalancingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String?>('name');
    outboundRule = registerOutput<SubResourceResponse>('outboundRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outboundRules = registerOutput<List<SubResourceResponse>>('outboundRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    syncMode = registerOutput<String?>('syncMode');
    tunnelInterfaces = registerOutput<List<GatewayLoadBalancerTunnelInterfaceResponse>?>('tunnelInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GatewayLoadBalancerTunnelInterfaceResponse>(guardedValue, (value) => GatewayLoadBalancerTunnelInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    virtualNetwork = registerOutput<SubResourceResponse?>('virtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
