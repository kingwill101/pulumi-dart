import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_args.dart';
import 'managed_integration_runtime_response.dart';

/// Integration runtime resource type.
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create integration runtime
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationRuntime = new AzureNative.Synapse.IntegrationRuntime("integrationRuntime", new()
///     {
///         IntegrationRuntimeName = "exampleIntegrationRuntime",
///         Properties = new AzureNative.Synapse.Inputs.SelfHostedIntegrationRuntimeArgs
///         {
///             Description = "A selfhosted integration runtime",
///             Type = "SelfHosted",
///         },
///         ResourceGroupName = "exampleResourceGroup",
///         WorkspaceName = "exampleWorkspace",
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
/// 		_, err := synapse.NewIntegrationRuntime(ctx, "integrationRuntime", &synapse.IntegrationRuntimeArgs{
/// 			IntegrationRuntimeName: pulumi.String("exampleIntegrationRuntime"),
/// 			Properties: &synapse.SelfHostedIntegrationRuntimeArgs{
/// 				Description: pulumi.String("A selfhosted integration runtime"),
/// 				Type:        pulumi.String("SelfHosted"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
/// 			WorkspaceName:     pulumi.String("exampleWorkspace"),
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
/// resource "azure-native_synapse_integrationruntime" "integrationRuntime" {
///   integration_runtime_name = "exampleIntegrationRuntime"
///   properties = {
///     "description" = "A selfhosted integration runtime"
///     "type"        = "SelfHosted"
///   }
///   resource_group_name = "exampleResourceGroup"
///   workspace_name      = "exampleWorkspace"
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
/// import com.pulumi.azurenative.synapse.IntegrationRuntime;
/// import com.pulumi.azurenative.synapse.IntegrationRuntimeArgs;
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
///         var integrationRuntime = new IntegrationRuntime("integrationRuntime", IntegrationRuntimeArgs.builder()
///             .integrationRuntimeName("exampleIntegrationRuntime")
///             .properties(SelfHostedIntegrationRuntimeArgs.builder()
///                 .description("A selfhosted integration runtime")
///                 .type("SelfHosted")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
///             .workspaceName("exampleWorkspace")
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
/// const integrationRuntime = new azure_native.synapse.IntegrationRuntime("integrationRuntime", {
///     integrationRuntimeName: "exampleIntegrationRuntime",
///     properties: {
///         description: "A selfhosted integration runtime",
///         type: "SelfHosted",
///     },
///     resourceGroupName: "exampleResourceGroup",
///     workspaceName: "exampleWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_runtime = azure_native.synapse.IntegrationRuntime("integrationRuntime",
///     integration_runtime_name="exampleIntegrationRuntime",
///     properties={
///         "description": "A selfhosted integration runtime",
///         "type": "SelfHosted",
///     },
///     resource_group_name="exampleResourceGroup",
///     workspace_name="exampleWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   integrationRuntime:
///     type: azure-native:synapse:IntegrationRuntime
///     properties:
///       integrationRuntimeName: exampleIntegrationRuntime
///       properties:
///         description: A selfhosted integration runtime
///         type: SelfHosted
///       resourceGroupName: exampleResourceGroup
///       workspaceName: exampleWorkspace
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
/// $ pulumi import azure-native:synapse:IntegrationRuntime exampleIntegrationRuntime /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/integrationRuntimes/{integrationRuntimeName}
/// ```
class IntegrationRuntime extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Etag.
  late final pulumi.Output<String> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Integration runtime properties.
  late final pulumi.Output<ManagedIntegrationRuntimeResponse> properties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationRuntime].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationRuntime]. {@macro pulumi_synapse_integration_runtime_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationRuntime(
    String name, {
    IntegrationRuntimeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:IntegrationRuntime',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ManagedIntegrationRuntimeResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedIntegrationRuntimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
