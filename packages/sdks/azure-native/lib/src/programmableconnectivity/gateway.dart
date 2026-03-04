import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';
import 'system_data_response.dart';

/// A Programmable Connectivity Gateway resource.
///
/// Uses Azure REST API version 2024-01-15-preview. In version 2.x of the Azure Native provider, it used API version 2024-01-15-preview.
///
/// Other available API versions: 2025-03-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native programmableconnectivity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Gateways_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gateway = new AzureNative.ProgrammableConnectivity.Gateway("gateway", new()
///     {
///         GatewayName = "pgzk",
///         Location = "oryhozfmeohscezl",
///         ResourceGroupName = "rgopenapi",
///         Tags =
///         {
///             { "key2642", "ykmlftvwwpvcmriffxqh" },
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
/// 	programmableconnectivity "github.com/pulumi/pulumi-azure-native-sdk/programmableconnectivity/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := programmableconnectivity.NewGateway(ctx, "gateway", &programmableconnectivity.GatewayArgs{
/// 			GatewayName:       pulumi.String("pgzk"),
/// 			Location:          pulumi.String("oryhozfmeohscezl"),
/// 			ResourceGroupName: pulumi.String("rgopenapi"),
/// 			Tags: pulumi.StringMap{
/// 				"key2642": pulumi.String("ykmlftvwwpvcmriffxqh"),
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
/// import com.pulumi.azurenative.programmableconnectivity.Gateway;
/// import com.pulumi.azurenative.programmableconnectivity.GatewayArgs;
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
///         var gateway = new Gateway("gateway", GatewayArgs.builder()
///             .gatewayName("pgzk")
///             .location("oryhozfmeohscezl")
///             .resourceGroupName("rgopenapi")
///             .tags(Map.of("key2642", "ykmlftvwwpvcmriffxqh"))
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
/// const gateway = new azure_native.programmableconnectivity.Gateway("gateway", {
///     gatewayName: "pgzk",
///     location: "oryhozfmeohscezl",
///     resourceGroupName: "rgopenapi",
///     tags: {
///         key2642: "ykmlftvwwpvcmriffxqh",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gateway = azure_native.programmableconnectivity.Gateway("gateway",
///     gateway_name="pgzk",
///     location="oryhozfmeohscezl",
///     resource_group_name="rgopenapi",
///     tags={
///         "key2642": "ykmlftvwwpvcmriffxqh",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   gateway:
///     type: azure-native:programmableconnectivity:Gateway
///     properties:
///       gatewayName: pgzk
///       location: oryhozfmeohscezl
///       resourceGroupName: rgopenapi
///       tags:
///         key2642: ykmlftvwwpvcmriffxqh
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
/// $ pulumi import azure-native:programmableconnectivity:Gateway qwlnmndshgfrtkp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ProgrammableConnectivity/gateways/{gatewayName}
/// ```
class Gateway extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Base URL of the Gateway resource. This is the URL that the users would use to make Network API requests to the Operators via Azure.
  late final pulumi.Output<String> gatewayBaseUrl;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// List of Operator API Connections selected by the user.
  late final pulumi.Output<List<String>> operatorApiConnections;

  /// The status of the last operation on the Gateway resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_programmableconnectivity_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:programmableconnectivity:Gateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    gatewayBaseUrl = registerOutput<String>('gatewayBaseUrl');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    operatorApiConnections = registerOutput<List<String>>(
      'operatorApiConnections',
    );
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
