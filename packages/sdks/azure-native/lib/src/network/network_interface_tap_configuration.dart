import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_tap_configuration_args.dart';
import 'virtual_network_tap_response.dart';

/// Tap configuration in a Network Interface.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Network Interface Tap Configurations
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkInterfaceTapConfiguration = new AzureNative.Network.NetworkInterfaceTapConfiguration("networkInterfaceTapConfiguration", new()
///     {
///         NetworkInterfaceName = "mynic",
///         ResourceGroupName = "testrg",
///         TapConfigurationName = "tapconfiguration1",
///         VirtualNetworkTap = new AzureNative.Network.Inputs.VirtualNetworkTapArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworkTaps/testvtap",
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
/// 		_, err := network.NewNetworkInterfaceTapConfiguration(ctx, "networkInterfaceTapConfiguration", &network.NetworkInterfaceTapConfigurationArgs{
/// 			NetworkInterfaceName: pulumi.String("mynic"),
/// 			ResourceGroupName:    pulumi.String("testrg"),
/// 			TapConfigurationName: pulumi.String("tapconfiguration1"),
/// 			VirtualNetworkTap: &network.VirtualNetworkTapTypeArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworkTaps/testvtap"),
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
/// import com.pulumi.azurenative.network.NetworkInterfaceTapConfiguration;
/// import com.pulumi.azurenative.network.NetworkInterfaceTapConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualNetworkTapArgs;
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
///         var networkInterfaceTapConfiguration = new NetworkInterfaceTapConfiguration("networkInterfaceTapConfiguration", NetworkInterfaceTapConfigurationArgs.builder()
///             .networkInterfaceName("mynic")
///             .resourceGroupName("testrg")
///             .tapConfigurationName("tapconfiguration1")
///             .virtualNetworkTap(VirtualNetworkTapArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworkTaps/testvtap")
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
/// const networkInterfaceTapConfiguration = new azure_native.network.NetworkInterfaceTapConfiguration("networkInterfaceTapConfiguration", {
///     networkInterfaceName: "mynic",
///     resourceGroupName: "testrg",
///     tapConfigurationName: "tapconfiguration1",
///     virtualNetworkTap: {
///         id: "/subscriptions/subid/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworkTaps/testvtap",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_interface_tap_configuration = azure_native.network.NetworkInterfaceTapConfiguration("networkInterfaceTapConfiguration",
///     network_interface_name="mynic",
///     resource_group_name="testrg",
///     tap_configuration_name="tapconfiguration1",
///     virtual_network_tap={
///         "id": "/subscriptions/subid/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworkTaps/testvtap",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   networkInterfaceTapConfiguration:
///     type: azure-native:network:NetworkInterfaceTapConfiguration
///     properties:
///       networkInterfaceName: mynic
///       resourceGroupName: testrg
///       tapConfigurationName: tapconfiguration1
///       virtualNetworkTap:
///         id: /subscriptions/subid/resourceGroups/testrg/providers/Microsoft.Network/virtualNetworkTaps/testvtap
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
/// $ pulumi import azure-native:network:NetworkInterfaceTapConfiguration tapConfiguration1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}/tapConfigurations/{tapConfigurationName}
/// ```
class NetworkInterfaceTapConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;

  /// The provisioning state of the network interface tap configuration resource.
  late final pulumi.Output<String> provisioningState;

  /// Sub Resource type.
  late final pulumi.Output<String> type;

  /// The reference to the Virtual Network Tap resource.
  late final pulumi.Output<VirtualNetworkTapResponse?> virtualNetworkTap;

  /// Creates a new [NetworkInterfaceTapConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterfaceTapConfiguration]. {@macro pulumi_network_network_interface_tap_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterfaceTapConfiguration(
    String name, {
    NetworkInterfaceTapConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:NetworkInterfaceTapConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
    virtualNetworkTap = registerOutput<VirtualNetworkTapResponse?>(
      'virtualNetworkTap',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualNetworkTapResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
