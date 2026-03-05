import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_target_address_properties_format_response.dart';
import 'service_gateway_args.dart';
import 'service_gateway_sku_response.dart';
import 'system_data_response.dart';
import 'virtual_network_response.dart';

/// ServiceGateway resource.
///
/// Uses Azure REST API version 2025-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create service gateway
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceGateway = new AzureNative.Network.ServiceGateway("serviceGateway", new()
///     {
///         Location = "eastus",
///         ResourceGroupName = "rg1",
///         RouteTargetAddress = new AzureNative.Network.Inputs.RouteTargetAddressPropertiesFormatArgs
///         {
///             PrivateIPAddress = "10.0.1.4",
///             PrivateIPAllocationMethod = AzureNative.Network.IPAllocationMethod.Static,
///             Subnet = new AzureNative.Network.Inputs.SubnetArgs
///             {
///                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet/subnets/subnet",
///             },
///         },
///         ServiceGatewayName = "sg",
///         VirtualNetwork = new AzureNative.Network.Inputs.VirtualNetworkArgs
///         {
///             Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet",
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
/// 		_, err := network.NewServiceGateway(ctx, "serviceGateway", &network.ServiceGatewayArgs{
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			RouteTargetAddress: &network.RouteTargetAddressPropertiesFormatArgs{
/// 				PrivateIPAddress:          pulumi.String("10.0.1.4"),
/// 				PrivateIPAllocationMethod: pulumi.String(network.IPAllocationMethodStatic),
/// 				Subnet: &network.SubnetTypeArgs{
/// 					Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet/subnets/subnet"),
/// 				},
/// 			},
/// 			ServiceGatewayName: pulumi.String("sg"),
/// 			VirtualNetwork: &network.VirtualNetworkTypeArgs{
/// 				Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.ServiceGateway;
/// import com.pulumi.azurenative.network.ServiceGatewayArgs;
/// import com.pulumi.azurenative.network.inputs.RouteTargetAddressPropertiesFormatArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualNetworkArgs;
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
///         var serviceGateway = new ServiceGateway("serviceGateway", ServiceGatewayArgs.builder()
///             .location("eastus")
///             .resourceGroupName("rg1")
///             .routeTargetAddress(RouteTargetAddressPropertiesFormatArgs.builder()
///                 .privateIPAddress("10.0.1.4")
///                 .privateIPAllocationMethod("Static")
///                 .subnet(SubnetArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet/subnets/subnet")
///                     .build())
///                 .build())
///             .serviceGatewayName("sg")
///             .virtualNetwork(VirtualNetworkArgs.builder()
///                 .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet")
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
/// const serviceGateway = new azure_native.network.ServiceGateway("serviceGateway", {
///     location: "eastus",
///     resourceGroupName: "rg1",
///     routeTargetAddress: {
///         privateIPAddress: "10.0.1.4",
///         privateIPAllocationMethod: azure_native.network.IPAllocationMethod.Static,
///         subnet: {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet/subnets/subnet",
///         },
///     },
///     serviceGatewayName: "sg",
///     virtualNetwork: {
///         id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service_gateway = azure_native.network.ServiceGateway("serviceGateway",
///     location="eastus",
///     resource_group_name="rg1",
///     route_target_address={
///         "private_ip_address": "10.0.1.4",
///         "private_ip_allocation_method": azure_native.network.IPAllocationMethod.STATIC,
///         "subnet": {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet/subnets/subnet",
///         },
///     },
///     service_gateway_name="sg",
///     virtual_network={
///         "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   serviceGateway:
///     type: azure-native:network:ServiceGateway
///     properties:
///       location: eastus
///       resourceGroupName: rg1
///       routeTargetAddress:
///         privateIPAddress: 10.0.1.4
///         privateIPAllocationMethod: Static
///         subnet:
///           id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet/subnets/subnet
///       serviceGatewayName: sg
///       virtualNetwork:
///         id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet
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
/// $ pulumi import azure-native:network:ServiceGateway sg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/serviceGateways/{serviceGatewayName}
/// ```
class ServiceGateway extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the service gateway resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the service gateway resource.
  late final pulumi.Output<String> resourceGuid;
  /// Route Target address of Service gateway
  late final pulumi.Output<RouteTargetAddressPropertiesFormatResponse?> routeTargetAddress;
  /// Route Target address V6 of Service gateway
  late final pulumi.Output<RouteTargetAddressPropertiesFormatResponse?> routeTargetAddressV6;
  /// The service gateway SKU.
  late final pulumi.Output<ServiceGatewaySkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Reference to an existing virtual network.
  late final pulumi.Output<VirtualNetworkResponse?> virtualNetwork;
  /// A list of availability zones denoting the zone in which service gateway should be deployed.
  ///
  /// - The zone values must be provided as strings representing numeric identifiers like "1", "2", "3" etc.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [ServiceGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceGateway]. {@macro pulumi_network_service_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceGateway(
    String name, {
    ServiceGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ServiceGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    routeTargetAddress = registerOutput<RouteTargetAddressPropertiesFormatResponse?>('routeTargetAddress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteTargetAddressPropertiesFormatResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    routeTargetAddressV6 = registerOutput<RouteTargetAddressPropertiesFormatResponse?>('routeTargetAddressV6', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteTargetAddressPropertiesFormatResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<ServiceGatewaySkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceGatewaySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualNetwork = registerOutput<VirtualNetworkResponse?>('virtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones');
  }
}
