import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_response_v2.dart';
import 'virtual_network_appliance_args.dart';
import 'virtual_network_appliance_ip_configuration_response.dart';

/// A virtual network appliance in a resource group.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create virtual network appliance
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkAppliance = new AzureNative.Network.VirtualNetworkAppliance("virtualNetworkAppliance", new()
///     {
///         BandwidthInGbps = "100",
///         Location = "eastus",
///         ResourceGroupName = "rg1",
///         Subnet = new AzureNative.Network.Inputs.SubnetArgs
///         {
///             Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default",
///         },
///         VirtualNetworkApplianceName = "test-vna",
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
/// 		_, err := network.NewVirtualNetworkAppliance(ctx, "virtualNetworkAppliance", &network.VirtualNetworkApplianceArgs{
/// 			BandwidthInGbps:   pulumi.String("100"),
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Subnet: &network.SubnetTypeArgs{
/// 				Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default"),
/// 			},
/// 			VirtualNetworkApplianceName: pulumi.String("test-vna"),
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
/// resource "azure-native_network_virtualnetworkappliance" "virtualNetworkAppliance" {
///   bandwidth_in_gbps   = "100"
///   location            = "eastus"
///   resource_group_name = "rg1"
///   subnet = {
///     id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default"
///   }
///   virtual_network_appliance_name = "test-vna"
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
/// import com.pulumi.azurenative.network.VirtualNetworkAppliance;
/// import com.pulumi.azurenative.network.VirtualNetworkApplianceArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var virtualNetworkAppliance = new VirtualNetworkAppliance("virtualNetworkAppliance", VirtualNetworkApplianceArgs.builder()
///             .bandwidthInGbps("100")
///             .location("eastus")
///             .resourceGroupName("rg1")
///             .subnet(SubnetArgs.builder()
///                 .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default")
///                 .build())
///             .virtualNetworkApplianceName("test-vna")
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
/// const virtualNetworkAppliance = new azure_native.network.VirtualNetworkAppliance("virtualNetworkAppliance", {
///     bandwidthInGbps: "100",
///     location: "eastus",
///     resourceGroupName: "rg1",
///     subnet: {
///         id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default",
///     },
///     virtualNetworkApplianceName: "test-vna",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_appliance = azure_native.network.VirtualNetworkAppliance("virtualNetworkAppliance",
///     bandwidth_in_gbps="100",
///     location="eastus",
///     resource_group_name="rg1",
///     subnet={
///         "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default",
///     },
///     virtual_network_appliance_name="test-vna")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkAppliance:
///     type: azure-native:network:VirtualNetworkAppliance
///     properties:
///       bandwidthInGbps: '100'
///       location: eastus
///       resourceGroupName: rg1
///       subnet:
///         id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/rg1-vnet/subnets/default
///       virtualNetworkApplianceName: test-vna
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
/// $ pulumi import azure-native:network:VirtualNetworkAppliance test-vna /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkAppliances/{virtualNetworkApplianceName}
/// ```
class VirtualNetworkAppliance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Bandwidth of the VirtualNetworkAppliance resource in Gbps.
  late final pulumi.Output<String?> bandwidthInGbps;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// A list of IPConfigurations of the virtual network appliance.
  late final pulumi.Output<List<VirtualNetworkApplianceIpConfigurationResponse>> ipConfigurations;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the virtual network appliance resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the virtual network appliance resource.
  late final pulumi.Output<String> resourceGuid;
  /// The reference to the subnet resource.
  late final pulumi.Output<SubnetResponseV2?> subnet;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualNetworkAppliance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkAppliance]. {@macro pulumi_network_virtual_network_appliance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkAppliance(
    String name, {
    VirtualNetworkApplianceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:VirtualNetworkAppliance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bandwidthInGbps = registerOutput<String?>('bandwidthInGbps');
    etag = registerOutput<String>('etag');
    ipConfigurations = registerOutput<List<VirtualNetworkApplianceIpConfigurationResponse>>('ipConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkApplianceIpConfigurationResponse>(guardedValue, (value) => VirtualNetworkApplianceIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    subnet = registerOutput<SubnetResponseV2?>('subnet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubnetResponseV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [VirtualNetworkAppliance] resource.
  VirtualNetworkAppliance.reference(String urn)
    : super(
        'azure-native:network:VirtualNetworkAppliance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bandwidthInGbps = registerOutput<String?>('bandwidthInGbps');
    etag = registerOutput<String>('etag');
    ipConfigurations = registerOutput<List<VirtualNetworkApplianceIpConfigurationResponse>>('ipConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkApplianceIpConfigurationResponse>(guardedValue, (value) => VirtualNetworkApplianceIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    subnet = registerOutput<SubnetResponseV2?>('subnet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubnetResponseV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
