import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_connection_args.dart';
import 'system_data_response.dart';

/// Description of hybrid connection resource.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2021-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RelayHybridConnectionCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hybridConnection = new AzureNative.Relay.HybridConnection("hybridConnection", new()
///     {
///         HybridConnectionName = "example-Relay-Hybrid-01",
///         NamespaceName = "example-RelayNamespace-01",
///         RequiresClientAuthorization = true,
///         ResourceGroupName = "resourcegroup",
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
/// 	relay "github.com/pulumi/pulumi-azure-native-sdk/relay/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := relay.NewHybridConnection(ctx, "hybridConnection", &relay.HybridConnectionArgs{
/// 			HybridConnectionName:        pulumi.String("example-Relay-Hybrid-01"),
/// 			NamespaceName:               pulumi.String("example-RelayNamespace-01"),
/// 			RequiresClientAuthorization: pulumi.Bool(true),
/// 			ResourceGroupName:           pulumi.String("resourcegroup"),
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
/// import com.pulumi.azurenative.relay.HybridConnection;
/// import com.pulumi.azurenative.relay.HybridConnectionArgs;
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
///         var hybridConnection = new HybridConnection("hybridConnection", HybridConnectionArgs.builder()
///             .hybridConnectionName("example-Relay-Hybrid-01")
///             .namespaceName("example-RelayNamespace-01")
///             .requiresClientAuthorization(true)
///             .resourceGroupName("resourcegroup")
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
/// const hybridConnection = new azure_native.relay.HybridConnection("hybridConnection", {
///     hybridConnectionName: "example-Relay-Hybrid-01",
///     namespaceName: "example-RelayNamespace-01",
///     requiresClientAuthorization: true,
///     resourceGroupName: "resourcegroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hybrid_connection = azure_native.relay.HybridConnection("hybridConnection",
///     hybrid_connection_name="example-Relay-Hybrid-01",
///     namespace_name="example-RelayNamespace-01",
///     requires_client_authorization=True,
///     resource_group_name="resourcegroup")
///
/// ```
///
/// ```yaml
/// resources:
///   hybridConnection:
///     type: azure-native:relay:HybridConnection
///     properties:
///       hybridConnectionName: example-Relay-Hybrid-01
///       namespaceName: example-RelayNamespace-01
///       requiresClientAuthorization: true
///       resourceGroupName: resourcegroup
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
/// $ pulumi import azure-native:relay:HybridConnection example-Relay-Hybrid-01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Relay/namespaces/{namespaceName}/hybridConnections/{hybridConnectionName}
/// ```
class HybridConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The time the hybrid connection was created.
  late final pulumi.Output<String> createdAt;
  /// The number of listeners for this hybrid connection. Note that min : 1 and max:25 are supported.
  late final pulumi.Output<int> listenerCount;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Returns true if client authorization is needed for this hybrid connection; otherwise, false.
  late final pulumi.Output<bool?> requiresClientAuthorization;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The time the namespace was updated.
  late final pulumi.Output<String> updatedAt;
  /// The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored.
  late final pulumi.Output<String?> userMetadata;

  /// Creates a new [HybridConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridConnection]. {@macro pulumi_relay_hybrid_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridConnection(
    String name, {
    HybridConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:relay:HybridConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdAt = registerOutput<String>('createdAt');
    this.listenerCount = registerOutput<int>('listenerCount');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.requiresClientAuthorization = registerOutput<bool?>('requiresClientAuthorization');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.userMetadata = registerOutput<String?>('userMetadata');
  }
}
