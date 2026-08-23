import 'package:pulumi/pulumi.dart' as pulumi;
import 'native_dashboard_args.dart';
import 'native_dashboard_state.dart';

/// A configuration for a native dashboard within a Google SecOps (Chronicle) instance.
///
///
/// To get more information about NativeDashboard, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.nativeDashboards)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Nativedashboard Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myBasicDashboard = new gcp.chronicle.NativeDashboard("my_basic_dashboard", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "dashboard",
///     description: "dashboard_description",
///     access: "DASHBOARD_PRIVATE",
///     type: "CUSTOM",
///     filters: [{
///         id: "GlobalTimeFilter",
///         displayName: "Global Time Filter",
///         dataSource: "GLOBAL",
///         isStandardTimeRangeFilter: true,
///         isStandardTimeRangeFilterEnabled: true,
///         filterOperatorAndFieldValues: [{
///             filterOperator: "PAST",
///             fieldValues: [
///                 "1",
///                 "DAY",
///             ],
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_basic_dashboard = gcp.chronicle.NativeDashboard("my_basic_dashboard",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="dashboard",
///     description="dashboard_description",
///     access="DASHBOARD_PRIVATE",
///     type="CUSTOM",
///     filters=[{
///         "id": "GlobalTimeFilter",
///         "display_name": "Global Time Filter",
///         "data_source": "GLOBAL",
///         "is_standard_time_range_filter": True,
///         "is_standard_time_range_filter_enabled": True,
///         "filter_operator_and_field_values": [{
///             "filter_operator": "PAST",
///             "field_values": [
///                 "1",
///                 "DAY",
///             ],
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myBasicDashboard = new Gcp.Chronicle.NativeDashboard("my_basic_dashboard", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "dashboard",
///         Description = "dashboard_description",
///         Access = "DASHBOARD_PRIVATE",
///         Type = "CUSTOM",
///         Filters = new[]
///         {
///             new Gcp.Chronicle.Inputs.NativeDashboardFilterArgs
///             {
///                 Id = "GlobalTimeFilter",
///                 DisplayName = "Global Time Filter",
///                 DataSource = "GLOBAL",
///                 IsStandardTimeRangeFilter = true,
///                 IsStandardTimeRangeFilterEnabled = true,
///                 FilterOperatorAndFieldValues = new[]
///                 {
///                     new Gcp.Chronicle.Inputs.NativeDashboardFilterFilterOperatorAndFieldValueArgs
///                     {
///                         FilterOperator = "PAST",
///                         FieldValues = new[]
///                         {
///                             "1",
///                             "DAY",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewNativeDashboard(ctx, "my_basic_dashboard", &chronicle.NativeDashboardArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName: pulumi.String("dashboard"),
/// 			Description: pulumi.String("dashboard_description"),
/// 			Access:      pulumi.String("DASHBOARD_PRIVATE"),
/// 			Type:        pulumi.String("CUSTOM"),
/// 			Filters: chronicle.NativeDashboardFilterArray{
/// 				&chronicle.NativeDashboardFilterArgs{
/// 					Id:                               pulumi.String("GlobalTimeFilter"),
/// 					DisplayName:                      pulumi.String("Global Time Filter"),
/// 					DataSource:                       pulumi.String("GLOBAL"),
/// 					IsStandardTimeRangeFilter:        pulumi.Bool(true),
/// 					IsStandardTimeRangeFilterEnabled: pulumi.Bool(true),
/// 					FilterOperatorAndFieldValues: chronicle.NativeDashboardFilterFilterOperatorAndFieldValueArray{
/// 						&chronicle.NativeDashboardFilterFilterOperatorAndFieldValueArgs{
/// 							FilterOperator: pulumi.String("PAST"),
/// 							FieldValues: pulumi.StringArray{
/// 								pulumi.String("1"),
/// 								pulumi.String("DAY"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_chronicle_nativedashboard" "my_basic_dashboard" {
///   location     = "us"
///   instance     = "00000000-0000-0000-0000-000000000000"
///   display_name = "dashboard"
///   description  = "dashboard_description"
///   access       = "DASHBOARD_PRIVATE"
///   type         = "CUSTOM"
///   filters {
///     id                                    = "GlobalTimeFilter"
///     display_name                          = "Global Time Filter"
///     data_source                           = "GLOBAL"
///     is_standard_time_range_filter         = true
///     is_standard_time_range_filter_enabled = true
///     filter_operator_and_field_values {
///       filter_operator = "PAST"
///       field_values    = ["1", "DAY"]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.NativeDashboard;
/// import com.pulumi.gcp.chronicle.NativeDashboardArgs;
/// import com.pulumi.gcp.chronicle.inputs.NativeDashboardFilterArgs;
/// import com.pulumi.gcp.chronicle.inputs.NativeDashboardFilterFilterOperatorAndFieldValueArgs;
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
///         var myBasicDashboard = new NativeDashboard("myBasicDashboard", NativeDashboardArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("dashboard")
///             .description("dashboard_description")
///             .access("DASHBOARD_PRIVATE")
///             .type("CUSTOM")
///             .filters(NativeDashboardFilterArgs.builder()
///                 .id("GlobalTimeFilter")
///                 .displayName("Global Time Filter")
///                 .dataSource("GLOBAL")
///                 .isStandardTimeRangeFilter(true)
///                 .isStandardTimeRangeFilterEnabled(true)
///                 .filterOperatorAndFieldValues(NativeDashboardFilterFilterOperatorAndFieldValueArgs.builder()
///                     .filterOperator("PAST")
///                     .fieldValues(
///                         "1",
///                         "DAY")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myBasicDashboard:
///     type: gcp:chronicle:NativeDashboard
///     name: my_basic_dashboard
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: dashboard
///       description: dashboard_description
///       access: DASHBOARD_PRIVATE
///       type: CUSTOM
///       filters:
///         - id: GlobalTimeFilter
///           displayName: Global Time Filter
///           dataSource: GLOBAL
///           isStandardTimeRangeFilter: true
///           isStandardTimeRangeFilterEnabled: true
///           filterOperatorAndFieldValues:
///             - filterOperator: PAST
///               fieldValues:
///                 - '1'
///                 - DAY
/// ```
///
///
/// ## Import
///
/// NativeDashboard can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/nativeDashboards/{{dashboard_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{dashboard_id}}`
/// * `{{location}}/{{instance}}/{{dashboard_id}}`
///
///
/// When using the `pulumi import` command, NativeDashboard can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/nativeDashboard:NativeDashboard default projects/{{project}}/locations/{{location}}/instances/{{instance}}/nativeDashboards/{{dashboard_id}}
/// $ pulumi import gcp:chronicle/nativeDashboard:NativeDashboard default {{project}}/{{location}}/{{instance}}/{{dashboard_id}}
/// $ pulumi import gcp:chronicle/nativeDashboard:NativeDashboard default {{location}}/{{instance}}/{{dashboard_id}}
/// ```
class NativeDashboard extends pulumi.CustomResource {
  /// The access level of the dashboard.
  /// Possible values:
  /// DASHBOARD_PRIVATE
  /// DASHBOARD_PUBLIC
  late final pulumi.Output<String?> access;
  /// A list of charts included in the dashboard definition.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> charts;
  /// The creation time of the dashboard.
  late final pulumi.Output<String> createTime;
  /// The ID of the user who created the dashboard.
  late final pulumi.Output<String> createUserId;
  /// The unique ID of the Dashboard.
  late final pulumi.Output<String> dashboardId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the dashboard.
  late final pulumi.Output<String?> description;
  /// The display name/title of the dashboard visible to users.
  late final pulumi.Output<String> displayName;
  /// Server-computed checksum for optimistic concurrency control,
  /// sent on update and delete requests.
  late final pulumi.Output<String> etag;
  /// Global filters defined for the dashboard.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> filters;
  /// (Output)
  /// The server-generated fingerprint of the dashboard definition.
  late final pulumi.Output<String> fingerprint;
  /// The ID of the Chronicle instance.
  late final pulumi.Output<String> instance;
  /// Whether the dashboard is pinned by the user.
  late final pulumi.Output<bool?> isPinned;
  /// (Output)
  /// The time when this dashboard was last viewed.
  late final pulumi.Output<String> lastViewedTime;
  /// The location of the Chronicle instance.
  late final pulumi.Output<String> location;
  /// The full resource name of the dashboard.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The type of dashboard.
  /// Possible values:
  /// CURATED, PRIVATE, PUBLIC, CUSTOM, MARKETPLACE
  late final pulumi.Output<String?> type;
  /// The time when the dashboard was last edited.
  late final pulumi.Output<String> updateTime;
  /// The ID of the user who last edited the dashboard.
  late final pulumi.Output<String> updateUserId;

  /// Creates a new [NativeDashboard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NativeDashboard]. {@macro pulumi_chronicle_native_dashboard_native_dashboard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NativeDashboard(
    String name, {
    NativeDashboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/nativeDashboard:NativeDashboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    access = registerOutput<String?>('access');
    charts = registerOutput<List<Map<String, dynamic>>>('charts');
    createTime = registerOutput<String>('createTime');
    createUserId = registerOutput<String>('createUserId');
    dashboardId = registerOutput<String>('dashboardId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    filters = registerOutput<List<Map<String, dynamic>>?>('filters');
    fingerprint = registerOutput<String>('fingerprint');
    instance = registerOutput<String>('instance');
    isPinned = registerOutput<bool?>('isPinned');
    lastViewedTime = registerOutput<String>('lastViewedTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
    updateUserId = registerOutput<String>('updateUserId');
  }

  /// Gets an existing [NativeDashboard] resource's state with the given [name] and [id].
  static NativeDashboard get(
    String name,
    pulumi.Input<String> id, {
    NativeDashboardState? state,
  }) {
    return NativeDashboard._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NativeDashboard._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/nativeDashboard:NativeDashboard',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    access = registerOutput<String?>('access');
    charts = registerOutput<List<Map<String, dynamic>>>('charts');
    createTime = registerOutput<String>('createTime');
    createUserId = registerOutput<String>('createUserId');
    dashboardId = registerOutput<String>('dashboardId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    filters = registerOutput<List<Map<String, dynamic>>?>('filters');
    fingerprint = registerOutput<String>('fingerprint');
    instance = registerOutput<String>('instance');
    isPinned = registerOutput<bool?>('isPinned');
    lastViewedTime = registerOutput<String>('lastViewedTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
    updateUserId = registerOutput<String>('updateUserId');
  }
}
