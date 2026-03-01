import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';
import 'workspace_state.dart';

/// Manages an Azure Monitor Workspace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleWorkspace = new azure.monitoring.Workspace("example", {
///     name: "example-mamw",
///     resourceGroupName: example.name,
///     location: "West Europe",
///     tags: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_workspace = azure.monitoring.Workspace("example",
///     name="example-mamw",
///     resource_group_name=example.name,
///     location="West Europe",
///     tags={
///         "key": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleWorkspace = new Azure.Monitoring.Workspace("example", new()
///     {
///         Name = "example-mamw",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///         Tags =
///         {
///             { "key", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewWorkspace(ctx, "example", &monitoring.WorkspaceArgs{
/// 			Name:              pulumi.String("example-mamw"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
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
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.monitoring.Workspace;
/// import com.pulumi.azure.monitoring.WorkspaceArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-mamw")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .tags(Map.of("key", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleWorkspace:
///     type: azure:monitoring:Workspace
///     name: example
///     properties:
///       name: example-mamw
///       resourceGroupName: ${example.name}
///       location: West Europe
///       tags:
///         key: value
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Monitor` - 2023-04-03
///
/// ## Import
///
/// Azure Monitor Workspace can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/workspace:Workspace example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Monitor/accounts/azureMonitorWorkspace1
/// ```
class Workspace extends pulumi.CustomResource {
  /// The ID of the managed default Data Collection Endpoint created with the Azure Monitor Workspace.
  late final pulumi.Output<String> defaultDataCollectionEndpointId;
  /// The ID of the managed default Data Collection Rule created with the Azure Monitor Workspace.
  late final pulumi.Output<String> defaultDataCollectionRuleId;
  /// Specifies the Azure Region where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name which should be used for this Azure Monitor Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Is public network access enabled? Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The query endpoint for the Azure Monitor Workspace.
  late final pulumi.Output<String> queryEndpoint;
  /// Specifies the name of the Resource Group where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Monitor Workspace.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_monitoring_workspace_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultDataCollectionEndpointId = registerOutput<String>('defaultDataCollectionEndpointId');
    this.defaultDataCollectionRuleId = registerOutput<String>('defaultDataCollectionRuleId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.queryEndpoint = registerOutput<String>('queryEndpoint');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Workspace] resource's state with the given [name] and [id].
  static Workspace get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceState? state,
  }) {
    return Workspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Workspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultDataCollectionEndpointId = registerOutput<String>('defaultDataCollectionEndpointId');
    this.defaultDataCollectionRuleId = registerOutput<String>('defaultDataCollectionRuleId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.queryEndpoint = registerOutput<String>('queryEndpoint');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
