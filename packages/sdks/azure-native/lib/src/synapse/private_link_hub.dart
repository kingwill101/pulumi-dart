import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_for_private_link_hub_basic_response.dart';
import 'private_link_hub_args.dart';

/// A privateLinkHub
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a privateLinkHub
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkHub = new AzureNative.Synapse.PrivateLinkHub("privateLinkHub", new()
///     {
///         Location = "East US",
///         PrivateLinkHubName = "privateLinkHub1",
///         ResourceGroupName = "resourceGroup1",
///         Tags =
///         {
///             { "key", "value" },
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewPrivateLinkHub(ctx, "privateLinkHub", &synapse.PrivateLinkHubArgs{
/// 			Location:           pulumi.String("East US"),
/// 			PrivateLinkHubName: pulumi.String("privateLinkHub1"),
/// 			ResourceGroupName:  pulumi.String("resourceGroup1"),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azurenative.synapse.PrivateLinkHub;
/// import com.pulumi.azurenative.synapse.PrivateLinkHubArgs;
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
///         var privateLinkHub = new PrivateLinkHub("privateLinkHub", PrivateLinkHubArgs.builder()
///             .location("East US")
///             .privateLinkHubName("privateLinkHub1")
///             .resourceGroupName("resourceGroup1")
///             .tags(Map.of("key", "value"))
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
/// const privateLinkHub = new azure_native.synapse.PrivateLinkHub("privateLinkHub", {
///     location: "East US",
///     privateLinkHubName: "privateLinkHub1",
///     resourceGroupName: "resourceGroup1",
///     tags: {
///         key: "value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_hub = azure_native.synapse.PrivateLinkHub("privateLinkHub",
///     location="East US",
///     private_link_hub_name="privateLinkHub1",
///     resource_group_name="resourceGroup1",
///     tags={
///         "key": "value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkHub:
///     type: azure-native:synapse:PrivateLinkHub
///     properties:
///       location: East US
///       privateLinkHubName: privateLinkHub1
///       resourceGroupName: resourceGroup1
///       tags:
///         key: value
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
/// $ pulumi import azure-native:synapse:PrivateLinkHub privateLinkHub1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/privateLinkHubs/{privateLinkHubName}
/// ```
class PrivateLinkHub extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of private endpoint connections
  late final pulumi.Output<List<PrivateEndpointConnectionForPrivateLinkHubBasicResponse>> privateEndpointConnections;
  /// PrivateLinkHub provisioning state
  late final pulumi.Output<String?> provisioningState;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateLinkHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkHub]. {@macro pulumi_synapse_private_link_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkHub(
    String name, {
    PrivateLinkHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:PrivateLinkHub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionForPrivateLinkHubBasicResponse>>('privateEndpointConnections');
    this.provisioningState = registerOutput<String?>('provisioningState');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
