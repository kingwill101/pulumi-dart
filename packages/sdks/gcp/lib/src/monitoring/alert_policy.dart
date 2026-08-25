import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_alert_strategy.dart';
import 'alert_policy_args.dart';
import 'alert_policy_condition.dart';
import 'alert_policy_creation_record.dart';
import 'alert_policy_documentation.dart';
import 'alert_policy_state.dart';

/// A description of the conditions under which some aspect of your system is
/// considered to be "unhealthy" and the ways to notify people or services
/// about this state.
///
///
/// To get more information about AlertPolicy, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.alertPolicies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/alerts/)
///
/// ## Example Usage
///
/// ### Monitoring Alert Policy Basic
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
///     userLabels: {
///         foo: "bar",
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
///     }],
///     user_labels={
///         "foo": "bar",
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
///         UserLabels =
///         {
///             { "foo", "bar" },
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
/// 		_, err := monitoring.NewAlertPolicy(ctx, "alert_policy", &monitoring.AlertPolicyArgs{
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
/// 			UserLabels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// resource "gcp_monitoring_alertpolicy" "alert_policy" {
///   display_name = "My Alert Policy"
///   combiner     = "OR"
///   conditions {
///     display_name = "test condition"
///     condition_threshold = {
///       filter     = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
///       duration   = "60s"
///       comparison = "COMPARISON_GT"
///       aggregations = [{
///         "alignmentPeriod"  = "60s"
///         "perSeriesAligner" = "ALIGN_RATE"
///       }]
///     }
///   }
///   user_labels = {
///     "foo" = "bar"
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
///             .userLabels(Map.of("foo", "bar"))
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
///       userLabels:
///         foo: bar
/// ```
///
/// ### Monitoring Alert Policy Evaluation Missing Data
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
///             evaluationMissingData: "EVALUATION_MISSING_DATA_INACTIVE",
///         },
///     }],
///     userLabels: {
///         foo: "bar",
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
///             "evaluation_missing_data": "EVALUATION_MISSING_DATA_INACTIVE",
///         },
///     }],
///     user_labels={
///         "foo": "bar",
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
///                     EvaluationMissingData = "EVALUATION_MISSING_DATA_INACTIVE",
///                 },
///             },
///         },
///         UserLabels =
///         {
///             { "foo", "bar" },
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
/// 		_, err := monitoring.NewAlertPolicy(ctx, "alert_policy", &monitoring.AlertPolicyArgs{
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
/// 						EvaluationMissingData: pulumi.String("EVALUATION_MISSING_DATA_INACTIVE"),
/// 					},
/// 				},
/// 			},
/// 			UserLabels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// resource "gcp_monitoring_alertpolicy" "alert_policy" {
///   display_name = "My Alert Policy"
///   combiner     = "OR"
///   conditions {
///     display_name = "test condition"
///     condition_threshold = {
///       filter     = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
///       duration   = "60s"
///       comparison = "COMPARISON_GT"
///       aggregations = [{
///         "alignmentPeriod"  = "60s"
///         "perSeriesAligner" = "ALIGN_RATE"
///       }]
///       evaluation_missing_data = "EVALUATION_MISSING_DATA_INACTIVE"
///     }
///   }
///   user_labels = {
///     "foo" = "bar"
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
///                     .evaluationMissingData("EVALUATION_MISSING_DATA_INACTIVE")
///                     .build())
///                 .build())
///             .userLabels(Map.of("foo", "bar"))
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
///             evaluationMissingData: EVALUATION_MISSING_DATA_INACTIVE
///       userLabels:
///         foo: bar
/// ```
///
/// ### Monitoring Alert Policy Forecast Options
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
///             forecastOptions: {
///                 forecastHorizon: "3600s",
///             },
///             comparison: "COMPARISON_GT",
///             aggregations: [{
///                 alignmentPeriod: "60s",
///                 perSeriesAligner: "ALIGN_RATE",
///             }],
///         },
///     }],
///     userLabels: {
///         foo: "bar",
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
///             "forecast_options": {
///                 "forecast_horizon": "3600s",
///             },
///             "comparison": "COMPARISON_GT",
///             "aggregations": [{
///                 "alignment_period": "60s",
///                 "per_series_aligner": "ALIGN_RATE",
///             }],
///         },
///     }],
///     user_labels={
///         "foo": "bar",
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
///                     ForecastOptions = new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionThresholdForecastOptionsArgs
///                     {
///                         ForecastHorizon = "3600s",
///                     },
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
///         UserLabels =
///         {
///             { "foo", "bar" },
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
/// 		_, err := monitoring.NewAlertPolicy(ctx, "alert_policy", &monitoring.AlertPolicyArgs{
/// 			DisplayName: pulumi.String("My Alert Policy"),
/// 			Combiner:    pulumi.String("OR"),
/// 			Conditions: monitoring.AlertPolicyConditionArray{
/// 				&monitoring.AlertPolicyConditionArgs{
/// 					DisplayName: pulumi.String("test condition"),
/// 					ConditionThreshold: &monitoring.AlertPolicyConditionConditionThresholdArgs{
/// 						Filter:   pulumi.String("metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""),
/// 						Duration: pulumi.String("60s"),
/// 						ForecastOptions: &monitoring.AlertPolicyConditionConditionThresholdForecastOptionsArgs{
/// 							ForecastHorizon: pulumi.String("3600s"),
/// 						},
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
/// 			UserLabels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// resource "gcp_monitoring_alertpolicy" "alert_policy" {
///   display_name = "My Alert Policy"
///   combiner     = "OR"
///   conditions {
///     display_name = "test condition"
///     condition_threshold = {
///       filter   = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
///       duration = "60s"
///       forecast_options = {
///         forecast_horizon = "3600s"
///       }
///       comparison = "COMPARISON_GT"
///       aggregations = [{
///         "alignmentPeriod"  = "60s"
///         "perSeriesAligner" = "ALIGN_RATE"
///       }]
///     }
///   }
///   user_labels = {
///     "foo" = "bar"
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
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionThresholdForecastOptionsArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionThresholdAggregationArgs;
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
///                     .forecastOptions(AlertPolicyConditionConditionThresholdForecastOptionsArgs.builder()
///                         .forecastHorizon("3600s")
///                         .build())
///                     .comparison("COMPARISON_GT")
///                     .aggregations(AlertPolicyConditionConditionThresholdAggregationArgs.builder()
///                         .alignmentPeriod("60s")
///                         .perSeriesAligner("ALIGN_RATE")
///                         .build())
///                     .build())
///                 .build())
///             .userLabels(Map.of("foo", "bar"))
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
///             forecastOptions:
///               forecastHorizon: 3600s
///             comparison: COMPARISON_GT
///             aggregations:
///               - alignmentPeriod: 60s
///                 perSeriesAligner: ALIGN_RATE
///       userLabels:
///         foo: bar
/// ```
///
/// ### Monitoring Alert Policy Promql Condition
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
///         conditionPrometheusQueryLanguage: {
///             query: "compute_googleapis_com:instance_cpu_usage_time > 0",
///             duration: "60s",
///             evaluationInterval: "60s",
///             alertRule: "AlwaysOn",
///             ruleGroup: "a test",
///         },
///     }],
///     alertStrategy: {
///         autoClose: "1800s",
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
///         "condition_prometheus_query_language": {
///             "query": "compute_googleapis_com:instance_cpu_usage_time > 0",
///             "duration": "60s",
///             "evaluation_interval": "60s",
///             "alert_rule": "AlwaysOn",
///             "rule_group": "a test",
///         },
///     }],
///     alert_strategy={
///         "auto_close": "1800s",
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
///                 ConditionPrometheusQueryLanguage = new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionPrometheusQueryLanguageArgs
///                 {
///                     Query = "compute_googleapis_com:instance_cpu_usage_time > 0",
///                     Duration = "60s",
///                     EvaluationInterval = "60s",
///                     AlertRule = "AlwaysOn",
///                     RuleGroup = "a test",
///                 },
///             },
///         },
///         AlertStrategy = new Gcp.Monitoring.Inputs.AlertPolicyAlertStrategyArgs
///         {
///             AutoClose = "1800s",
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
/// 		_, err := monitoring.NewAlertPolicy(ctx, "alert_policy", &monitoring.AlertPolicyArgs{
/// 			DisplayName: pulumi.String("My Alert Policy"),
/// 			Combiner:    pulumi.String("OR"),
/// 			Conditions: monitoring.AlertPolicyConditionArray{
/// 				&monitoring.AlertPolicyConditionArgs{
/// 					DisplayName: pulumi.String("test condition"),
/// 					ConditionPrometheusQueryLanguage: &monitoring.AlertPolicyConditionConditionPrometheusQueryLanguageArgs{
/// 						Query:              pulumi.String("compute_googleapis_com:instance_cpu_usage_time > 0"),
/// 						Duration:           pulumi.String("60s"),
/// 						EvaluationInterval: pulumi.String("60s"),
/// 						AlertRule:          pulumi.String("AlwaysOn"),
/// 						RuleGroup:          pulumi.String("a test"),
/// 					},
/// 				},
/// 			},
/// 			AlertStrategy: &monitoring.AlertPolicyAlertStrategyArgs{
/// 				AutoClose: pulumi.String("1800s"),
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
/// resource "gcp_monitoring_alertpolicy" "alert_policy" {
///   display_name = "My Alert Policy"
///   combiner     = "OR"
///   conditions {
///     display_name = "test condition"
///     condition_prometheus_query_language = {
///       query               = "compute_googleapis_com:instance_cpu_usage_time > 0"
///       duration            = "60s"
///       evaluation_interval = "60s"
///       alert_rule          = "AlwaysOn"
///       rule_group          = "a test"
///     }
///   }
///   alert_strategy = {
///     auto_close = "1800s"
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
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionPrometheusQueryLanguageArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyAlertStrategyArgs;
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
///                 .conditionPrometheusQueryLanguage(AlertPolicyConditionConditionPrometheusQueryLanguageArgs.builder()
///                     .query("compute_googleapis_com:instance_cpu_usage_time > 0")
///                     .duration("60s")
///                     .evaluationInterval("60s")
///                     .alertRule("AlwaysOn")
///                     .ruleGroup("a test")
///                     .build())
///                 .build())
///             .alertStrategy(AlertPolicyAlertStrategyArgs.builder()
///                 .autoClose("1800s")
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
///           conditionPrometheusQueryLanguage:
///             query: compute_googleapis_com:instance_cpu_usage_time > 0
///             duration: 60s
///             evaluationInterval: 60s
///             alertRule: AlwaysOn
///             ruleGroup: a test
///       alertStrategy:
///         autoClose: 1800s
/// ```
///
/// ### Monitoring Alert Policy Sql Condition
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
///         displayName: "minutes row count",
///         conditionSql: {
///             query: "SELECT severity, resource FROM my_project.global._Default._AllLogs WHERE severity IS NOT NULL",
///             minutes: {
///                 periodicity: 600,
///             },
///             rowCountTest: {
///                 comparison: "COMPARISON_GT",
///                 threshold: 0,
///             },
///         },
///     }],
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
///         "display_name": "minutes row count",
///         "condition_sql": {
///             "query": "SELECT severity, resource FROM my_project.global._Default._AllLogs WHERE severity IS NOT NULL",
///             "minutes": {
///                 "periodicity": 600,
///             },
///             "row_count_test": {
///                 "comparison": "COMPARISON_GT",
///                 "threshold": 0,
///             },
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
///     var alertPolicy = new Gcp.Monitoring.AlertPolicy("alert_policy", new()
///     {
///         DisplayName = "My Alert Policy",
///         Combiner = "OR",
///         Conditions = new[]
///         {
///             new Gcp.Monitoring.Inputs.AlertPolicyConditionArgs
///             {
///                 DisplayName = "minutes row count",
///                 ConditionSql = new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionSqlArgs
///                 {
///                     Query = "SELECT severity, resource FROM my_project.global._Default._AllLogs WHERE severity IS NOT NULL",
///                     Minutes = new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionSqlMinutesArgs
///                     {
///                         Periodicity = 600,
///                     },
///                     RowCountTest = new Gcp.Monitoring.Inputs.AlertPolicyConditionConditionSqlRowCountTestArgs
///                     {
///                         Comparison = "COMPARISON_GT",
///                         Threshold = 0,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitoring.NewAlertPolicy(ctx, "alert_policy", &monitoring.AlertPolicyArgs{
/// 			DisplayName: pulumi.String("My Alert Policy"),
/// 			Combiner:    pulumi.String("OR"),
/// 			Conditions: monitoring.AlertPolicyConditionArray{
/// 				&monitoring.AlertPolicyConditionArgs{
/// 					DisplayName: pulumi.String("minutes row count"),
/// 					ConditionSql: &monitoring.AlertPolicyConditionConditionSqlArgs{
/// 						Query: pulumi.String("SELECT severity, resource FROM my_project.global._Default._AllLogs WHERE severity IS NOT NULL"),
/// 						Minutes: &monitoring.AlertPolicyConditionConditionSqlMinutesArgs{
/// 							Periodicity: pulumi.Int(600),
/// 						},
/// 						RowCountTest: &monitoring.AlertPolicyConditionConditionSqlRowCountTestArgs{
/// 							Comparison: pulumi.String("COMPARISON_GT"),
/// 							Threshold:  pulumi.Int(0),
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
/// resource "gcp_monitoring_alertpolicy" "alert_policy" {
///   display_name = "My Alert Policy"
///   combiner     = "OR"
///   conditions {
///     display_name = "minutes row count"
///     condition_sql = {
///       query = "SELECT severity, resource FROM my_project.global._Default._AllLogs WHERE severity IS NOT NULL"
///       minutes = {
///         periodicity = 600
///       }
///       row_count_test = {
///         comparison = "COMPARISON_GT"
///         threshold  = "0"
///       }
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
/// import com.pulumi.gcp.monitoring.AlertPolicy;
/// import com.pulumi.gcp.monitoring.AlertPolicyArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionSqlArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionSqlMinutesArgs;
/// import com.pulumi.gcp.monitoring.inputs.AlertPolicyConditionConditionSqlRowCountTestArgs;
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
///                 .displayName("minutes row count")
///                 .conditionSql(AlertPolicyConditionConditionSqlArgs.builder()
///                     .query("SELECT severity, resource FROM my_project.global._Default._AllLogs WHERE severity IS NOT NULL")
///                     .minutes(AlertPolicyConditionConditionSqlMinutesArgs.builder()
///                         .periodicity(600)
///                         .build())
///                     .rowCountTest(AlertPolicyConditionConditionSqlRowCountTestArgs.builder()
///                         .comparison("COMPARISON_GT")
///                         .threshold(0)
///                         .build())
///                     .build())
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
///         - displayName: minutes row count
///           conditionSql:
///             query: SELECT severity, resource FROM my_project.global._Default._AllLogs WHERE severity IS NOT NULL
///             minutes:
///               periodicity: 600
///             rowCountTest:
///               comparison: COMPARISON_GT
///               threshold: '0'
/// ```
///
///
/// ## Import
///
/// AlertPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/alertPolicies/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, AlertPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/alertPolicy:AlertPolicy default projects/{{project}}/alertPolicies/{{name}}
/// $ pulumi import gcp:monitoring/alertPolicy:AlertPolicy default {{project}}/{{name}}
/// $ pulumi import gcp:monitoring/alertPolicy:AlertPolicy default {{name}}
/// ```
class AlertPolicy extends pulumi.CustomResource {
  /// Control over how this alert policy's notification channels are notified.
  /// Structure is documented below.
  late final pulumi.Output<AlertPolicyAlertStrategy?> alertStrategy;
  /// How to combine the results of multiple conditions to
  /// determine if an incident should be opened.
  /// Possible values are: `AND`, `OR`, `AND_WITH_MATCHING_RESOURCE`.
  late final pulumi.Output<String> combiner;
  /// A list of conditions for the policy. The conditions are combined by
  /// AND or OR according to the combiner field. If the combined conditions
  /// evaluate to true, then an incident is created. A policy can have from
  /// one to six conditions.
  /// Structure is documented below.
  late final pulumi.Output<List<AlertPolicyCondition>> conditions;
  /// A read-only record of the creation of the alerting policy.
  /// If provided in a call to create or update, this field will
  /// be ignored.
  /// Structure is documented below.
  late final pulumi.Output<List<AlertPolicyCreationRecord>> creationRecords;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A short name or phrase used to identify the policy in
  /// dashboards, notifications, and incidents. To avoid confusion, don't use
  /// the same display name for multiple policies in the same project. The
  /// name is limited to 512 Unicode characters.
  late final pulumi.Output<String> displayName;
  /// Documentation that is included with notifications and incidents related
  /// to this policy. Best practice is for the documentation to include information
  /// to help responders understand, mitigate, escalate, and correct the underlying
  /// problems detected by the alerting policy. Notification channels that have
  /// limited capacity might not show this documentation.
  /// Structure is documented below.
  late final pulumi.Output<AlertPolicyDocumentation?> documentation;
  /// Whether or not the policy is enabled. The default is true.
  late final pulumi.Output<bool?> enabled;
  /// The unique resource name for this policy.
  /// Its syntax is: projects/[PROJECT_ID]/alertPolicies/[ALERT_POLICY_ID]
  late final pulumi.Output<String> name;
  /// Identifies the notification channels to which notifications should be
  /// sent when incidents are opened or closed or when new violations occur
  /// on an already opened incident. Each element of this array corresponds
  /// to the name field in each of the NotificationChannel objects that are
  /// returned from the notificationChannels.list method. The syntax of the
  /// entries in this field is
  /// `projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]`
  late final pulumi.Output<List<String>?> notificationChannels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The severity of an alert policy indicates how important incidents generated
  /// by that policy are. The severity level will be displayed on the Incident
  /// detail page and in notifications.
  /// Possible values are: `CRITICAL`, `ERROR`, `WARNING`.
  late final pulumi.Output<String?> severity;
  /// This field is intended to be used for organizing and identifying the AlertPolicy
  /// objects.The field can contain up to 64 entries. Each key and value is limited
  /// to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
  /// can contain only lowercase letters, numerals, underscores, and dashes. Keys
  /// must begin with a letter.
  late final pulumi.Output<Map<String, String>?> userLabels;

