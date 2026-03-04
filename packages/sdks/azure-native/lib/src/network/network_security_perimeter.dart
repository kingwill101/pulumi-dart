import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_args.dart';

/// The Network Security Perimeter resource
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-03-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2021-03-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put Network Security Perimeter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkSecurityPerimeter = new AzureNative.Network.NetworkSecurityPerimeter("networkSecurityPerimeter", new()
///     {
///         NetworkSecurityPerimeterName = "nsp1",
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
/// 		_, err := network.NewNetworkSecurityPerimeter(ctx, "networkSecurityPerimeter", &network.NetworkSecurityPerimeterArgs{
/// 			NetworkSecurityPerimeterName: pulumi.String("nsp1"),
/// 			ResourceGroupName:            pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.NetworkSecurityPerimeter;
/// import com.pulumi.azurenative.network.NetworkSecurityPerimeterArgs;
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
///         var networkSecurityPerimeter = new NetworkSecurityPerimeter("networkSecurityPerimeter", NetworkSecurityPerimeterArgs.builder()
///             .networkSecurityPerimeterName("nsp1")
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
/// const networkSecurityPerimeter = new azure_native.network.NetworkSecurityPerimeter("networkSecurityPerimeter", {
///     networkSecurityPerimeterName: "nsp1",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_security_perimeter = azure_native.network.NetworkSecurityPerimeter("networkSecurityPerimeter",
///     network_security_perimeter_name="nsp1",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   networkSecurityPerimeter:
///     type: azure-native:network:NetworkSecurityPerimeter
///     properties:
///       networkSecurityPerimeterName: nsp1
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
/// $ pulumi import azure-native:network:NetworkSecurityPerimeter TestNetworkSecurityPerimeter /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}
/// ```
class NetworkSecurityPerimeter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// perimeter guid of the network security perimeter.
  late final pulumi.Output<String> perimeterGuid;

  /// The provisioning state of the scope assignment resource.
  late final pulumi.Output<String> provisioningState;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkSecurityPerimeter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSecurityPerimeter]. {@macro pulumi_network_network_security_perimeter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSecurityPerimeter(
    String name, {
    NetworkSecurityPerimeterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:NetworkSecurityPerimeter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    perimeterGuid = registerOutput<String>('perimeterGuid');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
