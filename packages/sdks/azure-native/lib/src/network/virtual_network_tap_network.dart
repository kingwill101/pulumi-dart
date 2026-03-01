import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontend_ipconfiguration_response.dart';
import 'network_interface_ipconfiguration_response.dart';
import 'network_interface_tap_configuration_response.dart';
import 'virtual_network_tap_args.dart';

/// Virtual Network Tap resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Virtual Network Tap
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkTap = new AzureNative.Network.VirtualNetworkTap("virtualNetworkTap", new()
///     {
///         DestinationNetworkInterfaceIPConfiguration = new AzureNative.Network.Inputs.NetworkInterfaceIPConfigurationArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkInterfaces/testNetworkInterface/ipConfigurations/ipconfig1",
///         },
///         Location = "centraluseuap",
///         ResourceGroupName = "rg1",
///         TapName = "test-vtap",
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
/// 		_, err := network.NewVirtualNetworkTap(ctx, "virtualNetworkTap", &network.VirtualNetworkTapArgs{
/// 			DestinationNetworkInterfaceIPConfiguration: &network.NetworkInterfaceIPConfigurationArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkInterfaces/testNetworkInterface/ipConfigurations/ipconfig1"),
/// 			},
/// 			Location:          pulumi.String("centraluseuap"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			TapName:           pulumi.String("test-vtap"),
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
/// import com.pulumi.azurenative.network.VirtualNetworkTap;
/// import com.pulumi.azurenative.network.VirtualNetworkTapArgs;
/// import com.pulumi.azurenative.network.inputs.NetworkInterfaceIPConfigurationArgs;
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
///         var virtualNetworkTap = new VirtualNetworkTap("virtualNetworkTap", VirtualNetworkTapArgs.builder()
///             .destinationNetworkInterfaceIPConfiguration(NetworkInterfaceIPConfigurationArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkInterfaces/testNetworkInterface/ipConfigurations/ipconfig1")
///                 .build())
///             .location("centraluseuap")
///             .resourceGroupName("rg1")
///             .tapName("test-vtap")
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
/// const virtualNetworkTap = new azure_native.network.VirtualNetworkTap("virtualNetworkTap", {
///     destinationNetworkInterfaceIPConfiguration: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkInterfaces/testNetworkInterface/ipConfigurations/ipconfig1",
///     },
///     location: "centraluseuap",
///     resourceGroupName: "rg1",
///     tapName: "test-vtap",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_tap = azure_native.network.VirtualNetworkTap("virtualNetworkTap",
///     destination_network_interface_ip_configuration={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkInterfaces/testNetworkInterface/ipConfigurations/ipconfig1",
///     },
///     location="centraluseuap",
///     resource_group_name="rg1",
///     tap_name="test-vtap")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkTap:
///     type: azure-native:network:VirtualNetworkTap
///     properties:
///       destinationNetworkInterfaceIPConfiguration:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkInterfaces/testNetworkInterface/ipConfigurations/ipconfig1
///       location: centraluseuap
///       resourceGroupName: rg1
///       tapName: test-vtap
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
/// $ pulumi import azure-native:network:VirtualNetworkTap testvtap /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkTaps/{tapName}
/// ```
class VirtualNetworkTapNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The reference to the private IP address on the internal Load Balancer that will receive the tap.
  late final pulumi.Output<FrontendIPConfigurationResponse?> destinationLoadBalancerFrontEndIPConfiguration;
  /// The reference to the private IP Address of the collector nic that will receive the tap.
  late final pulumi.Output<NetworkInterfaceIPConfigurationResponse?> destinationNetworkInterfaceIPConfiguration;
  /// The VXLAN destination port that will receive the tapped traffic.
  late final pulumi.Output<int?> destinationPort;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Specifies the list of resource IDs for the network interface IP configuration that needs to be tapped.
  late final pulumi.Output<List<NetworkInterfaceTapConfigurationResponse>> networkInterfaceTapConfigurations;
  /// The provisioning state of the virtual network tap resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the virtual network tap resource.
  late final pulumi.Output<String> resourceGuid;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualNetworkTapNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkTapNetwork]. {@macro pulumi_network_virtual_network_tap_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkTapNetwork(
    String name, {
    VirtualNetworkTapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:VirtualNetworkTap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.destinationLoadBalancerFrontEndIPConfiguration = registerOutput<FrontendIPConfigurationResponse?>('destinationLoadBalancerFrontEndIPConfiguration');
    this.destinationNetworkInterfaceIPConfiguration = registerOutput<NetworkInterfaceIPConfigurationResponse?>('destinationNetworkInterfaceIPConfiguration');
    this.destinationPort = registerOutput<int?>('destinationPort');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.networkInterfaceTapConfigurations = registerOutput<List<NetworkInterfaceTapConfigurationResponse>>('networkInterfaceTapConfigurations');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceGuid = registerOutput<String>('resourceGuid');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
