import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_descriptor_args.dart';
import 'metric_descriptor_metadata.dart';
import 'metric_descriptor_state.dart';

/// Defines a metric type and its schema. Once a metric descriptor is created, deleting or altering it stops data collection and makes the metric type's existing data unusable.
///
///
/// To get more information about MetricDescriptor, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/custom-metrics/)
///
/// ## Example Usage
///
/// ### Monitoring Metric Descriptor Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.monitoring.MetricDescriptor("basic", {
///     description: "Daily sales records from all branch stores.",
///     displayName: "metric-descriptor",
///     type: "custom.googleapis.com/stores/daily_sales",
///     metricKind: "GAUGE",
///     valueType: "DOUBLE",
///     unit: "{USD}",
///     labels: [{
///         key: "store_id",
///         valueType: "STRING",
///         description: "The ID of the store.",
///     }],
///     launchStage: "BETA",
///     metadata: {
///         samplePeriod: "60s",
///         ingestDelay: "30s",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.monitoring.MetricDescriptor("basic",
///     description="Daily sales records from all branch stores.",
///     display_name="metric-descriptor",
///     type="custom.googleapis.com/stores/daily_sales",
///     metric_kind="GAUGE",
///     value_type="DOUBLE",
///     unit="{USD}",
///     labels=[{
///         "key": "store_id",
///         "value_type": "STRING",
///         "description": "The ID of the store.",
///     }],
///     launch_stage="BETA",
///     metadata={
///         "sample_period": "60s",
///         "ingest_delay": "30s",
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
///     var basic = new Gcp.Monitoring.MetricDescriptor("basic", new()
///     {
///         Description = "Daily sales records from all branch stores.",
///         DisplayName = "metric-descriptor",
///         Type = "custom.googleapis.com/stores/daily_sales",
///         MetricKind = "GAUGE",
///         ValueType = "DOUBLE",
///         Unit = "{USD}",
///         Labels = new[]
///         {
///             new Gcp.Monitoring.Inputs.MetricDescriptorLabelArgs
///             {
///                 Key = "store_id",
///                 ValueType = "STRING",
///                 Description = "The ID of the store.",
///             },
///         },
///         LaunchStage = "BETA",
///         Metadata = new Gcp.Monitoring.Inputs.MetricDescriptorMetadataArgs
///         {
///             SamplePeriod = "60s",
///             IngestDelay = "30s",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitoring.NewMetricDescriptor(ctx, "basic", &monitoring.MetricDescriptorArgs{
/// 			Description: pulumi.String("Daily sales records from all branch stores."),
/// 			DisplayName: pulumi.String("metric-descriptor"),
/// 			Type:        pulumi.String("custom.googleapis.com/stores/daily_sales"),
/// 			MetricKind:  pulumi.String("GAUGE"),
/// 			ValueType:   pulumi.String("DOUBLE"),
/// 			Unit:        pulumi.String("{USD}"),
/// 			Labels: monitoring.MetricDescriptorLabelArray{
/// 				&monitoring.MetricDescriptorLabelArgs{
/// 					Key:         pulumi.String("store_id"),
/// 					ValueType:   pulumi.String("STRING"),
/// 					Description: pulumi.String("The ID of the store."),
/// 				},
/// 			},
/// 			LaunchStage: pulumi.String("BETA"),
/// 			Metadata: &monitoring.MetricDescriptorMetadataArgs{
/// 				SamplePeriod: pulumi.String("60s"),
/// 				IngestDelay:  pulumi.String("30s"),
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
/// resource "gcp_monitoring_metricdescriptor" "basic" {
///   description  = "Daily sales records from all branch stores."
///   display_name = "metric-descriptor"
///   type         = "custom.googleapis.com/stores/daily_sales"
///   metric_kind  = "GAUGE"
///   value_type   = "DOUBLE"
///   unit         = "{USD}"
///   labels {
///     key         = "store_id"
///     value_type  = "STRING"
///     description = "The ID of the store."
///   }
///   launch_stage = "BETA"
///   metadata = {
///     sample_period = "60s"
///     ingest_delay  = "30s"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.monitoring.MetricDescriptor;
/// import com.pulumi.gcp.monitoring.MetricDescriptorArgs;
/// import com.pulumi.gcp.monitoring.inputs.MetricDescriptorLabelArgs;
/// import com.pulumi.gcp.monitoring.inputs.MetricDescriptorMetadataArgs;
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
///         var basic = new MetricDescriptor("basic", MetricDescriptorArgs.builder()
///             .description("Daily sales records from all branch stores.")
///             .displayName("metric-descriptor")
///             .type("custom.googleapis.com/stores/daily_sales")
///             .metricKind("GAUGE")
///             .valueType("DOUBLE")
///             .unit("{USD}")
///             .labels(MetricDescriptorLabelArgs.builder()
///                 .key("store_id")
///                 .valueType("STRING")
///                 .description("The ID of the store.")
///                 .build())
///             .launchStage("BETA")
///             .metadata(MetricDescriptorMetadataArgs.builder()
///                 .samplePeriod("60s")
///                 .ingestDelay("30s")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:monitoring:MetricDescriptor
///     properties:
///       description: Daily sales records from all branch stores.
///       displayName: metric-descriptor
///       type: custom.googleapis.com/stores/daily_sales
///       metricKind: GAUGE
///       valueType: DOUBLE
///       unit: '{USD}'
///       labels:
///         - key: store_id
///           valueType: STRING
///           description: The ID of the store.
///       launchStage: BETA
///       metadata:
///         samplePeriod: 60s
///         ingestDelay: 30s
/// ```
///
/// ### Monitoring Metric Descriptor Alert
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const withAlert = new gcp.monitoring.MetricDescriptor("with_alert", {
///     description: "Daily sales records from all branch stores.",
///     displayName: "metric-descriptor",
///     type: "custom.googleapis.com/stores/daily_sales",
///     metricKind: "GAUGE",
///     valueType: "DOUBLE",
///     unit: "{USD}",
/// });
/// const alertPolicy = new gcp.monitoring.AlertPolicy("alert_policy", {
///     displayName: "metric-descriptor",
///     combiner: "OR",
///     conditions: [{
///         displayName: "test condition",
///         conditionThreshold: {
///             filter: pulumi.interpolate`metric.type="${withAlert.type}" AND resource.type="gce_instance"`,
///             duration: "60s",
///             comparison: "COMPARISON_GT",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// with_alert = gcp.monitoring.MetricDescriptor("with_alert",
///     description="Daily sales records from all branch stores.",
///     display_name="metric-descriptor",
///     type="custom.googleapis.com/stores/daily_sales",
///     metric_kind="GAUGE",
///     value_type="DOUBLE",
///     unit="{USD}")
/// alert_policy = gcp.monitoring.AlertPolicy("alert_policy",
///     display_name="metric-descriptor",
///     combiner="OR",
///     conditions=[{
///         "display_name": "test condition",
///         "condition_threshold": {
///             "filter": with_alert.type.apply(lambda type: f"metric.type=\"{type}\" AND resource.type=\"gce_instance\""),
///             "duration": "60s",
///             "comparison": "COMPARISON_GT",
///         },
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
///     var withAlert = new Gcp.Monitoring.MetricDescriptor("with_alert", new()
///     {
///         Description = "Daily sales records from all branch stores.",
///         DisplayName = "metric-descriptor",
///         Type = "custom.googleapis.com/stores/daily_sales",
///         MetricKind = "GAUGE",
///         ValueType = "DOUBLE",
///         Unit = "{USD}",
///     });
///
///     var alertPolicy = new Gcp.Monitoring.AlertPolicy("alert_policy", new()
///     {
///         DisplayName = "metric-descriptor",
///         Combiner = "OR",
///         Conditions = new[]
///         {
///             new Gcp.Monitoring.Inputs.AlertPolicyConditionArgs
///             {
///                 DisplayName = "test condition",
///                 ConditionThreshold = new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionThresholdArgs
///                 {
///                     Filter = withAlert.Type.Apply(type => $"metric.type=\"{type}\" AND resource.type=\"gce_instance\""),
///                     Duration = "60s",
///                     Comparison = "COMPARISON_GT",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		withAlert, err := monitoring.NewMetricDescriptor(ctx, "with_alert", &monitoring.MetricDescriptorArgs{
/// 			Description: pulumi.String("Daily sales records from all branch stores."),
/// 			DisplayName: pulumi.String("metric-descriptor"),
/// 			Type:        pulumi.String("custom.googleapis.com/stores/daily_sales"),
/// 			MetricKind:  pulumi.String("GAUGE"),
/// 			ValueType:   pulumi.String("DOUBLE"),
/// 			Unit:        pulumi.String("{USD}"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewAlertPolicy(ctx, "alert_policy", &monitoring.AlertPolicyArgs{
/// 			DisplayName: pulumi.String("metric-descriptor"),
/// 			Combiner:    pulumi.String("OR"),
/// 			Conditions: monitoring.AlertPolicyConditionArray{
/// 				&monitoring.AlertPolicyConditionArgs{
/// 					DisplayName: pulumi.String("test condition"),
/// 					ConditionThreshold: &monitoring.AlertPolicyConditionConditionThresholdArgs{
/// 						Filter: withAlert.Type.ApplyT(func(_type string) (string, error) {
/// 							return fmt.Sprintf("metric.type=\"%v\" AND resource.type=\"gce_instance\"", _type), nil
/// 						}).(pulumi.StringOutput),
/// 						Duration:   pulumi.String("60s"),
/// 						Comparison: pulumi.String("COMPARISON_GT"),
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
/// resource "gcp_monitoring_metricdescriptor" "with_alert" {
///   description  = "Daily sales records from all branch stores."
///   display_name = "metric-descriptor"
///   type         = "custom.googleapis.com/stores/daily_sales"
///   metric_kind  = "GAUGE"
///   value_type   = "DOUBLE"
///   unit         = "{USD}"
/// }
/// resource "gcp_monitoring_alertpolicy" "alert_policy" {
///   display_name = "metric-descriptor"
///   combiner     = "OR"
///   conditions {
///     display_name = "test condition"
///     condition_threshold = {
///       filter     ="metric.type="${gcp_monitoring_metricdescriptor.with_alert.type}" AND resource.type="gce_instance""
///       duration   = "60s"
///       comparison = "COMPARISON_GT"
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
/// import com.pulumi.gcp.monitoring.MetricDescriptor;
/// import com.pulumi.gcp.monitoring.MetricDescriptorArgs;
/// import com.pulumi.gcp.monitoring.AlertPolicy;
/// import com.pulumi.gcp.monitoring.AlertPolicyArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionThresholdArgs;
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
///         var withAlert = new MetricDescriptor("withAlert", MetricDescriptorArgs.builder()
///             .description("Daily sales records from all branch stores.")
///             .displayName("metric-descriptor")
///             .type("custom.googleapis.com/stores/daily_sales")
///             .metricKind("GAUGE")
///             .valueType("DOUBLE")
///             .unit("{USD}")
///             .build());
///
///         var alertPolicy = new AlertPolicy("alertPolicy", AlertPolicyArgs.builder()
///             .displayName("metric-descriptor")
///             .combiner("OR")
///             .conditions(AlertPolicyConditionArgs.builder()
///                 .displayName("test condition")
///                 .conditionThreshold(AlertPolicyConditionConditionThresholdArgs.builder()
///                     .filter(withAlert.type().applyValue(_type -> String.format("metric.type=\"%s\" AND resource.type=\"gce_instance\"", _type)))
///                     .duration("60s")
///                     .comparison("COMPARISON_GT")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   withAlert:
///     type: gcp:monitoring:MetricDescriptor
///     name: with_alert
///     properties:
///       description: Daily sales records from all branch stores.
///       displayName: metric-descriptor
///       type: custom.googleapis.com/stores/daily_sales
///       metricKind: GAUGE
///       valueType: DOUBLE
///       unit: '{USD}'
///   alertPolicy:
///     type: gcp:monitoring:AlertPolicy
///     name: alert_policy
///     properties:
///       displayName: metric-descriptor
///       combiner: OR
///       conditions:
///         - displayName: test condition
///           conditionThreshold:
///             filter: metric.type="${withAlert.type}" AND resource.type="gce_instance"
///             duration: 60s
///             comparison: COMPARISON_GT
/// ```
///
///
/// ## Import
///
/// MetricDescriptor can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
/// * `{{project}} {{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, MetricDescriptor can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/metricDescriptor:MetricDescriptor default {{project}}/{{name}}
/// $ terraform import google_monitoring_metric_descriptor.default "{{project}} {{name}}"
/// $ pulumi import gcp:monitoring/metricDescriptor:MetricDescriptor default {{name}}
/// ```
class MetricDescriptor extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A detailed description of the metric, which can be used in documentation.
  late final pulumi.Output<String?> description;
  /// A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example "Request count".
  late final pulumi.Output<String?> displayName;
  /// The set of labels that can be used to describe a specific instance of this metric type. In order to delete a label, the entire resource must be deleted, then created with the desired labels.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> labels;
  /// The launch stage of the metric definition.
  /// Possible values are: `LAUNCH_STAGE_UNSPECIFIED`, `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  late final pulumi.Output<String?> launchStage;
  /// Metadata which can be used to guide usage of the metric.
  /// Structure is documented below.
  late final pulumi.Output<MetricDescriptorMetadata?> metadata;
  /// Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported.
  /// Possible values are: `METRIC_KIND_UNSPECIFIED`, `GAUGE`, `DELTA`, `CUMULATIVE`.
  late final pulumi.Output<String> metricKind;
  /// If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here. This field allows time series to be associated with the intersection of this metric type and the monitored resource types in this list.
  late final pulumi.Output<List<String>> monitoredResourceTypes;
  /// The resource name of the metric descriptor.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, '/' and underscores '_' are allowed. Additionally, the maximum number of characters allowed for the relativeMetricName is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/.
  late final pulumi.Output<String> type;
  /// The units in which the metric value is reported. It is only applicable if the
  /// valueType is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of
  /// the stored metric values.
  /// Different systems may scale the values to be more easily displayed (so a value of
  /// 0.02KBy might be displayed as 20By, and a value of 3523KBy might be displayed as
  /// 3.5MBy). However, if the unit is KBy, then the value of the metric is always in
  /// thousands of bytes, no matter how it may be displayed.
  /// If you want a custom metric to record the exact number of CPU-seconds used by a job,
  /// you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently
  /// 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as
  /// 12005.
  /// Alternatively, if you want a custom metric to record data in a more granular way, you
  /// can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value
  /// 12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).
  /// The supported units are a subset of The Unified Code for Units of Measure standard.
  /// More info can be found in the API documentation
  /// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors).
  late final pulumi.Output<String?> unit;
  /// Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported.
  /// Possible values are: `BOOL`, `INT64`, `DOUBLE`, `STRING`, `DISTRIBUTION`.
  late final pulumi.Output<String> valueType;

  /// Creates a new [MetricDescriptor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetricDescriptor]. {@macro pulumi_monitoring_metric_descriptor_metric_descriptor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetricDescriptor(
    String name, {
    MetricDescriptorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/metricDescriptor:MetricDescriptor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    launchStage = registerOutput<String?>('launchStage');
    metadata = registerOutput<MetricDescriptorMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetricDescriptorMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metricKind = registerOutput<String>('metricKind');
    monitoredResourceTypes = registerOutput<List<String>>('monitoredResourceTypes');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    type = registerOutput<String>('type');
    unit = registerOutput<String?>('unit');
    valueType = registerOutput<String>('valueType');
  }

  /// Gets an existing [MetricDescriptor] resource's state with the given [name] and [id].
  static MetricDescriptor get(
    String name,
    pulumi.Input<String> id, {
    MetricDescriptorState? state,
  }) {
    return MetricDescriptor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MetricDescriptor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/metricDescriptor:MetricDescriptor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    launchStage = registerOutput<String?>('launchStage');
    metadata = registerOutput<MetricDescriptorMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetricDescriptorMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metricKind = registerOutput<String>('metricKind');
    monitoredResourceTypes = registerOutput<List<String>>('monitoredResourceTypes');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    type = registerOutput<String>('type');
    unit = registerOutput<String?>('unit');
    valueType = registerOutput<String>('valueType');
  }
}
