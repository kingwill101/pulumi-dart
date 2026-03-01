import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_analytics_query_pack_query_properties_response_related.dart';
import 'query_args.dart';
import 'system_data_response.dart';

/// A Log Analytics QueryPack-Query definition.
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2019-09-01.
///
/// Other available API versions: 2019-09-01, 2019-09-01-preview, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### QueryPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var query = new AzureNative.OperationalInsights.Query("query", new()
///     {
///         Body = @"let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
/// ",
///         Description = "my description",
///         DisplayName = "Exceptions - New in the last 24 hours",
///         Id = "a449f8af-8e64-4b3a-9b16-5a7165ff98c4",
///         QueryPackName = "my-querypack",
///         Related = new AzureNative.OperationalInsights.Inputs.LogAnalyticsQueryPackQueryPropertiesRelatedArgs
///         {
///             Categories = new[]
///             {
///                 "analytics",
///             },
///         },
///         ResourceGroupName = "my-resource-group",
///         Tags =
///         {
///             { "my-label", new[]
///             {
///                 "label1",
///             } },
///             { "my-other-label", new[]
///             {
///                 "label2",
///             } },
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
/// 	operationalinsights "github.com/pulumi/pulumi-azure-native-sdk/operationalinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := operationalinsights.NewQuery(ctx, "query", &operationalinsights.QueryArgs{
/// 			Body: pulumi.String(`let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
/// `),
/// 			Description:   pulumi.String("my description"),
/// 			DisplayName:   pulumi.String("Exceptions - New in the last 24 hours"),
/// 			Id:            pulumi.String("a449f8af-8e64-4b3a-9b16-5a7165ff98c4"),
/// 			QueryPackName: pulumi.String("my-querypack"),
/// 			Related: &operationalinsights.LogAnalyticsQueryPackQueryPropertiesRelatedArgs{
/// 				Categories: pulumi.StringArray{
/// 					pulumi.String("analytics"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			Tags: pulumi.StringArrayMap{
/// 				"my-label": pulumi.StringArray{
/// 					pulumi.String("label1"),
/// 				},
/// 				"my-other-label": pulumi.StringArray{
/// 					pulumi.String("label2"),
/// 				},
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
/// import com.pulumi.azurenative.operationalinsights.Query;
/// import com.pulumi.azurenative.operationalinsights.QueryArgs;
/// import com.pulumi.azurenative.operationalinsights.inputs.LogAnalyticsQueryPackQueryPropertiesRelatedArgs;
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
///         var query = new Query("query", QueryArgs.builder()
///             .body("""
/// let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
///             """)
///             .description("my description")
///             .displayName("Exceptions - New in the last 24 hours")
///             .id("a449f8af-8e64-4b3a-9b16-5a7165ff98c4")
///             .queryPackName("my-querypack")
///             .related(LogAnalyticsQueryPackQueryPropertiesRelatedArgs.builder()
///                 .categories("analytics")
///                 .build())
///             .resourceGroupName("my-resource-group")
///             .tags(Map.ofEntries(
///                 Map.entry("my-label", "label1"),
///                 Map.entry("my-other-label", "label2")
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
/// const query = new azure_native.operationalinsights.Query("query", {
///     body: `let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
/// `,
///     description: "my description",
///     displayName: "Exceptions - New in the last 24 hours",
///     id: "a449f8af-8e64-4b3a-9b16-5a7165ff98c4",
///     queryPackName: "my-querypack",
///     related: {
///         categories: ["analytics"],
///     },
///     resourceGroupName: "my-resource-group",
///     tags: {
///         "my-label": ["label1"],
///         "my-other-label": ["label2"],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// query = azure_native.operationalinsights.Query("query",
///     body="""let newExceptionsTimeRange = 1d;
/// let timeRangeToCheckBefore = 7d;
/// exceptions
/// | where timestamp < ago(timeRangeToCheckBefore)
/// | summarize count() by problemId
/// | join kind= rightanti (
/// exceptions
/// | where timestamp >= ago(newExceptionsTimeRange)
/// | extend stack = tostring(details[0].rawStack)
/// | summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId
/// ) on problemId
/// | order by  count_ desc
/// """,
///     description="my description",
///     display_name="Exceptions - New in the last 24 hours",
///     id="a449f8af-8e64-4b3a-9b16-5a7165ff98c4",
///     query_pack_name="my-querypack",
///     related={
///         "categories": ["analytics"],
///     },
///     resource_group_name="my-resource-group",
///     tags={
///         "my-label": ["label1"],
///         "my-other-label": ["label2"],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   query:
///     type: azure-native:operationalinsights:Query
///     properties:
///       body: "let newExceptionsTimeRange = 1d;\nlet timeRangeToCheckBefore = 7d;\nexceptions\n| where timestamp < ago(timeRangeToCheckBefore)\n| summarize count() by problemId\n| join kind= rightanti (\nexceptions\n| where timestamp >= ago(newExceptionsTimeRange)\n| extend stack = tostring(details[0].rawStack)\n| summarize count(), dcount(user_AuthenticatedId), min(timestamp), max(timestamp), any(stack) by problemId  \n) on problemId \n| order by  count_ desc\n"
///       description: my description
///       displayName: Exceptions - New in the last 24 hours
///       id: a449f8af-8e64-4b3a-9b16-5a7165ff98c4
///       queryPackName: my-querypack
///       related:
///         categories:
///           - analytics
///       resourceGroupName: my-resource-group
///       tags:
///         my-label:
///           - label1
///         my-other-label:
///           - label2
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
/// $ pulumi import azure-native:operationalinsights:Query a449f8af-8e64-4b3a-9b16-5a7165ff98c4 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/queryPacks/{queryPackName}/queries/{id}
/// ```
class Query extends pulumi.CustomResource {
  /// Object Id of user creating the query.
  late final pulumi.Output<String> author;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Body of the query.
  late final pulumi.Output<String> body;
  /// Description of the query.
  late final pulumi.Output<String?> description;
  /// Unique display name for your query within the Query Pack.
  late final pulumi.Output<String> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Additional properties that can be set for the query.
  late final pulumi.Output<dynamic> properties;
  /// The related metadata items for the function.
  late final pulumi.Output<LogAnalyticsQueryPackQueryPropertiesResponseRelated?> related;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Tags associated with the query.
  late final pulumi.Output<Map<String, List<String>>?> tags;
  /// Creation Date for the Log Analytics Query, in ISO 8601 format.
  late final pulumi.Output<String> timeCreated;
  /// Last modified date of the Log Analytics Query, in ISO 8601 format.
  late final pulumi.Output<String> timeModified;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Query].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Query]. {@macro pulumi_operationalinsights_query_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Query(
    String name, {
    QueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:operationalinsights:Query',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.author = registerOutput<String>('author');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.body = registerOutput<String>('body');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<dynamic>('properties');
    this.related = registerOutput<LogAnalyticsQueryPackQueryPropertiesResponseRelated?>('related');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, List<String>>?>('tags');
    this.timeCreated = registerOutput<String>('timeCreated');
    this.timeModified = registerOutput<String>('timeModified');
    this.type = registerOutput<String>('type');
  }
}
