import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_json_args.dart';
import 'one_dashboard_json_state.dart';

/// ## Example Usage
///
/// ### Create A New Relic One Dashboard From A JSON File
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
/// import * as std from "@pulumi/std";
///
/// const foo = new newrelic.OneDashboardJson("foo", {json: std.file({
///     input: "dashboard.json",
/// }).then(invoke => invoke.result)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
/// import pulumi_std as std
///
/// foo = newrelic.OneDashboardJson("foo", json=std.file(input="dashboard.json").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.OneDashboardJson("foo", new()
///     {
///         Json = Std.File.Invoke(new()
///         {
///             Input = "dashboard.json",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "dashboard.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewOneDashboardJson(ctx, "foo", &newrelic.OneDashboardJsonArgs{
/// 			Json: pulumi.String(invokeFile.Result),
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
/// import com.pulumi.newrelic.OneDashboardJson;
/// import com.pulumi.newrelic.OneDashboardJsonArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var foo = new OneDashboardJson("foo", OneDashboardJsonArgs.builder()
///             .json(StdFunctions.file(FileArgs.builder()
///                 .input("dashboard.json")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:OneDashboardJson
///     properties:
///       json:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: dashboard.json
///           return: result
/// ```
///
///
/// ## Additional Examples
///
/// ### Setting Thresholds
///
/// The following example demonstrates setting thresholds on a billboard widget.
///
/// `dashboard.json`
/// ```json
/// {
///   "name" : "Sample",
///   "permissions" : "PUBLIC_READ_WRITE",
///   "pages" : [
///     {
///       "name" : "Sample Page",
///       "description" : "A guide to the metrics of daily transactions on the website.",
///       "widgets" : [
///         {
///           "title" : "Transaction Failure Tracker",
///           "layout" : {
///             "column" : 1,
///             "row" : 1,
///             "width" : 3,
///             "height" : 5
///           },
///           "visualization" : {
///             "id" : "viz.billboard"
///           },
///           "rawConfiguration" : {
///             "nrqlQueries" : [
///               {
///                 "accountIds" : [
///                   account_id
///                 ],
///                 "query" : "SELECT count(*) from Transaction where httpResponseCode!=200 since 1 hour ago"
///               }
///             ],
///             "thresholds" : [
///               {
///                 "alertSeverity" : "WARNING",
///                 "value" : 15
///               },
///               {
///                 "alertSeverity" : "CRITICAL",
///                 "value" : 40
///               }
///             ]
///           }
///         }
///       ]
///     }
///   ]
/// }
/// ```
///
/// ### More Complex Examples
///
/// The following examples show more intricate use cases of creating dashboards from JSON files, using this resource.
/// - This example illustrates the use of a variable list of items to create a dashboard, that may be used iteratively to populate queries and other arguments of widgets, using Terraform template files.
/// - This example elaborates on the use of an apt Terraform configuration with additional dependencies, to instrument the use of values obtained from a GraphQL API response iteratively to configure widgets in the dashboard for each item in the response, using the Terraform `jsondecode` function.
///
/// More of such examples may be found in ths GitHub repository.
///
/// ## Import
///
/// New Relic dashboards can be imported using their GUID, e.g.
///
/// ```bash
/// $ terraform import newrelic_one_dashboard_json.my_dashboard <dashboard GUID>
/// ```
class OneDashboardJson extends pulumi.CustomResource {
  /// Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  late final pulumi.Output<String> accountId;

  /// The unique entity identifier of the dashboard in New Relic.
  late final pulumi.Output<String> guid;

  /// The JSON export of a dashboard. [The JSON can be exported from the UI](https://docs.newrelic.com/docs/query-your-data/explore-query-data/dashboards/dashboards-charts-import-export-data/#dashboards)
  late final pulumi.Output<String> json;

  /// The URL for viewing the dashboard.
  late final pulumi.Output<String> permalink;

  /// The date and time when the dashboard was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [OneDashboardJson].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OneDashboardJson]. {@macro pulumi_index_one_dashboard_json_one_dashboard_json_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OneDashboardJson(
    String name, {
    OneDashboardJsonArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/oneDashboardJson:OneDashboardJson',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    guid = registerOutput<String>('guid');
    json = registerOutput<String>('json');
    permalink = registerOutput<String>('permalink');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [OneDashboardJson] resource's state with the given [name] and [id].
  static OneDashboardJson get(
    String name,
    pulumi.Input<String> id, {
    OneDashboardJsonState? state,
  }) {
    return OneDashboardJson._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OneDashboardJson._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/oneDashboardJson:OneDashboardJson',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    guid = registerOutput<String>('guid');
    json = registerOutput<String>('json');
    permalink = registerOutput<String>('permalink');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