  /// Creates a new [AlertPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertPolicy]. {@macro pulumi_monitoring_alert_policy_alert_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertPolicy(
    String name, {
    AlertPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/alertPolicy:AlertPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    alertStrategy = registerOutput<AlertPolicyAlertStrategy?>('alertStrategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertPolicyAlertStrategy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    combiner = registerOutput<String>('combiner');
    conditions = registerOutput<List<AlertPolicyCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertPolicyCondition>(guardedValue, (value) => AlertPolicyCondition.fromMap((value as Map).cast<String, dynamic>())); });
    creationRecords = registerOutput<List<AlertPolicyCreationRecord>>('creationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertPolicyCreationRecord>(guardedValue, (value) => AlertPolicyCreationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    documentation = registerOutput<AlertPolicyDocumentation?>('documentation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertPolicyDocumentation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    notificationChannels = registerOutput<List<String>?>('notificationChannels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    severity = registerOutput<String?>('severity');
    userLabels = registerOutput<Map<String, String>?>('userLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [AlertPolicy] resource's state with the given [name] and [id].
  static AlertPolicy get(
    String name,
    pulumi.Input<String> id, {
    AlertPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AlertPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AlertPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/alertPolicy:AlertPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertStrategy = registerOutput<AlertPolicyAlertStrategy?>('alertStrategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertPolicyAlertStrategy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    combiner = registerOutput<String>('combiner');
    conditions = registerOutput<List<AlertPolicyCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertPolicyCondition>(guardedValue, (value) => AlertPolicyCondition.fromMap((value as Map).cast<String, dynamic>())); });
    creationRecords = registerOutput<List<AlertPolicyCreationRecord>>('creationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertPolicyCreationRecord>(guardedValue, (value) => AlertPolicyCreationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    documentation = registerOutput<AlertPolicyDocumentation?>('documentation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertPolicyDocumentation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    notificationChannels = registerOutput<List<String>?>('notificationChannels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    severity = registerOutput<String?>('severity');
    userLabels = registerOutput<Map<String, String>?>('userLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [AlertPolicy] resource.
  AlertPolicy.reference(String urn)
    : super(
        'gcp:monitoring/alertPolicy:AlertPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alertStrategy = registerOutput<AlertPolicyAlertStrategy?>('alertStrategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertPolicyAlertStrategy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    combiner = registerOutput<String>('combiner');
    conditions = registerOutput<List<AlertPolicyCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertPolicyCondition>(guardedValue, (value) => AlertPolicyCondition.fromMap((value as Map).cast<String, dynamic>())); });
    creationRecords = registerOutput<List<AlertPolicyCreationRecord>>('creationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AlertPolicyCreationRecord>(guardedValue, (value) => AlertPolicyCreationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    documentation = registerOutput<AlertPolicyDocumentation?>('documentation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AlertPolicyDocumentation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    notificationChannels = registerOutput<List<String>?>('notificationChannels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    severity = registerOutput<String?>('severity');
    userLabels = registerOutput<Map<String, String>?>('userLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
