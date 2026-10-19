import 'package:pulumi/pulumi.dart' as pulumi;
import 'snooze_args.dart';
import 'snooze_criteria.dart';
import 'snooze_interval.dart';
import 'snooze_state.dart';

/// A Snooze will prevent any alerts from being opened, and close any that are already open.
/// The Snooze will work on alerts that match the criteria defined in the Snooze.
/// The Snooze will be active from interval.start_time through interval.end_time.
///
/// &gt; **Note:** Monitoring Snoozes cannot be deleted from the Google Cloud Platform.
/// Destroying a Terraform-managed Snooze will cancel the snooze and remove it from state but
/// *will not delete the resource from the project.*
///
///
/// To get more information about Snooze, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.snoozes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/alerts/snooze)
///
/// ## Example Usage
///
/// ### Monitoring Snooze Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const alertPolicy = new gcp.monitoring.AlertPolicy("alert_policy", {
///     displayName: "My Alert Policy",
///     combiner: "OR",
///     conditions: [{
///         displayName: "test condition",
///         conditionThreshold: {
///             filter: "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"",
///             duration: "60s",
///             comparison: "COMPARISON_GT",
///             aggregations: [{
///                 alignmentPeriod: "60s",
///                 perSeriesAligner: "ALIGN_RATE",
///             }],
///         },
///     }],
/// });
/// const snooze = new gcp.monitoring.Snooze("snooze", {
///     displayName: "My Snooze",
///     interval: {
///         startTime: "2024-02-03T07:44:12Z",
///         endTime: "2024-02-05T07:44:12Z",
///     },
///     criteria: {
///         policies: [alertPolicy.id],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// alert_policy = gcp.monitoring.AlertPolicy("alert_policy",
///     display_name="My Alert Policy",
///     combiner="OR",
///     conditions=[{
///         "display_name": "test condition",
///         "condition_threshold": {
///             "filter": "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"",
///             "duration": "60s",
///             "comparison": "COMPARISON_GT",
///             "aggregations": [{
///                 "alignment_period": "60s",
///                 "per_series_aligner": "ALIGN_RATE",
///             }],
///         },
///     }])
/// snooze = gcp.monitoring.Snooze("snooze",
///     display_name="My Snooze",
///     interval={
///         "start_time": "2024-02-03T07:44:12Z",
///         "end_time": "2024-02-05T07:44:12Z",
///     },
///     criteria={
///         "policies": [alert_policy.id],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var alertPolicy = new Gcp.Monitoring.AlertPolicy("alert_policy", new()
///     {
///         DisplayName = "My Alert Policy",
///         Combiner = "OR",
///         Conditions = new[]
///         {
///             new Gcp.Monitoring.Inputs.AlertPolicyConditionArgs
///             {
///                 DisplayName = "test condition",
///                 ConditionThreshold = new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionThresholdArgs
///                 {
///                     Filter = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"",
///                     Duration = "60s",
///                     Comparison = "COMPARISON_GT",
///                     Aggregations = new[]
///                     {
///                         new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionThresholdAggregationArgs
///                         {
///                             AlignmentPeriod = "60s",
///                             PerSeriesAligner = "ALIGN_RATE",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var snooze = new Gcp.Monitoring.Snooze("snooze", new()
///     {
///         DisplayName = "My Snooze",
///         Interval = new Gcp.Monitoring.Inputs.SnoozeIntervalArgs
///         {
///             StartTime = "2024-02-03T07:44:12Z",
///             EndTime = "2024-02-05T07:44:12Z",
///         },
///         Criteria = new Gcp.Monitoring.Inputs.SnoozeCriteriaArgs
///         {
///             Policies = new[]
///             {
///                 alertPolicy.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		alertPolicy, err := monitoring.NewAlertPolicy(ctx, "alert_policy", &monitoring.AlertPolicyArgs{
/// 			DisplayName: pulumi.String("My Alert Policy"),
/// 			Combiner:    pulumi.String("OR"),
/// 			Conditions: monitoring.AlertPolicyConditionArray{
/// 				&monitoring.AlertPolicyConditionArgs{
/// 					DisplayName: pulumi.String("test condition"),
/// 					ConditionThreshold: &monitoring.AlertPolicyConditionConditionThresholdArgs{
/// 						Filter:     pulumi.String("metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""),
/// 						Duration:   pulumi.String("60s"),
/// 						Comparison: pulumi.String("COMPARISON_GT"),
/// 						Aggregations: monitoring.AlertPolicyConditionConditionThresholdAggregationArray{
/// 							&monitoring.AlertPolicyConditionConditionThresholdAggregationArgs{
/// 								AlignmentPeriod:  pulumi.String("60s"),
/// 								PerSeriesAligner: pulumi.String("ALIGN_RATE"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewSnooze(ctx, "snooze", &monitoring.SnoozeArgs{
/// 			DisplayName: pulumi.String("My Snooze"),
/// 			Interval: &monitoring.SnoozeIntervalArgs{
/// 				StartTime: pulumi.String("2024-02-03T07:44:12Z"),
/// 				EndTime:   pulumi.String("2024-02-05T07:44:12Z"),
/// 			},
/// 			Criteria: &monitoring.SnoozeCriteriaArgs{
/// 				Policies: pulumi.StringArray{
/// 					alertPolicy.ID().ToIDOutput().ToStringOutput(),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_monitoring_alert_policy" "alert_policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "My Alert Policy"
///   combiner     = "OR"
///   conditions {
///     display_name = "test condition"
///     condition_threshold = {
///       filter     = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
///       duration   = "60s"
///       comparison = "COMPARISON_GT"
///       aggregations = [{
///         alignment_period   = "60s"
///         per_series_aligner = "ALIGN_RATE"
///       }]
///     }
///   }
/// }
/// resource "gcp_monitoring_snooze" "snooze" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "My Snooze"
///   interval = {
///     start_time = "2024-02-03T07:44:12Z"
///     end_time   = "2024-02-05T07:44:12Z"
///   }
///   criteria = {
///     policies = [gcp_monitoring_alert_policy.alert_policy.id]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.monitoring.AlertPolicy;
/// import com.pulumi.gcp.monitoring.AlertPolicyArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionThresholdArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionThresholdAggregationArgs;
/// import com.pulumi.gcp.monitoring.Snooze;
/// import com.pulumi.gcp.monitoring.SnoozeArgs;
/// import com.pulumi.gcp.monitoring.inputs.SnoozeIntervalArgs;
/// import com.pulumi.gcp.monitoring.inputs.SnoozeCriteriaArgs;
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
///         var alertPolicy = new AlertPolicy("alertPolicy", AlertPolicyArgs.builder()
///             .displayName("My Alert Policy")
///             .combiner("OR")
///             .conditions(AlertPolicyConditionArgs.builder()
///                 .displayName("test condition")
///                 .conditionThreshold(AlertPolicyConditionConditionThresholdArgs.builder()
///                     .filter("metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"")
///                     .duration("60s")
///                     .comparison("COMPARISON_GT")
///                     .aggregations(AlertPolicyConditionConditionThresholdAggregationArgs.builder()
///                         .alignmentPeriod("60s")
///                         .perSeriesAligner("ALIGN_RATE")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var snooze = new Snooze("snooze", SnoozeArgs.builder()
///             .displayName("My Snooze")
///             .interval(SnoozeIntervalArgs.builder()
///                 .startTime("2024-02-03T07:44:12Z")
///                 .endTime("2024-02-05T07:44:12Z")
///                 .build())
///             .criteria(SnoozeCriteriaArgs.builder()
///                 .policies(alertPolicy.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   alertPolicy:
///     type: gcp:monitoring:AlertPolicy
///     name: alert_policy
///     properties:
///       displayName: My Alert Policy
///       combiner: OR
///       conditions:
///         - displayName: test condition
///           conditionThreshold:
///             filter: metric.type="compute.googleapis.com/instance/disk/write_bytes_count" AND resource.type="gce_instance"
///             duration: 60s
///             comparison: COMPARISON_GT
///             aggregations:
///               - alignmentPeriod: 60s
///                 perSeriesAligner: ALIGN_RATE
///   snooze:
///     type: gcp:monitoring:Snooze
///     properties:
///       displayName: My Snooze
///       interval:
///         startTime: 2024-02-03T07:44:12Z
///         endTime: 2024-02-05T07:44:12Z
///       criteria:
///         policies:
///           - ${alertPolicy.id}
/// ```
///
/// ### Monitoring Snooze Filter
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const alertPolicy = new gcp.monitoring.AlertPolicy("alert_policy", {
///     displayName: "My Alert Policy",
///     combiner: "OR",
///     conditions: [{
///         displayName: "test condition",
///         conditionThreshold: {
///             filter: "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"",
///             duration: "60s",
///             comparison: "COMPARISON_GT",
///             aggregations: [{
///                 alignmentPeriod: "60s",
///                 perSeriesAligner: "ALIGN_RATE",
///             }],
///         },
///     }],
/// });
/// const snooze = new gcp.monitoring.Snooze("snooze", {
///     displayName: "My Snooze",
///     interval: {
///         startTime: "2024-02-03T07:44:12Z",
///         endTime: "2024-02-05T07:44:12Z",
///     },
///     criteria: {
///         policies: [alertPolicy.id],
///         filter: "resource.labels.instance_id=\"1234567890\"",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// alert_policy = gcp.monitoring.AlertPolicy("alert_policy",
///     display_name="My Alert Policy",
///     combiner="OR",
///     conditions=[{
///         "display_name": "test condition",
///         "condition_threshold": {
///             "filter": "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"",
///             "duration": "60s",
///             "comparison": "COMPARISON_GT",
///             "aggregations": [{
///                 "alignment_period": "60s",
///                 "per_series_aligner": "ALIGN_RATE",
///             }],
///         },
///     }])
/// snooze = gcp.monitoring.Snooze("snooze",
///     display_name="My Snooze",
///     interval={
///         "start_time": "2024-02-03T07:44:12Z",
///         "end_time": "2024-02-05T07:44:12Z",
///     },
///     criteria={
///         "policies": [alert_policy.id],
///         "filter": "resource.labels.instance_id=\"1234567890\"",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var alertPolicy = new Gcp.Monitoring.AlertPolicy("alert_policy", new()
///     {
///         DisplayName = "My Alert Policy",
///         Combiner = "OR",
///         Conditions = new[]
///         {
///             new Gcp.Monitoring.Inputs.AlertPolicyConditionArgs
///             {
///                 DisplayName = "test condition",
///                 ConditionThreshold = new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionThresholdArgs
///                 {
///                     Filter = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"",
///                     Duration = "60s",
///                     Comparison = "COMPARISON_GT",
///                     Aggregations = new[]
///                     {
///                         new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionThresholdAggregationArgs
///                         {
///                             AlignmentPeriod = "60s",
///                             PerSeriesAligner = "ALIGN_RATE",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var snooze = new Gcp.Monitoring.Snooze("snooze", new()
///     {
///         DisplayName = "My Snooze",
///         Interval = new Gcp.Monitoring.Inputs.SnoozeIntervalArgs
///         {
///             StartTime = "2024-02-03T07:44:12Z",
///             EndTime = "2024-02-05T07:44:12Z",
///         },
///         Criteria = new Gcp.Monitoring.Inputs.SnoozeCriteriaArgs
///         {
///             Policies = new[]
///             {
///                 alertPolicy.Id,
///             },
///             Filter = "resource.labels.instance_id=\"1234567890\"",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		alertPolicy, err := monitoring.NewAlertPolicy(ctx, "alert_policy", &monitoring.AlertPolicyArgs{
/// 			DisplayName: pulumi.String("My Alert Policy"),
/// 			Combiner:    pulumi.String("OR"),
/// 			Conditions: monitoring.AlertPolicyConditionArray{
/// 				&monitoring.AlertPolicyConditionArgs{
/// 					DisplayName: pulumi.String("test condition"),
/// 					ConditionThreshold: &monitoring.AlertPolicyConditionConditionThresholdArgs{
/// 						Filter:     pulumi.String("metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""),
/// 						Duration:   pulumi.String("60s"),
/// 						Comparison: pulumi.String("COMPARISON_GT"),
/// 						Aggregations: monitoring.AlertPolicyConditionConditionThresholdAggregationArray{
/// 							&monitoring.AlertPolicyConditionConditionThresholdAggregationArgs{
/// 								AlignmentPeriod:  pulumi.String("60s"),
/// 								PerSeriesAligner: pulumi.String("ALIGN_RATE"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewSnooze(ctx, "snooze", &monitoring.SnoozeArgs{
/// 			DisplayName: pulumi.String("My Snooze"),
/// 			Interval: &monitoring.SnoozeIntervalArgs{
/// 				StartTime: pulumi.String("2024-02-03T07:44:12Z"),
/// 				EndTime:   pulumi.String("2024-02-05T07:44:12Z"),
/// 			},
/// 			Criteria: &monitoring.SnoozeCriteriaArgs{
/// 				Policies: pulumi.StringArray{
/// 					alertPolicy.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 				Filter: pulumi.String("resource.labels.instance_id=\"1234567890\""),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_monitoring_alert_policy" "alert_policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "My Alert Policy"
///   combiner     = "OR"
///   conditions {
///     display_name = "test condition"
///     condition_threshold = {
///       filter     = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
///       duration   = "60s"
///       comparison = "COMPARISON_GT"
///       aggregations = [{
///         alignment_period   = "60s"
///         per_series_aligner = "ALIGN_RATE"
///       }]
///     }
///   }
/// }
/// resource "gcp_monitoring_snooze" "snooze" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "My Snooze"
///   interval = {
///     start_time = "2024-02-03T07:44:12Z"
///     end_time   = "2024-02-05T07:44:12Z"
///   }
///   criteria = {
///     policies = [gcp_monitoring_alert_policy.alert_policy.id]
///     filter   = "resource.labels.instance_id=\"1234567890\""
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.monitoring.AlertPolicy;
/// import com.pulumi.gcp.monitoring.AlertPolicyArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionThresholdArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionThresholdAggregationArgs;
/// import com.pulumi.gcp.monitoring.Snooze;
/// import com.pulumi.gcp.monitoring.SnoozeArgs;
/// import com.pulumi.gcp.monitoring.inputs.SnoozeIntervalArgs;
/// import com.pulumi.gcp.monitoring.inputs.SnoozeCriteriaArgs;
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
///         var alertPolicy = new AlertPolicy("alertPolicy", AlertPolicyArgs.builder()
///             .displayName("My Alert Policy")
///             .combiner("OR")
///             .conditions(AlertPolicyConditionArgs.builder()
///                 .displayName("test condition")
///                 .conditionThreshold(AlertPolicyConditionConditionThresholdArgs.builder()
///                     .filter("metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\"")
///                     .duration("60s")
///                     .comparison("COMPARISON_GT")
///                     .aggregations(AlertPolicyConditionConditionThresholdAggregationArgs.builder()
///                         .alignmentPeriod("60s")
///                         .perSeriesAligner("ALIGN_RATE")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var snooze = new Snooze("snooze", SnoozeArgs.builder()
///             .displayName("My Snooze")
///             .interval(SnoozeIntervalArgs.builder()
///                 .startTime("2024-02-03T07:44:12Z")
///                 .endTime("2024-02-05T07:44:12Z")
///                 .build())
///             .criteria(SnoozeCriteriaArgs.builder()
///                 .policies(alertPolicy.id())
///                 .filter("resource.labels.instance_id=\"1234567890\"")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   alertPolicy:
///     type: gcp:monitoring:AlertPolicy
///     name: alert_policy
///     properties:
///       displayName: My Alert Policy
///       combiner: OR
///       conditions:
///         - displayName: test condition
///           conditionThreshold:
///             filter: metric.type="compute.googleapis.com/instance/disk/write_bytes_count" AND resource.type="gce_instance"
///             duration: 60s
///             comparison: COMPARISON_GT
///             aggregations:
///               - alignmentPeriod: 60s
///                 perSeriesAligner: ALIGN_RATE
///   snooze:
///     type: gcp:monitoring:Snooze
///     properties:
///       displayName: My Snooze
///       interval:
///         startTime: 2024-02-03T07:44:12Z
///         endTime: 2024-02-05T07:44:12Z
///       criteria:
///         policies:
///           - ${alertPolicy.id}
///         filter: resource.labels.instance_id="1234567890"
/// ```
///
///
/// ## Import
///
/// Snooze can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/snoozes/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Snooze can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/snooze:Snooze default projects/{{project}}/snoozes/{{name}}
/// $ pulumi import gcp:monitoring/snooze:Snooze default {{project}}/{{name}}
/// $ pulumi import gcp:monitoring/snooze:Snooze default {{name}}
/// ```
class Snooze extends pulumi.CustomResource {
  /// This defines the criteria for applying the Snooze.
  /// &gt; **Note:** After a snooze is created, its criteria can't be modified.
  /// Changing this block will force replacement of the resource.
  /// Structure is documented below.
  late final pulumi.Output<SnoozeCriteria> criteria;
  /// A display name for the Snooze. This can be, at most, 512 unicode characters.
  late final pulumi.Output<String> displayName;
  /// The Snooze will be active from interval.start_time through interval.end_time.
  /// interval.start_time cannot be in the past. There is a 15 second clock skew to
  /// account for the time it takes for a request to reach the API from the UI.
  /// &gt; **Note:** You can edit the name and period of an upcoming snooze, and you
  /// can edit the name and end time of an active snooze. You can't edit a past
  /// (expired) snooze.
  /// Structure is documented below.
  late final pulumi.Output<SnoozeInterval> interval;
  /// Identifier. The name of the Snooze. The format is:
  /// projects/[PROJECT_ID_OR_NUMBER]/snoozes/[SNOOZE_ID]
  /// The ID of the Snooze will be generated by the system.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [Snooze].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snooze]. {@macro pulumi_monitoring_snooze_snooze_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snooze(
    String name, {
    SnoozeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/snooze:Snooze',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.1').merge(options),
        ) {
    criteria = registerOutput<SnoozeCriteria>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnoozeCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    interval = registerOutput<SnoozeInterval>('interval', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnoozeInterval.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [Snooze] resource's state with the given [name] and [id].
  static Snooze get(
    String name,
    pulumi.Input<String> id, {
    SnoozeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Snooze._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Snooze._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/snooze:Snooze',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    criteria = registerOutput<SnoozeCriteria>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnoozeCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    interval = registerOutput<SnoozeInterval>('interval', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnoozeInterval.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [Snooze] resource.
  Snooze.reference(String urn)
    : super(
        'gcp:monitoring/snooze:Snooze',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    criteria = registerOutput<SnoozeCriteria>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnoozeCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    interval = registerOutput<SnoozeInterval>('interval', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnoozeInterval.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
