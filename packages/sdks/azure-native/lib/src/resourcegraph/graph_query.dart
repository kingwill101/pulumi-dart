import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_query_args.dart';
import 'system_data_response.dart';

/// Graph Query entity definition.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2020-04-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2021-03-01, 2022-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resourcegraph [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Graph Query
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var graphQuery = new AzureNative.ResourceGraph.GraphQuery("graphQuery", new()
///     {
///         Description = "Docker VMs in PROD",
///         Query = "where isnotnull(tags['Prod']) and properties.extensions[0].Name == 'docker'",
///         ResourceGroupName = "my-resource-group",
///         ResourceName = "MyDockerVMs",
///         Tags = null,
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
/// 	resourcegraph "github.com/pulumi/pulumi-azure-native-sdk/resourcegraph/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resourcegraph.NewGraphQuery(ctx, "graphQuery", &resourcegraph.GraphQueryArgs{
/// 			Description:       pulumi.String("Docker VMs in PROD"),
/// 			Query:             pulumi.String("where isnotnull(tags['Prod']) and properties.extensions[0].Name == 'docker'"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			ResourceName:      pulumi.String("MyDockerVMs"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.resourcegraph.GraphQuery;
/// import com.pulumi.azurenative.resourcegraph.GraphQueryArgs;
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
///         var graphQuery = new GraphQuery("graphQuery", GraphQueryArgs.builder()
///             .description("Docker VMs in PROD")
///             .query("where isnotnull(tags['Prod']) and properties.extensions[0].Name == 'docker'")
///             .resourceGroupName("my-resource-group")
///             .resourceName("MyDockerVMs")
///             .tags(Map.ofEntries(
///             ))
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
/// const graphQuery = new azure_native.resourcegraph.GraphQuery("graphQuery", {
///     description: "Docker VMs in PROD",
///     query: "where isnotnull(tags['Prod']) and properties.extensions[0].Name == 'docker'",
///     resourceGroupName: "my-resource-group",
///     resourceName: "MyDockerVMs",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// graph_query = azure_native.resourcegraph.GraphQuery("graphQuery",
///     description="Docker VMs in PROD",
///     query="where isnotnull(tags['Prod']) and properties.extensions[0].Name == 'docker'",
///     resource_group_name="my-resource-group",
///     resource_name_="MyDockerVMs",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   graphQuery:
///     type: azure-native:resourcegraph:GraphQuery
///     properties:
///       description: Docker VMs in PROD
///       query: where isnotnull(tags['Prod']) and properties.extensions[0].Name == 'docker'
///       resourceGroupName: my-resource-group
///       resourceName: MyDockerVMs
///       tags: {}
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
/// $ pulumi import azure-native:resourcegraph:GraphQuery MyDockerVMs /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ResourceGraph/queries/{resourceName}
/// ```
class GraphQuery extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The description of a graph query.
  late final pulumi.Output<String?> description;

  /// This will be used to handle Optimistic Concurrency. If not present, it will always overwrite the existing resource without checking conflict.
  late final pulumi.Output<String?> etag;

  /// The location of the resource
  late final pulumi.Output<String?> location;

  /// Azure resource name. This is GUID value. The display name should be assigned within properties field.
  late final pulumi.Output<String> name;

  /// KQL query that will be graph.
  late final pulumi.Output<String> query;

  /// Enum indicating a type of graph query.
  late final pulumi.Output<String> resultKind;

  /// The system metadata relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;

  /// Date and time in UTC of the last modification that was made to this graph query definition.
  late final pulumi.Output<String> timeModified;

  /// Azure resource type
  late final pulumi.Output<String> type;

  /// Creates a new [GraphQuery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GraphQuery]. {@macro pulumi_resourcegraph_graph_query_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GraphQuery(
    String name, {
    GraphQueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:resourcegraph:GraphQuery',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    resultKind = registerOutput<String>('resultKind');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    timeModified = registerOutput<String>('timeModified');
    type = registerOutput<String>('type');
  }
}
