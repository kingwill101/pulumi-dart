import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_response.dart';
import 'subnet_response.dart';
import 'virtual_hub_ip_configuration_args.dart';

/// IpConfigurations.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VirtualHubIpConfigurationPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualHubIpConfiguration = new AzureNative.Network.VirtualHubIpConfiguration("virtualHubIpConfiguration", new()
///     {
///         IpConfigName = "ipconfig1",
///         ResourceGroupName = "rg1",
///         Subnet = new AzureNative.Network.Inputs.SubnetArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///         },
///         VirtualHubName = "hub1",
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
/// 		_, err := network.NewVirtualHubIpConfiguration(ctx, "virtualHubIpConfiguration", &network.VirtualHubIpConfigurationArgs{
/// 			IpConfigName:      pulumi.String("ipconfig1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Subnet: &network.SubnetTypeArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1"),
/// 			},
/// 			VirtualHubName: pulumi.String("hub1"),
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
/// import com.pulumi.azurenative.network.VirtualHubIpConfiguration;
/// import com.pulumi.azurenative.network.VirtualHubIpConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var virtualHubIpConfiguration = new VirtualHubIpConfiguration("virtualHubIpConfiguration", VirtualHubIpConfigurationArgs.builder()
///             .ipConfigName("ipconfig1")
///             .resourceGroupName("rg1")
///             .subnet(SubnetArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1")
///                 .build())
///             .virtualHubName("hub1")
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
/// const virtualHubIpConfiguration = new azure_native.network.VirtualHubIpConfiguration("virtualHubIpConfiguration", {
///     ipConfigName: "ipconfig1",
///     resourceGroupName: "rg1",
///     subnet: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///     },
///     virtualHubName: "hub1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_hub_ip_configuration = azure_native.network.VirtualHubIpConfiguration("virtualHubIpConfiguration",
///     ip_config_name="ipconfig1",
///     resource_group_name="rg1",
///     subnet={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///     },
///     virtual_hub_name="hub1")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualHubIpConfiguration:
///     type: azure-native:network:VirtualHubIpConfiguration
///     properties:
///       ipConfigName: ipconfig1
///       resourceGroupName: rg1
///       subnet:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1
///       virtualHubName: hub1
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
/// $ pulumi import azure-native:network:VirtualHubIpConfiguration ipconfig1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualHubs/{virtualHubName}/ipConfigurations/{ipConfigName}
/// ```
class VirtualHubIpConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Name of the Ip Configuration.
  late final pulumi.Output<String?> name;

  /// The private IP address of the IP configuration.
  late final pulumi.Output<String?> privateIPAddress;

  /// The private IP address allocation method.
  late final pulumi.Output<String?> privateIPAllocationMethod;

  /// The provisioning state of the IP configuration resource.
  late final pulumi.Output<String> provisioningState;

  /// The reference to the public IP resource.
  late final pulumi.Output<PublicIPAddressResponse?> publicIPAddress;

  /// The reference to the subnet resource.
  late final pulumi.Output<SubnetResponse?> subnet;

  /// Ipconfiguration type.
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualHubIpConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualHubIpConfiguration]. {@macro pulumi_network_virtual_hub_ip_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualHubIpConfiguration(
    String name, {
    VirtualHubIpConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:VirtualHubIpConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    privateIPAddress = registerOutput<String?>('privateIPAddress');
    privateIPAllocationMethod = registerOutput<String?>(
      'privateIPAllocationMethod',
    );
    provisioningState = registerOutput<String>('provisioningState');
    publicIPAddress = registerOutput<PublicIPAddressResponse?>(
      'publicIPAddress',
    );
    subnet = registerOutput<SubnetResponse?>('subnet');
    type = registerOutput<String>('type');
  }
}
