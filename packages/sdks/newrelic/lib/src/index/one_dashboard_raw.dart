import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_raw_args.dart';
import 'one_dashboard_raw_page.dart';
import 'one_dashboard_raw_state.dart';

/// > **NOTE:** The newrelic.OneDashboardJson resource is preferred for configuring dashboards in New Relic. This resource does not support the latest dashboard features and will receive less investment compared to newrelic_one_dashboard_json.
///
/// ## Example Usage
///
/// ### Create A New Relic One Dashboard With RawConfiguration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const exampledash = new newrelic.OneDashboardRaw("exampledash", {
///     name: "New Relic Terraform Example",
///     pages: [{
///         name: "Page Name",
///         widgets: [
///             {
///                 title: "Custom widget",
///                 row: 1,
///                 column: 1,
///                 width: 1,
///                 height: 1,
///                 visualizationId: "viz.custom",
///                 configuration: `      {
///         \\"legend\\": {
///           \\"enabled\\": false
///         },
///         \\"nrqlQueries\\": [
///           {
///             \\"accountId\\": \` + accountID + \`,
///             \\"query\\": \\"SELECT average(loadAverageOneMinute), average(loadAverageFiveMinute), average(loadAverageFifteenMinute) from SystemSample SINCE 60 minutes ago    TIMESERIES\\"
///           }
///         ],
///         \\"yAxisLeft\\": {
///           \\"max\\": 100,
///           \\"min\\": 50,
///           \\"zero\\": false
///         }
///       }
/// `,
///             },
///             {
///                 title: "Server CPU",
///                 row: 1,
///                 column: 2,
///                 width: 1,
///                 height: 1,
///                 visualizationId: "viz.testing",
///                 configuration: `      {
///         \\"nrqlQueries\\": [
///           {
///             \\"accountId\\": \` + accountID + \`,
///             \\"query\\": \\"SELECT average(cpuPercent) FROM SystemSample since 3 hours ago facet hostname limit 400\\"
///           }
///         ]
///       }
/// `,
///             },
///             {
///                 title: "Docker Server CPU",
///                 row: 1,
///                 column: 3,
///                 height: 1,
///                 width: 1,
///                 visualizationId: "viz.bar",
///                 configuration: JSON.stringify({
///                     facet: {
///                         showOtherSeries: false,
///                     },
///                     nrqlQueries: [{
///                         accountId: accountID,
///                         query: "SELECT average(cpuPercent) FROM SystemSample since 3 hours ago facet hostname limit 400",
///                     }],
///                 }),
///                 linkedEntityGuids: ["MzI5ODAxNnxWSVp8REFTSEJPQVJEfDI2MTcxNDc"],
///             },
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_newrelic as newrelic
///
/// exampledash = newrelic.OneDashboardRaw("exampledash",
///     name="New Relic Terraform Example",
///     pages=[{
///         "name": "Page Name",
///         "widgets": [
///             {
///                 "title": "Custom widget",
///                 "row": 1,
///                 "column": 1,
///                 "width": 1,
///                 "height": 1,
///                 "visualization_id": "viz.custom",
///                 "configuration": """      {
///         \"legend\": {
///           \"enabled\": false
///         },
///         \"nrqlQueries\": [
///           {
///             \"accountId\": ` + accountID + `,
///             \"query\": \"SELECT average(loadAverageOneMinute), average(loadAverageFiveMinute), average(loadAverageFifteenMinute) from SystemSample SINCE 60 minutes ago    TIMESERIES\"
///           }
///         ],
///         \"yAxisLeft\": {
///           \"max\": 100,
///           \"min\": 50,
///           \"zero\": false
///         }
///       }
/// """,
///             },
///             {
///                 "title": "Server CPU",
///                 "row": 1,
///                 "column": 2,
///                 "width": 1,
///                 "height": 1,
///                 "visualization_id": "viz.testing",
///                 "configuration": """      {
///         \"nrqlQueries\": [
///           {
///             \"accountId\": ` + accountID + `,
///             \"query\": \"SELECT average(cpuPercent) FROM SystemSample since 3 hours ago facet hostname limit 400\"
///           }
///         ]
///       }
/// """,
///             },
///             {
///                 "title": "Docker Server CPU",
///                 "row": 1,
///                 "column": 3,
///                 "height": 1,
///                 "width": 1,
///                 "visualization_id": "viz.bar",
///                 "configuration": json.dumps({
///                     "facet": {
///                         "showOtherSeries": False,
///                     },
///                     "nrqlQueries": [{
///                         "accountId": account_id,
///                         "query": "SELECT average(cpuPercent) FROM SystemSample since 3 hours ago facet hostname limit 400",
///                     }],
///                 }),
///                 "linked_entity_guids": ["MzI5ODAxNnxWSVp8REFTSEJPQVJEfDI2MTcxNDc"],
///             },
///         ],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampledash = new NewRelic.OneDashboardRaw("exampledash", new()
///     {
///         Name = "New Relic Terraform Example",
///         Pages = new[]
///         {
///             new NewRelic.Inputs.OneDashboardRawPageArgs
///             {
///                 Name = "Page Name",
///                 Widgets = new[]
///                 {
///                     new NewRelic.Inputs.OneDashboardRawPageWidgetArgs
///                     {
///                         Title = "Custom widget",
///                         Row = 1,
///                         Column = 1,
///                         Width = 1,
///                         Height = 1,
///                         VisualizationId = "viz.custom",
///                         Configuration = @"      {
///         \""legend\"": {
///           \""enabled\"": false
///         },
///         \""nrqlQueries\"": [
///           {
///             \""accountId\"": ` + accountID + `,
///             \""query\"": \""SELECT average(loadAverageOneMinute), average(loadAverageFiveMinute), average(loadAverageFifteenMinute) from SystemSample SINCE 60 minutes ago    TIMESERIES\""
///           }
///         ],
///         \""yAxisLeft\"": {
///           \""max\"": 100,
///           \""min\"": 50,
///           \""zero\"": false
///         }
///       }
/// ",
///                     },
///                     new NewRelic.Inputs.OneDashboardRawPageWidgetArgs
///                     {
///                         Title = "Server CPU",
///                         Row = 1,
///                         Column = 2,
///                         Width = 1,
///                         Height = 1,
///                         VisualizationId = "viz.testing",
///                         Configuration = @"      {
///         \""nrqlQueries\"": [
///           {
///             \""accountId\"": ` + accountID + `,
///             \""query\"": \""SELECT average(cpuPercent) FROM SystemSample since 3 hours ago facet hostname limit 400\""
///           }
///         ]
///       }
/// ",
///                     },
///                     new NewRelic.Inputs.OneDashboardRawPageWidgetArgs
///                     {
///                         Title = "Docker Server CPU",
///                         Row = 1,
///                         Column = 3,
///                         Height = 1,
///                         Width = 1,
///                         VisualizationId = "viz.bar",
///                         Configuration = JsonSerializer.Serialize(new Dictionary<string, object?>
///                         {
///                             ["facet"] = new Dictionary<string, object?>
///                             {
///                                 ["showOtherSeries"] = false,
///                             },
///                             ["nrqlQueries"] = new[]
///                             {
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["accountId"] = accountID,
///                                     ["query"] = "SELECT average(cpuPercent) FROM SystemSample since 3 hours ago facet hostname limit 400",
///                                 },
///                             },
///                         }),
///                         LinkedEntityGuids = new[]
///                         {
///                             "MzI5ODAxNnxWSVp8REFTSEJPQVJEfDI2MTcxNDc",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"facet": map[string]interface{}{
/// 				"showOtherSeries": false,
/// 			},
/// 			"nrqlQueries": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"accountId": accountID,
/// 					"query":     "SELECT average(cpuPercent) FROM SystemSample since 3 hours ago facet hostname limit 400",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = newrelic.NewOneDashboardRaw(ctx, "exampledash", &newrelic.OneDashboardRawArgs{
/// 			Name: pulumi.String("New Relic Terraform Example"),
/// 			Pages: newrelic.OneDashboardRawPageArray{
/// 				&newrelic.OneDashboardRawPageArgs{
/// 					Name: pulumi.String("Page Name"),
/// 					Widgets: newrelic.OneDashboardRawPageWidgetArray{
/// 						&newrelic.OneDashboardRawPageWidgetArgs{
/// 							Title:           pulumi.String("Custom widget"),
/// 							Row:             pulumi.Int(1),
/// 							Column:          pulumi.Int(1),
/// 							Width:           pulumi.Int(1),
/// 							Height:          pulumi.Int(1),
/// 							VisualizationId: pulumi.String("viz.custom"),
/// 							Configuration:   pulumi.String("      {\n        \\\"legend\\\": {\n          \\\"enabled\\\": false\n        },\n        \\\"nrqlQueries\\\": [\n          {\n            \\\"accountId\\\": ` + accountID + `,\n            \\\"query\\\": \\\"SELECT average(loadAverageOneMinute), average(loadAverageFiveMinute), average(loadAverageFifteenMinute) from SystemSample SINCE 60 minutes ago    TIMESERIES\\\"\n          }\n        ],\n        \\\"yAxisLeft\\\": {\n          \\\"max\\\": 100,\n          \\\"min\\\": 50,\n          \\\"zero\\\": false\n        }\n      }\n"),
/// 						},
/// 						&newrelic.OneDashboardRawPageWidgetArgs{
/// 							Title:           pulumi.String("Server CPU"),
/// 							Row:             pulumi.Int(1),
/// 							Column:          pulumi.Int(2),
/// 							Width:           pulumi.Int(1),
/// 							Height:          pulumi.Int(1),
/// 							VisualizationId: pulumi.String("viz.testing"),
/// 							Configuration:   pulumi.String("      {\n        \\\"nrqlQueries\\\": [\n          {\n            \\\"accountId\\\": ` + accountID + `,\n            \\\"query\\\": \\\"SELECT average(cpuPercent) FROM SystemSample since 3 hours ago facet hostname limit 400\\\"\n          }\n        ]\n      }\n"),
/// 						},
/// 						&newrelic.OneDashboardRawPageWidgetArgs{
/// 							Title:           pulumi.String("Docker Server CPU"),
/// 							Row:             pulumi.Int(1),
/// 							Column:          pulumi.Int(3),
/// 							Height:          pulumi.Int(1),
/// 							Width:           pulumi.Int(1),
/// 							VisualizationId: pulumi.String("viz.bar"),
/// 							Configuration:   pulumi.String(json0),
/// 							LinkedEntityGuids: pulumi.StringArray{
/// 								pulumi.String("MzI5ODAxNnxWSVp8REFTSEJPQVJEfDI2MTcxNDc"),
/// 							},
/// 						},
/// 					},
/// 				},
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
/// import com.pulumi.newrelic.OneDashboardRaw;
/// import com.pulumi.newrelic.OneDashboardRawArgs;
/// import com.pulumi.newrelic.inputs.OneDashboardRawPageArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var exampledash = new OneDashboardRaw("exampledash", OneDashboardRawArgs.builder()
///             .name("New Relic Terraform Example")
///             .pages(OneDashboardRawPageArgs.builder()
///                 .name("Page Name")
///                 .widgets(
///                     OneDashboardRawPageWidgetArgs.builder()
///                         .title("Custom widget")
///                         .row(1)
///                         .column(1)
///                         .width(1)
///                         .height(1)
///                         .visualizationId("viz.custom")
///                         .configuration("""
///       {
///         \"legend\": {
///           \"enabled\": false
///         },
///         \"nrqlQueries\": [
///           {
///             \"accountId\": ` + accountID + `,
///             \"query\": \"SELECT average(loadAverageOneMinute), average(loadAverageFiveMinute), average(loadAverageFifteenMinute) from SystemSample SINCE 60 minutes ago    TIMESERIES\"
///           }
///         ],
///         \"yAxisLeft\": {
///           \"max\": 100,
///           \"min\": 50,
///           \"zero\": false
///         }
///       }
///                         """)
///                         .build(),
///                     OneDashboardRawPageWidgetArgs.builder()
///                         .title("Server CPU")
///                         .row(1)
///                         .column(2)
///                         .width(1)
///                         .height(1)
///                         .visualizationId("viz.testing")
///                         .configuration("""
///       {
///         \"nrqlQueries\": [
///           {
///             \"accountId\": ` + accountID + `,
///             \"query\": \"SELECT average(cpuPercent) FROM SystemSample since 3 hours ago facet hostname limit 400\"
///           }
///         ]
///       }
///                         """)
///                         .build(),
///                     OneDashboardRawPageWidgetArgs.builder()
///                         .title("Docker Server CPU")
///                         .row(1)
///                         .column(3)
///                         .height(1)
///                         .width(1)
///                         .visualizationId("viz.bar")
///                         .configuration(serializeJson(
///                             jsonObject(
///                                 jsonProperty("facet", jsonObject(
///                                     jsonProperty("showOtherSeries", false)
///                                 )),
///                                 jsonProperty("nrqlQueries", jsonArray(jsonObject(
///                                     jsonProperty("accountId", accountID),
///                                     jsonProperty("query", "SELECT average(cpuPercent) FROM SystemSample since 3 hours ago facet hostname limit 400")
///                                 )))
///                             )))
///                         .linkedEntityGuids("MzI5ODAxNnxWSVp8REFTSEJPQVJEfDI2MTcxNDc")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampledash:
///     type: newrelic:OneDashboardRaw
///     properties:
///       name: New Relic Terraform Example
///       pages:
///         - name: Page Name
///           widgets:
///             - title: Custom widget
///               row: 1
///               column: 1
///               width: 1
///               height: 1
///               visualizationId: viz.custom
///               configuration: |2
///                       {
///                         \"legend\": {
///                           \"enabled\": false
///                         },
///                         \"nrqlQueries\": [
///                           {
///                             \"accountId\": ` + accountID + `,
///                             \"query\": \"SELECT average(loadAverageOneMinute), average(loadAverageFiveMinute), average(loadAverageFifteenMinute) from SystemSample SINCE 60 minutes ago    TIMESERIES\"
///                           }
///                         ],
///                         \"yAxisLeft\": {
///                           \"max\": 100,
///                           \"min\": 50,
///                           \"zero\": false
///                         }
///                       }
///             - title: Server CPU
///               row: 1
///               column: 2
///               width: 1
///               height: 1
///               visualizationId: viz.testing
///               configuration: |2
///                       {
///                         \"nrqlQueries\": [
///                           {
///                             \"accountId\": ` + accountID + `,
///                             \"query\": \"SELECT average(cpuPercent) FROM SystemSample since 3 hours ago facet hostname limit 400\"
///                           }
///                         ]
///                       }
///             - title: Docker Server CPU
///               row: 1
///               column: 3
///               height: 1
///               width: 1
///               visualizationId: viz.bar
///               configuration:
///                 fn::toJSON:
///                   facet:
///                     showOtherSeries: false
///                   nrqlQueries:
///                     - accountId: ${accountID}
///                       query: SELECT average(cpuPercent) FROM SystemSample since 3 hours ago facet hostname limit 400
///               linkedEntityGuids:
///                 - MzI5ODAxNnxWSVp8REFTSEJPQVJEfDI2MTcxNDc
/// ```
class OneDashboardRaw extends pulumi.CustomResource {
  /// Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  late final pulumi.Output<String> accountId;
  /// Brief text describing the dashboard.
  late final pulumi.Output<String?> description;
  /// The unique entity identifier of the dashboard page in New Relic.
  late final pulumi.Output<String> guid;
  /// The title of the dashboard.
  late final pulumi.Output<String> name;
  /// A nested block that describes a page. See Nested page blocks below for details.
  late final pulumi.Output<List<OneDashboardRawPage>> pages;
  /// The URL for viewing the dashboard.
  late final pulumi.Output<String> permalink;
  /// Determines who can see the dashboard in an account. Valid values are `private`, `public_read_only`, or `public_read_write`. Defaults to `public_read_only`.
  late final pulumi.Output<String?> permissions;

  /// Creates a new [OneDashboardRaw].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OneDashboardRaw]. {@macro pulumi_index_one_dashboard_raw_one_dashboard_raw_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OneDashboardRaw(
    String name, {
    OneDashboardRawArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/oneDashboardRaw:OneDashboardRaw',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.description = registerOutput<String?>('description');
    this.guid = registerOutput<String>('guid');
    this.name = registerOutput<String>('name');
    this.pages = registerOutput<List<OneDashboardRawPage>>('pages');
    this.permalink = registerOutput<String>('permalink');
    this.permissions = registerOutput<String?>('permissions');
  }

  /// Gets an existing [OneDashboardRaw] resource's state with the given [name] and [id].
  static OneDashboardRaw get(
    String name,
    pulumi.Input<String> id, {
    OneDashboardRawState? state,
  }) {
    return OneDashboardRaw._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OneDashboardRaw._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/oneDashboardRaw:OneDashboardRaw',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.description = registerOutput<String?>('description');
    this.guid = registerOutput<String>('guid');
    this.name = registerOutput<String>('name');
    this.pages = registerOutput<List<OneDashboardRawPage>>('pages');
    this.permalink = registerOutput<String>('permalink');
    this.permissions = registerOutput<String?>('permissions');
  }
}
