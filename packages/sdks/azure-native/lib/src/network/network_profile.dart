import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_profile_args.dart';

/// Network profile resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create network profile defaults
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkProfile = new AzureNative.Network.NetworkProfile("networkProfile", new()
///     {
///         ContainerNetworkInterfaceConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.ContainerNetworkInterfaceConfigurationArgs
///             {
///                 IpConfigurations = new[]
///                 {
///                     new AzureNative.Network.Inputs.IPConfigurationProfileArgs
///                     {
///                         Name = "ipconfig1",
///                         Subnet = new AzureNative.Network.Inputs.SubnetArgs
///                         {
///                             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/networkProfileVnet/subnets/networkProfileSubnet1",
///                         },
///                     },
///                 },
///                 Name = "eth1",
///             },
///         },
///         Location = "westus",
///         NetworkProfileName = "networkProfile1",
///         ResourceGroupName = "rg1",
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
/// 		_, err := network.NewNetworkProfile(ctx, "networkProfile", &network.NetworkProfileArgs{
/// 			ContainerNetworkInterfaceConfigurations: network.ContainerNetworkInterfaceConfigurationArray{
/// 				&network.ContainerNetworkInterfaceConfigurationArgs{
/// 					IpConfigurations: network.IPConfigurationProfileArray{
/// 						&network.IPConfigurationProfileArgs{
/// 							Name: pulumi.String("ipconfig1"),
/// 							Subnet: &network.SubnetTypeArgs{
/// 								Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/networkProfileVnet/subnets/networkProfileSubnet1"),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("eth1"),
/// 				},
/// 			},
/// 			Location:           pulumi.String("westus"),
/// 			NetworkProfileName: pulumi.String("networkProfile1"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.NetworkProfile;
/// import com.pulumi.azurenative.network.NetworkProfileArgs;
/// import com.pulumi.azurenative.network.inputs.ContainerNetworkInterfaceConfigurationArgs;
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
///         var networkProfile = new NetworkProfile("networkProfile", NetworkProfileArgs.builder()
///             .containerNetworkInterfaceConfigurations(ContainerNetworkInterfaceConfigurationArgs.builder()
///                 .ipConfigurations(IPConfigurationProfileArgs.builder()
///                     .name("ipconfig1")
///                     .subnet(SubnetArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/networkProfileVnet/subnets/networkProfileSubnet1")
///                         .build())
///                     .build())
///                 .name("eth1")
///                 .build())
///             .location("westus")
///             .networkProfileName("networkProfile1")
///             .resourceGroupName("rg1")
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
/// const networkProfile = new azure_native.network.NetworkProfile("networkProfile", {
///     containerNetworkInterfaceConfigurations: [{
///         ipConfigurations: [{
///             name: "ipconfig1",
///             subnet: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/networkProfileVnet/subnets/networkProfileSubnet1",
///             },
///         }],
///         name: "eth1",
///     }],
///     location: "westus",
///     networkProfileName: "networkProfile1",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_profile = azure_native.network.NetworkProfile("networkProfile",
///     container_network_interface_configurations=[{
///         "ip_configurations": [{
///             "name": "ipconfig1",
///             "subnet": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/networkProfileVnet/subnets/networkProfileSubnet1",
///             },
///         }],
///         "name": "eth1",
///     }],
///     location="westus",
///     network_profile_name="networkProfile1",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   networkProfile:
///     type: azure-native:network:NetworkProfile
///     properties:
///       containerNetworkInterfaceConfigurations:
///         - ipConfigurations:
///             - name: ipconfig1
///               subnet:
///                 id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/networkProfileVnet/subnets/networkProfileSubnet1
///           name: eth1
///       location: westus
///       networkProfileName: networkProfile1
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:NetworkProfile networkProfile1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkProfiles/{networkProfileName}
/// ```
class NetworkProfile extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of chid container network interface configurations.
  late final pulumi.Output<List<Map<String, dynamic>>?> containerNetworkInterfaceConfigurations;
  /// List of child container network interfaces.
  late final pulumi.Output<List<Map<String, dynamic>>> containerNetworkInterfaces;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the network profile resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the network profile resource.
  late final pulumi.Output<String> resourceGuid;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkProfile]. {@macro pulumi_network_network_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkProfile(
    String name, {
    NetworkProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:NetworkProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerNetworkInterfaceConfigurations = registerOutput<List<Map<String, dynamic>>?>('containerNetworkInterfaceConfigurations');
    containerNetworkInterfaces = registerOutput<List<Map<String, dynamic>>>('containerNetworkInterfaces');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
