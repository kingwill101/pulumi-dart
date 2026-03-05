import 'package:pulumi/pulumi.dart' as pulumi;
import 'nrql_alert_condition_args.dart';
import 'nrql_alert_condition_critical.dart';
import 'nrql_alert_condition_nrql.dart';
import 'nrql_alert_condition_outlier_configuration.dart';
import 'nrql_alert_condition_state.dart';
import 'nrql_alert_condition_warning.dart';

/// Use this resource to create and manage NRQL alert conditions in New Relic.
///
/// &gt; **IMPORTANT!** Version 2.0.0 of the New Relic Terraform Provider introduces some [additional requirements](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/guides/migration_guide_v2) for configuring the provider.
/// &lt;br&gt;&lt;br&gt;
/// Before upgrading to version 2.0.0 or later, it is recommended to upgrade to the most recent 1.x version of the provider and ensure that your environment successfully runs `pulumi preview` without unexpected changes.
///
/// ## Example Usage
///
/// ##### Type: `static` (default)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertPolicy("foo", {name: "foo"});
/// const fooNrqlAlertCondition = new newrelic.NrqlAlertCondition("foo", {
///     accountId: "12345678",
///     policyId: foo.id,
///     type: "static",
///     name: "foo",
///     description: "Alert when transactions are taking too long",
///     titleTemplate: "Issue in environment: {{ tags.environment }}",
///     targetEntity: "MXxBUE18QVBQTElDQVRJT058MQ",
///     runbookUrl: "https://www.example.com",
///     enabled: true,
///     violationTimeLimitSeconds: 3600,
///     fillOption: "static",
///     fillValue: 1,
///     aggregationWindow: 60,
///     aggregationMethod: "event_flow",
///     aggregationDelay: "120",
///     expirationDuration: 120,
///     openViolationOnExpiration: true,
///     closeViolationsOnExpiration: true,
///     ignoreOnExpectedTermination: true,
///     slideBy: 30,
///     nrql: {
///         query: "SELECT average(duration) FROM Transaction where appName = 'Your App'",
///     },
///     critical: {
///         operator: "above",
///         threshold: 5.5,
///         thresholdDuration: 300,
///         thresholdOccurrences: "ALL",
///     },
///     warning: {
///         operator: "above",
///         threshold: 3.5,
///         thresholdDuration: 600,
///         thresholdOccurrences: "ALL",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertPolicy("foo", name="foo")
/// foo_nrql_alert_condition = newrelic.NrqlAlertCondition("foo",
///     account_id="12345678",
///     policy_id=foo.id,
///     type="static",
///     name="foo",
///     description="Alert when transactions are taking too long",
///     title_template="Issue in environment: {{ tags.environment }}",
///     target_entity="MXxBUE18QVBQTElDQVRJT058MQ",
///     runbook_url="https://www.example.com",
///     enabled=True,
///     violation_time_limit_seconds=3600,
///     fill_option="static",
///     fill_value=1,
///     aggregation_window=60,
///     aggregation_method="event_flow",
///     aggregation_delay="120",
///     expiration_duration=120,
///     open_violation_on_expiration=True,
///     close_violations_on_expiration=True,
///     ignore_on_expected_termination=True,
///     slide_by=30,
///     nrql={
///         "query": "SELECT average(duration) FROM Transaction where appName = 'Your App'",
///     },
///     critical={
///         "operator": "above",
///         "threshold": 5.5,
///         "threshold_duration": 300,
///         "threshold_occurrences": "ALL",
///     },
///     warning={
///         "operator": "above",
///         "threshold": 3.5,
///         "threshold_duration": 600,
///         "threshold_occurrences": "ALL",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AlertPolicy("foo", new()
///     {
///         Name = "foo",
///     });
///
///     var fooNrqlAlertCondition = new NewRelic.NrqlAlertCondition("foo", new()
///     {
///         AccountId = "12345678",
///         PolicyId = foo.Id,
///         Type = "static",
///         Name = "foo",
///         Description = "Alert when transactions are taking too long",
///         TitleTemplate = "Issue in environment: {{ tags.environment }}",
///         TargetEntity = "MXxBUE18QVBQTElDQVRJT058MQ",
///         RunbookUrl = "https://www.example.com",
///         Enabled = true,
///         ViolationTimeLimitSeconds = 3600,
///         FillOption = "static",
///         FillValue = 1,
///         AggregationWindow = 60,
///         AggregationMethod = "event_flow",
///         AggregationDelay = "120",
///         ExpirationDuration = 120,
///         OpenViolationOnExpiration = true,
///         CloseViolationsOnExpiration = true,
///         IgnoreOnExpectedTermination = true,
///         SlideBy = 30,
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT average(duration) FROM Transaction where appName = 'Your App'",
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above",
///             Threshold = 5.5,
///             ThresholdDuration = 300,
///             ThresholdOccurrences = "ALL",
///         },
///         Warning = new NewRelic.Inputs.NrqlAlertConditionWarningArgs
///         {
///             Operator = "above",
///             Threshold = 3.5,
///             ThresholdDuration = 600,
///             ThresholdOccurrences = "ALL",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := newrelic.NewAlertPolicy(ctx, "foo", &newrelic.AlertPolicyArgs{
/// 			Name: pulumi.String("foo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewNrqlAlertCondition(ctx, "foo", &newrelic.NrqlAlertConditionArgs{
/// 			AccountId:                   pulumi.String("12345678"),
/// 			PolicyId:                    foo.ID(),
/// 			Type:                        pulumi.String("static"),
/// 			Name:                        pulumi.String("foo"),
/// 			Description:                 pulumi.String("Alert when transactions are taking too long"),
/// 			TitleTemplate:               pulumi.String("Issue in environment: {{ tags.environment }}"),
/// 			TargetEntity:                pulumi.String("MXxBUE18QVBQTElDQVRJT058MQ"),
/// 			RunbookUrl:                  pulumi.String("https://www.example.com"),
/// 			Enabled:                     pulumi.Bool(true),
/// 			ViolationTimeLimitSeconds:   pulumi.Int(3600),
/// 			FillOption:                  pulumi.String("static"),
/// 			FillValue:                   pulumi.Float64(1),
/// 			AggregationWindow:           pulumi.Int(60),
/// 			AggregationMethod:           pulumi.String("event_flow"),
/// 			AggregationDelay:            pulumi.String("120"),
/// 			ExpirationDuration:          pulumi.Int(120),
/// 			OpenViolationOnExpiration:   pulumi.Bool(true),
/// 			CloseViolationsOnExpiration: pulumi.Bool(true),
/// 			IgnoreOnExpectedTermination: pulumi.Bool(true),
/// 			SlideBy:                     pulumi.Int(30),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT average(duration) FROM Transaction where appName = 'Your App'"),
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(5.5),
/// 				ThresholdDuration:    pulumi.Int(300),
/// 				ThresholdOccurrences: pulumi.String("ALL"),
/// 			},
/// 			Warning: &newrelic.NrqlAlertConditionWarningArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(3.5),
/// 				ThresholdDuration:    pulumi.Int(600),
/// 				ThresholdOccurrences: pulumi.String("ALL"),
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
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
/// import com.pulumi.newrelic.NrqlAlertCondition;
/// import com.pulumi.newrelic.NrqlAlertConditionArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionNrqlArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionCriticalArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionWarningArgs;
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
///         var foo = new AlertPolicy("foo", AlertPolicyArgs.builder()
///             .name("foo")
///             .build());
///
///         var fooNrqlAlertCondition = new NrqlAlertCondition("fooNrqlAlertCondition", NrqlAlertConditionArgs.builder()
///             .accountId("12345678")
///             .policyId(foo.id())
///             .type("static")
///             .name("foo")
///             .description("Alert when transactions are taking too long")
///             .titleTemplate("Issue in environment: {{ tags.environment }}")
///             .targetEntity("MXxBUE18QVBQTElDQVRJT058MQ")
///             .runbookUrl("https://www.example.com")
///             .enabled(true)
///             .violationTimeLimitSeconds(3600)
///             .fillOption("static")
///             .fillValue(1.0)
///             .aggregationWindow(60)
///             .aggregationMethod("event_flow")
///             .aggregationDelay("120")
///             .expirationDuration(120)
///             .openViolationOnExpiration(true)
///             .closeViolationsOnExpiration(true)
///             .ignoreOnExpectedTermination(true)
///             .slideBy(30)
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT average(duration) FROM Transaction where appName = 'Your App'")
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above")
///                 .threshold(5.5)
///                 .thresholdDuration(300)
///                 .thresholdOccurrences("ALL")
///                 .build())
///             .warning(NrqlAlertConditionWarningArgs.builder()
///                 .operator("above")
///                 .threshold(3.5)
///                 .thresholdDuration(600)
///                 .thresholdOccurrences("ALL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AlertPolicy
///     properties:
///       name: foo
///   fooNrqlAlertCondition:
///     type: newrelic:NrqlAlertCondition
///     name: foo
///     properties:
///       accountId: 1.2345678e+07
///       policyId: ${foo.id}
///       type: static
///       name: foo
///       description: Alert when transactions are taking too long
///       titleTemplate: 'Issue in environment: {{ tags.environment }}'
///       targetEntity: MXxBUE18QVBQTElDQVRJT058MQ
///       runbookUrl: https://www.example.com
///       enabled: true
///       violationTimeLimitSeconds: 3600
///       fillOption: static
///       fillValue: 1
///       aggregationWindow: 60
///       aggregationMethod: event_flow
///       aggregationDelay: 120
///       expirationDuration: 120
///       openViolationOnExpiration: true
///       closeViolationsOnExpiration: true
///       ignoreOnExpectedTermination: true
///       slideBy: 30
///       nrql:
///         query: SELECT average(duration) FROM Transaction where appName = 'Your App'
///       critical:
///         operator: above
///         threshold: 5.5
///         thresholdDuration: 300
///         thresholdOccurrences: ALL
///       warning:
///         operator: above
///         threshold: 3.5
///         thresholdDuration: 600
///         thresholdOccurrences: ALL
/// ```
///
/// See additional examples.
///
/// ## NRQL
///
/// The `nrql` block supports the following arguments:
///
/// - `query` - (Required) The NRQL query to execute for the condition.
/// - `data_account_id` - (Optional) The account ID to use for the alert condition's query as specified in the the `query` field. If `data_account_id` is not specified, then the condition's query will be evaluated against the `account_id`. Note that the `account_id` must have read privileges for the `data_account_id` or else the condition will be invalid.
/// - `evaluation_offset` - (Optional) **DEPRECATED:** Use `aggregation_method` instead. Represented in minutes and must be within 1-20 minutes (inclusive). NRQL queries are evaluated based on their `aggregation_window` size. The start time depends on this value. It's recommended to set this to 3 windows. An offset of less than 3 windows will trigger incidents sooner, but you may see more false positives and negatives due to data latency. With `evaluation_offset` set to 3 windows and an `aggregation_window` of 60 seconds, the NRQL time window applied to your query will be: `SINCE 3 minutes ago UNTIL 2 minutes ago`. `evaluation_offset` cannot be set with `aggregation_method`, `aggregation_delay`, or `aggregation_timer`.&lt;br&gt;
/// - `since_value` - (Optional)  **DEPRECATED:** Use `aggregation_method` instead. The value to be used in the `SINCE &lt;X&gt; minutes ago` clause for the NRQL query. Must be between 1-20 (inclusive). &lt;br&gt;
///
/// ## Terms
///
/// &gt; **NOTE:** The direct use of the `term` has been deprecated, and users should use `critical` and `warning` instead.  What follows now applies to the named priority attributes for `critical` and `warning`, but for those attributes the priority is not allowed. At least one `critical` or `warning` term must be defined.
///
/// NRQL alert conditions support up to two terms. At least one `term` must have `priority` set to `critical` and the second optional `term` must have `priority` set to `warning`.
///
/// The `term` block supports the following arguments:
///
/// - `operator` - (Optional) Valid values are `above`, `above_or_equals`, `below`, `below_or_equals`, `equals`, or `not_equals` (case insensitive). Defaults to `equals`. Note that when using a `type` of `baseline`, the only valid option here is `above`.
/// - `priority` - (Optional) `critical` or `warning`. Defaults to `critical`.
/// - `threshold` - (Required) The value which will trigger an incident.
/// &lt;br&gt;For _baseline_ NRQL alert conditions, the value must be in the range [1, 1000]. The value is the number of standard deviations from the baseline that the metric must exceed in order to create an incident.
/// - `threshold_duration` - (Optional) The duration, in seconds, that the threshold must violate in order to create an incident. Value must be a multiple of the `aggregation_window` (which has a default of 60 seconds).
/// &lt;br&gt;For _baseline_ NRQL alert conditions, the value must be within 120-86400 seconds (inclusive).
/// &lt;br&gt;For _static_ NRQL alert conditions, the value must be within 60-86400 seconds (inclusive).
///
/// - `threshold_occurrences` - (Optional) The criteria for how many data points must be in violation for the specified threshold duration. Valid values are: `all` or `at_least_once` (case insensitive).
/// - `duration` - (Optional) **DEPRECATED:** Use `threshold_duration` instead. The duration of time, in _minutes_, that the threshold must violate for in order to create an incident. Must be within 1-120 (inclusive).
/// - `time_function` - (Optional) **DEPRECATED:** Use `threshold_occurrences` instead. The criteria for how many data points must be in violation for the specified threshold duration. Valid values are: `all` or `any`.
/// - `prediction` - (Optional) **BETA PREVIEW: the `prediction` field is in limited release and only enabled for preview on a per-account basis.** Use `prediction` to open alerts when your static threshold is predicted to be reached in the future. The `prediction` field is only available for _static_ NRQL alert conditions. See Prediction below for details.
/// - `disable_health_status_reporting` - (Optional) `true` or `false`. Defaults to `false` when field not included in TF config. Violations will not change system health status for this term.
///
/// &gt; **NOTE:** When a `critical` or `warning` block is added to this resource, using either `duration` or `threshold_duration` (one of the two) is mandatory. Both of these should not be specified.
///
/// &gt; **NOTE:** When a `critical` or `warning` block is added to this resource, using either `time_function` or `threshold_occurrences` (one of the two) is mandatory. Both of these should not be specified.
///
/// ### Prediction
///
/// &gt; **BETA PREVIEW:** The `prediction` block is in limited release and only enabled for preview on a per-account basis.
///
/// &gt; **NOTE:** The `prediction` block is only available for _static_ NRQL alert conditions.
///
/// The `prediction` block supports the following arguments:
///
/// - `predict_by` - (Optional) The duration, in seconds, that the prediction should look into the future. Default is 3600 seconds (1 hour).
/// - `prefer_prediction_violation` - (Optional) If a prediction incident is open when a term's static threshold is breached by the actual signal, default behavior is to close the prediction incident and open a static incident. Setting `prefer_prediction_violation` to `true` overrides this behavior leaving the prediction incident open and preventing a static incident from opening. Default is false.
///
/// ## Outlier Configuration
///
/// &gt; **BETA PREVIEW:** The `outlier` condition type is in limited release and only enabled for preview on a per-account basis.
///
/// &gt; **NOTE:** The `outlier_configuration` block is only available for _outlier_ NRQL alert conditions.
///
/// The `outlier_configuration` block supports the following nested block:
/// - `dbscan` - (Required) The DBSCAN algorithm configuration block.
///
/// `dbscan` supports the following arguments:
/// - `epsilon` - (Required) The maximum distance between two samples for one to be considered as in the neighborhood of the other. Value must be &gt; 0.
/// - `minimum_points` - (Required) The number of samples in a neighborhood for a point to be considered as a core point. This includes the point itself. Value must be &gt;= 1.
/// - `evaluation_group_facet` - (Optional) NRQL facet attribute used to segment data into groups (e.g. `host`, `region`) before running outlier detection. Omit to evaluate all results together.
///
/// Notes:
/// - Currently only `dbscan` is supported.
///
/// ## Additional Examples
///
///
/// ##### Type: `baseline`
///
/// [Baseline NRQL alert conditions](https://docs.newrelic.com/docs/alerts/new-relic-alerts/defining-conditions/create-baseline-alert-conditions) are dynamic in nature and adjust to the behavior of your data. The example below demonstrates a baseline NRQL alert condition for alerting when transaction durations are above a specified threshold and dynamically adjusts based on data trends.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertPolicy("foo", {name: "foo"});
/// const fooNrqlAlertCondition = new newrelic.NrqlAlertCondition("foo", {
///     type: "baseline",
///     accountId: "12345678",
///     name: "foo",
///     policyId: foo.id,
///     description: "Alert when transactions are taking too long",
///     enabled: true,
///     runbookUrl: "https://www.example.com",
///     violationTimeLimitSeconds: 3600,
///     aggregationMethod: "event_flow",
///     aggregationDelay: "120",
///     slideBy: 30,
///     baselineDirection: "upper_only",
///     signalSeasonality: "weekly",
///     nrql: {
///         query: "SELECT percentile(duration, 95) FROM Transaction WHERE appName = 'ExampleAppName'",
///     },
///     critical: {
///         operator: "above",
///         threshold: 5.5,
///         thresholdDuration: 300,
///         thresholdOccurrences: "all",
///     },
///     warning: {
///         operator: "above",
///         threshold: 3.5,
///         thresholdDuration: 600,
///         thresholdOccurrences: "all",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertPolicy("foo", name="foo")
/// foo_nrql_alert_condition = newrelic.NrqlAlertCondition("foo",
///     type="baseline",
///     account_id="12345678",
///     name="foo",
///     policy_id=foo.id,
///     description="Alert when transactions are taking too long",
///     enabled=True,
///     runbook_url="https://www.example.com",
///     violation_time_limit_seconds=3600,
///     aggregation_method="event_flow",
///     aggregation_delay="120",
///     slide_by=30,
///     baseline_direction="upper_only",
///     signal_seasonality="weekly",
///     nrql={
///         "query": "SELECT percentile(duration, 95) FROM Transaction WHERE appName = 'ExampleAppName'",
///     },
///     critical={
///         "operator": "above",
///         "threshold": 5.5,
///         "threshold_duration": 300,
///         "threshold_occurrences": "all",
///     },
///     warning={
///         "operator": "above",
///         "threshold": 3.5,
///         "threshold_duration": 600,
///         "threshold_occurrences": "all",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AlertPolicy("foo", new()
///     {
///         Name = "foo",
///     });
///
///     var fooNrqlAlertCondition = new NewRelic.NrqlAlertCondition("foo", new()
///     {
///         Type = "baseline",
///         AccountId = "12345678",
///         Name = "foo",
///         PolicyId = foo.Id,
///         Description = "Alert when transactions are taking too long",
///         Enabled = true,
///         RunbookUrl = "https://www.example.com",
///         ViolationTimeLimitSeconds = 3600,
///         AggregationMethod = "event_flow",
///         AggregationDelay = "120",
///         SlideBy = 30,
///         BaselineDirection = "upper_only",
///         SignalSeasonality = "weekly",
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT percentile(duration, 95) FROM Transaction WHERE appName = 'ExampleAppName'",
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above",
///             Threshold = 5.5,
///             ThresholdDuration = 300,
///             ThresholdOccurrences = "all",
///         },
///         Warning = new NewRelic.Inputs.NrqlAlertConditionWarningArgs
///         {
///             Operator = "above",
///             Threshold = 3.5,
///             ThresholdDuration = 600,
///             ThresholdOccurrences = "all",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := newrelic.NewAlertPolicy(ctx, "foo", &newrelic.AlertPolicyArgs{
/// 			Name: pulumi.String("foo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewNrqlAlertCondition(ctx, "foo", &newrelic.NrqlAlertConditionArgs{
/// 			Type:                      pulumi.String("baseline"),
/// 			AccountId:                 pulumi.String("12345678"),
/// 			Name:                      pulumi.String("foo"),
/// 			PolicyId:                  foo.ID(),
/// 			Description:               pulumi.String("Alert when transactions are taking too long"),
/// 			Enabled:                   pulumi.Bool(true),
/// 			RunbookUrl:                pulumi.String("https://www.example.com"),
/// 			ViolationTimeLimitSeconds: pulumi.Int(3600),
/// 			AggregationMethod:         pulumi.String("event_flow"),
/// 			AggregationDelay:          pulumi.String("120"),
/// 			SlideBy:                   pulumi.Int(30),
/// 			BaselineDirection:         pulumi.String("upper_only"),
/// 			SignalSeasonality:         pulumi.String("weekly"),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT percentile(duration, 95) FROM Transaction WHERE appName = 'ExampleAppName'"),
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(5.5),
/// 				ThresholdDuration:    pulumi.Int(300),
/// 				ThresholdOccurrences: pulumi.String("all"),
/// 			},
/// 			Warning: &newrelic.NrqlAlertConditionWarningArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(3.5),
/// 				ThresholdDuration:    pulumi.Int(600),
/// 				ThresholdOccurrences: pulumi.String("all"),
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
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
/// import com.pulumi.newrelic.NrqlAlertCondition;
/// import com.pulumi.newrelic.NrqlAlertConditionArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionNrqlArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionCriticalArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionWarningArgs;
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
///         var foo = new AlertPolicy("foo", AlertPolicyArgs.builder()
///             .name("foo")
///             .build());
///
///         var fooNrqlAlertCondition = new NrqlAlertCondition("fooNrqlAlertCondition", NrqlAlertConditionArgs.builder()
///             .type("baseline")
///             .accountId("12345678")
///             .name("foo")
///             .policyId(foo.id())
///             .description("Alert when transactions are taking too long")
///             .enabled(true)
///             .runbookUrl("https://www.example.com")
///             .violationTimeLimitSeconds(3600)
///             .aggregationMethod("event_flow")
///             .aggregationDelay("120")
///             .slideBy(30)
///             .baselineDirection("upper_only")
///             .signalSeasonality("weekly")
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT percentile(duration, 95) FROM Transaction WHERE appName = 'ExampleAppName'")
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above")
///                 .threshold(5.5)
///                 .thresholdDuration(300)
///                 .thresholdOccurrences("all")
///                 .build())
///             .warning(NrqlAlertConditionWarningArgs.builder()
///                 .operator("above")
///                 .threshold(3.5)
///                 .thresholdDuration(600)
///                 .thresholdOccurrences("all")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AlertPolicy
///     properties:
///       name: foo
///   fooNrqlAlertCondition:
///     type: newrelic:NrqlAlertCondition
///     name: foo
///     properties:
///       type: baseline
///       accountId: 1.2345678e+07
///       name: foo
///       policyId: ${foo.id}
///       description: Alert when transactions are taking too long
///       enabled: true
///       runbookUrl: https://www.example.com
///       violationTimeLimitSeconds: 3600
///       aggregationMethod: event_flow
///       aggregationDelay: 120
///       slideBy: 30 # baseline type only
///       baselineDirection: upper_only
///       signalSeasonality: weekly
///       nrql:
///         query: SELECT percentile(duration, 95) FROM Transaction WHERE appName = 'ExampleAppName'
///       critical:
///         operator: above
///         threshold: 5.5
///         thresholdDuration: 300
///         thresholdOccurrences: all
///       warning:
///         operator: above
///         threshold: 3.5
///         thresholdDuration: 600
///         thresholdOccurrences: all
/// ```
///
/// &lt;br&gt;
///
/// ##### Type: `outlier`
///
/// &gt; **BETA PREVIEW:** The `outlier` condition type is in limited release and only enabled for preview on a per-account basis.
///
/// [Outlier NRQL alert conditions](https://docs.newrelic.com/docs/alerts/create-alert/set-thresholds/outlier-detection/) are dynamic in nature and adjust to the behavior of your data. The example below demonstrates an outlier NRQL alert condition for detecting anomalies using the DBSCAN clustering algorithm.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const outlierPolicy = new newrelic.AlertPolicy("outlier_policy", {name: "outlier-demo"});
/// const outlierCondition = new newrelic.NrqlAlertCondition("outlier_condition", {
///     accountId: "12345678",
///     policyId: outlierPolicy.id,
///     type: "outlier",
///     name: "Outlier duration anomaly",
///     description: "Detect hosts with anomalous average duration",
///     enabled: true,
///     violationTimeLimitSeconds: 3600,
///     aggregationWindow: 60,
///     aggregationMethod: "event_flow",
///     nrql: {
///         query: "SELECT average(duration) FROM Transaction FACET host",
///     },
///     outlierConfiguration: {
///         dbscan: {
///             epsilon: 0.15,
///             minimumPoints: 5,
///             evaluationGroupFacet: "host",
///         },
///     },
///     critical: {
///         operator: "above",
///         threshold: 0,
///         thresholdDuration: 300,
///         thresholdOccurrences: "all",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// outlier_policy = newrelic.AlertPolicy("outlier_policy", name="outlier-demo")
/// outlier_condition = newrelic.NrqlAlertCondition("outlier_condition",
///     account_id="12345678",
///     policy_id=outlier_policy.id,
///     type="outlier",
///     name="Outlier duration anomaly",
///     description="Detect hosts with anomalous average duration",
///     enabled=True,
///     violation_time_limit_seconds=3600,
///     aggregation_window=60,
///     aggregation_method="event_flow",
///     nrql={
///         "query": "SELECT average(duration) FROM Transaction FACET host",
///     },
///     outlier_configuration={
///         "dbscan": {
///             "epsilon": 0.15,
///             "minimum_points": 5,
///             "evaluation_group_facet": "host",
///         },
///     },
///     critical={
///         "operator": "above",
///         "threshold": 0,
///         "threshold_duration": 300,
///         "threshold_occurrences": "all",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var outlierPolicy = new NewRelic.AlertPolicy("outlier_policy", new()
///     {
///         Name = "outlier-demo",
///     });
///
///     var outlierCondition = new NewRelic.NrqlAlertCondition("outlier_condition", new()
///     {
///         AccountId = "12345678",
///         PolicyId = outlierPolicy.Id,
///         Type = "outlier",
///         Name = "Outlier duration anomaly",
///         Description = "Detect hosts with anomalous average duration",
///         Enabled = true,
///         ViolationTimeLimitSeconds = 3600,
///         AggregationWindow = 60,
///         AggregationMethod = "event_flow",
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT average(duration) FROM Transaction FACET host",
///         },
///         OutlierConfiguration = new NewRelic.Inputs.NrqlAlertConditionOutlierConfigurationArgs
///         {
///             Dbscan = new NewRelic.Inputs.NrqlAlertConditionOutlierConfigurationDbscanArgs
///             {
///                 Epsilon = 0.15,
///                 MinimumPoints = 5,
///                 EvaluationGroupFacet = "host",
///             },
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above",
///             Threshold = 0,
///             ThresholdDuration = 300,
///             ThresholdOccurrences = "all",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		outlierPolicy, err := newrelic.NewAlertPolicy(ctx, "outlier_policy", &newrelic.AlertPolicyArgs{
/// 			Name: pulumi.String("outlier-demo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewNrqlAlertCondition(ctx, "outlier_condition", &newrelic.NrqlAlertConditionArgs{
/// 			AccountId:                 pulumi.String("12345678"),
/// 			PolicyId:                  outlierPolicy.ID(),
/// 			Type:                      pulumi.String("outlier"),
/// 			Name:                      pulumi.String("Outlier duration anomaly"),
/// 			Description:               pulumi.String("Detect hosts with anomalous average duration"),
/// 			Enabled:                   pulumi.Bool(true),
/// 			ViolationTimeLimitSeconds: pulumi.Int(3600),
/// 			AggregationWindow:         pulumi.Int(60),
/// 			AggregationMethod:         pulumi.String("event_flow"),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT average(duration) FROM Transaction FACET host"),
/// 			},
/// 			OutlierConfiguration: &newrelic.NrqlAlertConditionOutlierConfigurationArgs{
/// 				Dbscan: &newrelic.NrqlAlertConditionOutlierConfigurationDbscanArgs{
/// 					Epsilon:              pulumi.Float64(0.15),
/// 					MinimumPoints:        pulumi.Int(5),
/// 					EvaluationGroupFacet: pulumi.String("host"),
/// 				},
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(0),
/// 				ThresholdDuration:    pulumi.Int(300),
/// 				ThresholdOccurrences: pulumi.String("all"),
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
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
/// import com.pulumi.newrelic.NrqlAlertCondition;
/// import com.pulumi.newrelic.NrqlAlertConditionArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionNrqlArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionOutlierConfigurationArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionOutlierConfigurationDbscanArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionCriticalArgs;
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
///         var outlierPolicy = new AlertPolicy("outlierPolicy", AlertPolicyArgs.builder()
///             .name("outlier-demo")
///             .build());
///
///         var outlierCondition = new NrqlAlertCondition("outlierCondition", NrqlAlertConditionArgs.builder()
///             .accountId("12345678")
///             .policyId(outlierPolicy.id())
///             .type("outlier")
///             .name("Outlier duration anomaly")
///             .description("Detect hosts with anomalous average duration")
///             .enabled(true)
///             .violationTimeLimitSeconds(3600)
///             .aggregationWindow(60)
///             .aggregationMethod("event_flow")
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT average(duration) FROM Transaction FACET host")
///                 .build())
///             .outlierConfiguration(NrqlAlertConditionOutlierConfigurationArgs.builder()
///                 .dbscan(NrqlAlertConditionOutlierConfigurationDbscanArgs.builder()
///                     .epsilon(0.15)
///                     .minimumPoints(5)
///                     .evaluationGroupFacet("host")
///                     .build())
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above")
///                 .threshold(0.0)
///                 .thresholdDuration(300)
///                 .thresholdOccurrences("all")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   outlierPolicy:
///     type: newrelic:AlertPolicy
///     name: outlier_policy
///     properties:
///       name: outlier-demo
///   outlierCondition:
///     type: newrelic:NrqlAlertCondition
///     name: outlier_condition
///     properties:
///       accountId: 1.2345678e+07
///       policyId: ${outlierPolicy.id}
///       type: outlier
///       name: Outlier duration anomaly
///       description: Detect hosts with anomalous average duration
///       enabled: true
///       violationTimeLimitSeconds: 3600
///       aggregationWindow: 60
///       aggregationMethod: event_flow
///       nrql:
///         query: SELECT average(duration) FROM Transaction FACET host
///       outlierConfiguration:
///         dbscan:
///           epsilon: 0.15
///           minimumPoints: 5
///           evaluationGroupFacet: host
///       critical:
///         operator: above
///         threshold: 0
///         thresholdDuration: 300
///         thresholdOccurrences: all
/// ```
///
///
/// &lt;br&gt;
///
/// ## Tags
///
/// Manage NRQL alert condition tags with `newrelic.EntityTags`. For up-to-date documentation about the tagging resource, please check newrelic.EntityTags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertPolicy("foo", {name: "foo"});
/// const fooNrqlAlertCondition = new newrelic.NrqlAlertCondition("foo", {
///     accountId: "12345678",
///     policyId: foo.id,
///     type: "static",
///     name: "foo",
///     description: "Alert when transactions are taking too long",
///     runbookUrl: "https://www.example.com",
///     enabled: true,
///     violationTimeLimitSeconds: 3600,
///     fillOption: "static",
///     fillValue: 1,
///     aggregationWindow: 60,
///     aggregationMethod: "event_flow",
///     aggregationDelay: "120",
///     expirationDuration: 120,
///     openViolationOnExpiration: true,
///     closeViolationsOnExpiration: true,
///     slideBy: 30,
///     nrql: {
///         query: "SELECT average(duration) FROM Transaction where appName = 'Your App'",
///     },
///     critical: {
///         operator: "above",
///         threshold: 5.5,
///         thresholdDuration: 300,
///         thresholdOccurrences: "ALL",
///     },
///     warning: {
///         operator: "above",
///         threshold: 3.5,
///         thresholdDuration: 600,
///         thresholdOccurrences: "ALL",
///     },
/// });
/// const myConditionEntityTags = new newrelic.EntityTags("my_condition_entity_tags", {
///     guid: fooNrqlAlertCondition.entityGuid,
///     tags: [
///         {
///             key: "my-key",
///             values: [
///                 "my-value",
///                 "my-other-value",
///             ],
///         },
///         {
///             key: "my-key-2",
///             values: ["my-value-2"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertPolicy("foo", name="foo")
/// foo_nrql_alert_condition = newrelic.NrqlAlertCondition("foo",
///     account_id="12345678",
///     policy_id=foo.id,
///     type="static",
///     name="foo",
///     description="Alert when transactions are taking too long",
///     runbook_url="https://www.example.com",
///     enabled=True,
///     violation_time_limit_seconds=3600,
///     fill_option="static",
///     fill_value=1,
///     aggregation_window=60,
///     aggregation_method="event_flow",
///     aggregation_delay="120",
///     expiration_duration=120,
///     open_violation_on_expiration=True,
///     close_violations_on_expiration=True,
///     slide_by=30,
///     nrql={
///         "query": "SELECT average(duration) FROM Transaction where appName = 'Your App'",
///     },
///     critical={
///         "operator": "above",
///         "threshold": 5.5,
///         "threshold_duration": 300,
///         "threshold_occurrences": "ALL",
///     },
///     warning={
///         "operator": "above",
///         "threshold": 3.5,
///         "threshold_duration": 600,
///         "threshold_occurrences": "ALL",
///     })
/// my_condition_entity_tags = newrelic.EntityTags("my_condition_entity_tags",
///     guid=foo_nrql_alert_condition.entity_guid,
///     tags=[
///         {
///             "key": "my-key",
///             "values": [
///                 "my-value",
///                 "my-other-value",
///             ],
///         },
///         {
///             "key": "my-key-2",
///             "values": ["my-value-2"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AlertPolicy("foo", new()
///     {
///         Name = "foo",
///     });
///
///     var fooNrqlAlertCondition = new NewRelic.NrqlAlertCondition("foo", new()
///     {
///         AccountId = "12345678",
///         PolicyId = foo.Id,
///         Type = "static",
///         Name = "foo",
///         Description = "Alert when transactions are taking too long",
///         RunbookUrl = "https://www.example.com",
///         Enabled = true,
///         ViolationTimeLimitSeconds = 3600,
///         FillOption = "static",
///         FillValue = 1,
///         AggregationWindow = 60,
///         AggregationMethod = "event_flow",
///         AggregationDelay = "120",
///         ExpirationDuration = 120,
///         OpenViolationOnExpiration = true,
///         CloseViolationsOnExpiration = true,
///         SlideBy = 30,
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT average(duration) FROM Transaction where appName = 'Your App'",
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above",
///             Threshold = 5.5,
///             ThresholdDuration = 300,
///             ThresholdOccurrences = "ALL",
///         },
///         Warning = new NewRelic.Inputs.NrqlAlertConditionWarningArgs
///         {
///             Operator = "above",
///             Threshold = 3.5,
///             ThresholdDuration = 600,
///             ThresholdOccurrences = "ALL",
///         },
///     });
///
///     var myConditionEntityTags = new NewRelic.EntityTags("my_condition_entity_tags", new()
///     {
///         Guid = fooNrqlAlertCondition.EntityGuid,
///         Tags = new[]
///         {
///             new NewRelic.Inputs.EntityTagsTagArgs
///             {
///                 Key = "my-key",
///                 Values = new[]
///                 {
///                     "my-value",
///                     "my-other-value",
///                 },
///             },
///             new NewRelic.Inputs.EntityTagsTagArgs
///             {
///                 Key = "my-key-2",
///                 Values = new[]
///                 {
///                     "my-value-2",
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := newrelic.NewAlertPolicy(ctx, "foo", &newrelic.AlertPolicyArgs{
/// 			Name: pulumi.String("foo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooNrqlAlertCondition, err := newrelic.NewNrqlAlertCondition(ctx, "foo", &newrelic.NrqlAlertConditionArgs{
/// 			AccountId:                   pulumi.String("12345678"),
/// 			PolicyId:                    foo.ID(),
/// 			Type:                        pulumi.String("static"),
/// 			Name:                        pulumi.String("foo"),
/// 			Description:                 pulumi.String("Alert when transactions are taking too long"),
/// 			RunbookUrl:                  pulumi.String("https://www.example.com"),
/// 			Enabled:                     pulumi.Bool(true),
/// 			ViolationTimeLimitSeconds:   pulumi.Int(3600),
/// 			FillOption:                  pulumi.String("static"),
/// 			FillValue:                   pulumi.Float64(1),
/// 			AggregationWindow:           pulumi.Int(60),
/// 			AggregationMethod:           pulumi.String("event_flow"),
/// 			AggregationDelay:            pulumi.String("120"),
/// 			ExpirationDuration:          pulumi.Int(120),
/// 			OpenViolationOnExpiration:   pulumi.Bool(true),
/// 			CloseViolationsOnExpiration: pulumi.Bool(true),
/// 			SlideBy:                     pulumi.Int(30),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT average(duration) FROM Transaction where appName = 'Your App'"),
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(5.5),
/// 				ThresholdDuration:    pulumi.Int(300),
/// 				ThresholdOccurrences: pulumi.String("ALL"),
/// 			},
/// 			Warning: &newrelic.NrqlAlertConditionWarningArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(3.5),
/// 				ThresholdDuration:    pulumi.Int(600),
/// 				ThresholdOccurrences: pulumi.String("ALL"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewEntityTags(ctx, "my_condition_entity_tags", &newrelic.EntityTagsArgs{
/// 			Guid: fooNrqlAlertCondition.EntityGuid,
/// 			Tags: newrelic.EntityTagsTagArray{
/// 				&newrelic.EntityTagsTagArgs{
/// 					Key: pulumi.String("my-key"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("my-value"),
/// 						pulumi.String("my-other-value"),
/// 					},
/// 				},
/// 				&newrelic.EntityTagsTagArgs{
/// 					Key: pulumi.String("my-key-2"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("my-value-2"),
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
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
/// import com.pulumi.newrelic.NrqlAlertCondition;
/// import com.pulumi.newrelic.NrqlAlertConditionArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionNrqlArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionCriticalArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionWarningArgs;
/// import com.pulumi.newrelic.EntityTags;
/// import com.pulumi.newrelic.EntityTagsArgs;
/// import com.pulumi.newrelic.inputs.EntityTagsTagArgs;
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
///         var foo = new AlertPolicy("foo", AlertPolicyArgs.builder()
///             .name("foo")
///             .build());
///
///         var fooNrqlAlertCondition = new NrqlAlertCondition("fooNrqlAlertCondition", NrqlAlertConditionArgs.builder()
///             .accountId("12345678")
///             .policyId(foo.id())
///             .type("static")
///             .name("foo")
///             .description("Alert when transactions are taking too long")
///             .runbookUrl("https://www.example.com")
///             .enabled(true)
///             .violationTimeLimitSeconds(3600)
///             .fillOption("static")
///             .fillValue(1.0)
///             .aggregationWindow(60)
///             .aggregationMethod("event_flow")
///             .aggregationDelay("120")
///             .expirationDuration(120)
///             .openViolationOnExpiration(true)
///             .closeViolationsOnExpiration(true)
///             .slideBy(30)
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT average(duration) FROM Transaction where appName = 'Your App'")
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above")
///                 .threshold(5.5)
///                 .thresholdDuration(300)
///                 .thresholdOccurrences("ALL")
///                 .build())
///             .warning(NrqlAlertConditionWarningArgs.builder()
///                 .operator("above")
///                 .threshold(3.5)
///                 .thresholdDuration(600)
///                 .thresholdOccurrences("ALL")
///                 .build())
///             .build());
///
///         var myConditionEntityTags = new EntityTags("myConditionEntityTags", EntityTagsArgs.builder()
///             .guid(fooNrqlAlertCondition.entityGuid())
///             .tags(
///                 EntityTagsTagArgs.builder()
///                     .key("my-key")
///                     .values(
///                         "my-value",
///                         "my-other-value")
///                     .build(),
///                 EntityTagsTagArgs.builder()
///                     .key("my-key-2")
///                     .values("my-value-2")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AlertPolicy
///     properties:
///       name: foo
///   fooNrqlAlertCondition:
///     type: newrelic:NrqlAlertCondition
///     name: foo
///     properties:
///       accountId: 1.2345678e+07
///       policyId: ${foo.id}
///       type: static
///       name: foo
///       description: Alert when transactions are taking too long
///       runbookUrl: https://www.example.com
///       enabled: true
///       violationTimeLimitSeconds: 3600
///       fillOption: static
///       fillValue: 1
///       aggregationWindow: 60
///       aggregationMethod: event_flow
///       aggregationDelay: 120
///       expirationDuration: 120
///       openViolationOnExpiration: true
///       closeViolationsOnExpiration: true
///       slideBy: 30
///       nrql:
///         query: SELECT average(duration) FROM Transaction where appName = 'Your App'
///       critical:
///         operator: above
///         threshold: 5.5
///         thresholdDuration: 300
///         thresholdOccurrences: ALL
///       warning:
///         operator: above
///         threshold: 3.5
///         thresholdDuration: 600
///         thresholdOccurrences: ALL
///   myConditionEntityTags:
///     type: newrelic:EntityTags
///     name: my_condition_entity_tags
///     properties:
///       guid: ${fooNrqlAlertCondition.entityGuid}
///       tags:
///         - key: my-key
///           values:
///             - my-value
///             - my-other-value
///         - key: my-key-2
///           values:
///             - my-value-2
/// ```
///
///
///
/// ## Upgrade from 1.x to 2.x
///
/// There have been several deprecations in the `newrelic.NrqlAlertCondition`
/// resource. Users will need to make some updates in order to have a smooth
/// upgrade.
///
/// An example resource from 1.x might look like the following.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const z = new newrelic.NrqlAlertCondition("z", {
///     policyId: zNewrelicAlertPolicy.id,
///     name: "zleslie-test",
///     type: "static",
///     runbookUrl: "https://localhost",
///     enabled: true,
///     violationTimeLimit: "TWENTY_FOUR_HOURS",
///     critical: {
///         operator: "above",
///         thresholdDuration: 120,
///         threshold: 3,
///         thresholdOccurrences: "AT_LEAST_ONCE",
///     },
///     nrql: {
///         query: "SELECT count(*) FROM TransactionError WHERE appName like '%Dummy App%' FACET appName",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// z = newrelic.NrqlAlertCondition("z",
///     policy_id=z_newrelic_alert_policy["id"],
///     name="zleslie-test",
///     type="static",
///     runbook_url="https://localhost",
///     enabled=True,
///     violation_time_limit="TWENTY_FOUR_HOURS",
///     critical={
///         "operator": "above",
///         "threshold_duration": 120,
///         "threshold": 3,
///         "threshold_occurrences": "AT_LEAST_ONCE",
///     },
///     nrql={
///         "query": "SELECT count(*) FROM TransactionError WHERE appName like '%Dummy App%' FACET appName",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var z = new NewRelic.NrqlAlertCondition("z", new()
///     {
///         PolicyId = zNewrelicAlertPolicy.Id,
///         Name = "zleslie-test",
///         Type = "static",
///         RunbookUrl = "https://localhost",
///         Enabled = true,
///         ViolationTimeLimit = "TWENTY_FOUR_HOURS",
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above",
///             ThresholdDuration = 120,
///             Threshold = 3,
///             ThresholdOccurrences = "AT_LEAST_ONCE",
///         },
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT count(*) FROM TransactionError WHERE appName like '%Dummy App%' FACET appName",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewNrqlAlertCondition(ctx, "z", &newrelic.NrqlAlertConditionArgs{
/// 			PolicyId:           pulumi.Any(zNewrelicAlertPolicy.Id),
/// 			Name:               pulumi.String("zleslie-test"),
/// 			Type:               pulumi.String("static"),
/// 			RunbookUrl:         pulumi.String("https://localhost"),
/// 			Enabled:            pulumi.Bool(true),
/// 			ViolationTimeLimit: pulumi.String("TWENTY_FOUR_HOURS"),
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above"),
/// 				ThresholdDuration:    pulumi.Int(120),
/// 				Threshold:            pulumi.Float64(3),
/// 				ThresholdOccurrences: pulumi.String("AT_LEAST_ONCE"),
/// 			},
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT count(*) FROM TransactionError WHERE appName like '%Dummy App%' FACET appName"),
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
/// import com.pulumi.newrelic.NrqlAlertCondition;
/// import com.pulumi.newrelic.NrqlAlertConditionArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionCriticalArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionNrqlArgs;
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
///         var z = new NrqlAlertCondition("z", NrqlAlertConditionArgs.builder()
///             .policyId(zNewrelicAlertPolicy.id())
///             .name("zleslie-test")
///             .type("static")
///             .runbookUrl("https://localhost")
///             .enabled(true)
///             .violationTimeLimit("TWENTY_FOUR_HOURS")
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above")
///                 .thresholdDuration(120)
///                 .threshold(3.0)
///                 .thresholdOccurrences("AT_LEAST_ONCE")
///                 .build())
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT count(*) FROM TransactionError WHERE appName like '%Dummy App%' FACET appName")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   z:
///     type: newrelic:NrqlAlertCondition
///     properties:
///       policyId: ${zNewrelicAlertPolicy.id}
///       name: zleslie-test
///       type: static
///       runbookUrl: https://localhost
///       enabled: true
///       violationTimeLimit: TWENTY_FOUR_HOURS
///       critical:
///         operator: above
///         thresholdDuration: 120
///         threshold: 3
///         thresholdOccurrences: AT_LEAST_ONCE
///       nrql:
///         query: SELECT count(*) FROM TransactionError WHERE appName like '%Dummy App%' FACET appName
/// ```
///
///
/// After making the appropriate adjustments mentioned in the deprecation warnings,
/// the resource now looks like the following.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const z = new newrelic.NrqlAlertCondition("z", {
///     policyId: zNewrelicAlertPolicy.id,
///     name: "zleslie-test",
///     type: "static",
///     runbookUrl: "https://localhost",
///     enabled: true,
///     violationTimeLimitSeconds: 86400,
///     terms: [{
///         priority: "critical",
///         operator: "above",
///         threshold: 3,
///         duration: 5,
///         timeFunction: "any",
///     }],
///     nrql: {
///         query: "SELECT count(*) FROM TransactionError WHERE appName like '%Dummy App%' FACET appName",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// z = newrelic.NrqlAlertCondition("z",
///     policy_id=z_newrelic_alert_policy["id"],
///     name="zleslie-test",
///     type="static",
///     runbook_url="https://localhost",
///     enabled=True,
///     violation_time_limit_seconds=86400,
///     terms=[{
///         "priority": "critical",
///         "operator": "above",
///         "threshold": 3,
///         "duration": 5,
///         "time_function": "any",
///     }],
///     nrql={
///         "query": "SELECT count(*) FROM TransactionError WHERE appName like '%Dummy App%' FACET appName",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var z = new NewRelic.NrqlAlertCondition("z", new()
///     {
///         PolicyId = zNewrelicAlertPolicy.Id,
///         Name = "zleslie-test",
///         Type = "static",
///         RunbookUrl = "https://localhost",
///         Enabled = true,
///         ViolationTimeLimitSeconds = 86400,
///         Terms = new[]
///         {
///             new NewRelic.Inputs.NrqlAlertConditionTermArgs
///             {
///                 Priority = "critical",
///                 Operator = "above",
///                 Threshold = 3,
///                 Duration = 5,
///                 TimeFunction = "any",
///             },
///         },
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT count(*) FROM TransactionError WHERE appName like '%Dummy App%' FACET appName",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewNrqlAlertCondition(ctx, "z", &newrelic.NrqlAlertConditionArgs{
/// 			PolicyId:                  pulumi.Any(zNewrelicAlertPolicy.Id),
/// 			Name:                      pulumi.String("zleslie-test"),
/// 			Type:                      pulumi.String("static"),
/// 			RunbookUrl:                pulumi.String("https://localhost"),
/// 			Enabled:                   pulumi.Bool(true),
/// 			ViolationTimeLimitSeconds: pulumi.Int(86400),
/// 			Terms: newrelic.NrqlAlertConditionTermArray{
/// 				&newrelic.NrqlAlertConditionTermArgs{
/// 					Priority:     pulumi.String("critical"),
/// 					Operator:     pulumi.String("above"),
/// 					Threshold:    pulumi.Float64(3),
/// 					Duration:     pulumi.Int(5),
/// 					TimeFunction: pulumi.String("any"),
/// 				},
/// 			},
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT count(*) FROM TransactionError WHERE appName like '%Dummy App%' FACET appName"),
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
/// import com.pulumi.newrelic.NrqlAlertCondition;
/// import com.pulumi.newrelic.NrqlAlertConditionArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionTermArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionNrqlArgs;
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
///         var z = new NrqlAlertCondition("z", NrqlAlertConditionArgs.builder()
///             .policyId(zNewrelicAlertPolicy.id())
///             .name("zleslie-test")
///             .type("static")
///             .runbookUrl("https://localhost")
///             .enabled(true)
///             .violationTimeLimitSeconds(86400)
///             .terms(NrqlAlertConditionTermArgs.builder()
///                 .priority("critical")
///                 .operator("above")
///                 .threshold(3.0)
///                 .duration(5)
///                 .timeFunction("any")
///                 .build())
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT count(*) FROM TransactionError WHERE appName like '%Dummy App%' FACET appName")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   z:
///     type: newrelic:NrqlAlertCondition
///     properties:
///       policyId: ${zNewrelicAlertPolicy.id}
///       name: zleslie-test
///       type: static
///       runbookUrl: https://localhost
///       enabled: true
///       violationTimeLimitSeconds: 86400
///       terms:
///         - priority: critical
///           operator: above
///           threshold: 3
///           duration: 5
///           timeFunction: any
///       nrql:
///         query: SELECT count(*) FROM TransactionError WHERE appName like '%Dummy App%' FACET appName
/// ```
///
///
/// ## Import
///
/// NRQL alert conditions can be imported using a composite ID of `&lt;policy_id&gt;:&lt;condition_id&gt;:&lt;conditionType&gt;`, e.g.
///
/// // For `baseline` conditions
///
/// ```sh
/// $ pulumi import newrelic:index/nrqlAlertCondition:NrqlAlertCondition foo 538291:6789035:baseline
///
/// // For `static` conditions
/// $ pulumi import newrelic:index/nrqlAlertCondition:NrqlAlertCondition foo 538291:6789035:static
/// ```
///
/// &gt; **NOTE:** The value of `conditionType` in the import composite ID must be a valid condition type - `static` or `baseline`. Also note that deprecated arguments will *not* be set when importing.
///
/// Users can find the actual values for `policy_id` and `condition_id` from the New Relic One UI under respective policy and condition.
class NrqlAlertCondition extends pulumi.CustomResource {
  /// The New Relic account ID of the account you wish to create the condition. Defaults to the account ID set in your environment variable `NEW_RELIC_ACCOUNT_ID`.
  late final pulumi.Output<String> accountId;

  /// How long we wait for data that belongs in each aggregation window. Depending on your data, a longer delay may increase accuracy but delay notifications. Use `aggregation_delay` with the `event_flow` and `cadence` methods. The maximum delay is 1200 seconds (20 minutes) when using `event_flow` and 3600 seconds (60 minutes) when using `cadence`. In both cases, the minimum delay is 0 seconds and the default is 120 seconds. `aggregation_delay` cannot be set with `nrql.evaluation_offset`.
  late final pulumi.Output<String?> aggregationDelay;

  /// Determines when we consider an aggregation window to be complete so that we can evaluate the signal for incidents. Possible values are `cadence`, `event_flow` or `event_timer`. Default is `event_flow`. `aggregation_method` cannot be set with `nrql.evaluation_offset`.
  late final pulumi.Output<String?> aggregationMethod;

  /// How long we wait after each data point arrives to make sure we've processed the whole batch. Use `aggregation_timer` with the `event_timer` method. The timer value can range from 0 seconds to 1200 seconds (20 minutes); the default is 60 seconds. `aggregation_timer` cannot be set with `nrql.evaluation_offset`.
  late final pulumi.Output<String?> aggregationTimer;

  /// The duration of the time window used to evaluate the NRQL query, in seconds. The value must be at least 30 seconds, and no more than 21600 seconds (6 hours). Default is 60 seconds.
  late final pulumi.Output<int> aggregationWindow;

  /// The baseline direction of a _baseline_ NRQL alert condition. Valid values are: `lower_only`, `upper_and_lower`, `upper_only` (case insensitive).
  late final pulumi.Output<String?> baselineDirection;

  /// Whether to close all open incidents when the signal expires.
  late final pulumi.Output<bool?> closeViolationsOnExpiration;

  /// A list containing the `critical` threshold values. At least one `critical` or `warning` threshold must be defined. See Terms below for details.
  late final pulumi.Output<NrqlAlertConditionCritical?> critical;

  /// The description of the NRQL alert condition.
  late final pulumi.Output<String?> description;

  /// Whether to enable the alert condition. Valid values are `true` and `false`. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// The unique entity identifier of the NRQL Condition in New Relic.
  late final pulumi.Output<String> entityGuid;

  /// How long we wait until the signal starts evaluating. The maximum delay is 7200 seconds (120 minutes).
  late final pulumi.Output<int?> evaluationDelay;

  /// The amount of time (in seconds) to wait before considering the signal expired. The value must be at least 30 seconds, and no more than 172800 seconds (48 hours).
  late final pulumi.Output<int?> expirationDuration;

  /// Which strategy to use when filling gaps in the signal. Possible values are `none`, `last_value` or `static`. If `static`, the `fill_value` field will be used for filling gaps in the signal.
  late final pulumi.Output<String?> fillOption;

  /// This value will be used for filling gaps in the signal.
  late final pulumi.Output<double?> fillValue;

  /// Whether an alert condition should ignore expected termination of a signal when considering whether to create a loss of signal incident. Defaults to false.
  late final pulumi.Output<bool?> ignoreOnExpectedTermination;

  /// The title of the condition.
  late final pulumi.Output<String> name;

  /// A NRQL query. See NRQL below for details.
  late final pulumi.Output<NrqlAlertConditionNrql> nrql;

  /// Whether to create a new incident to capture that the signal expired.
  late final pulumi.Output<bool?> openViolationOnExpiration;

  /// **BETA PREVIEW:** The configuration block for `outlier` NRQL alert conditions. See Outlier Configuration below for details.
  late final pulumi.Output<NrqlAlertConditionOutlierConfiguration?>
  outlierConfiguration;

  /// The ID of the policy where this condition should be used.
  late final pulumi.Output<String> policyId;

  /// Runbook URL to display in notifications.
  late final pulumi.Output<String?> runbookUrl;

  /// Seasonality under which a condition's signal(s) are evaluated. Only available for baseline conditions. Valid values are: `NEW_RELIC_CALCULATION`, `HOURLY`, `DAILY`, `WEEKLY`, or `NONE`. To have New Relic calculate seasonality automatically, set to `NEW_RELIC_CALCULATION`. To turn off seasonality completely, set to `NONE`.
  late final pulumi.Output<String?> signalSeasonality;

  /// Gathers data in overlapping time windows to smooth the chart line, making it easier to spot trends. The `slide_by` value is specified in seconds and must be smaller than and a factor of the `aggregation_window`.
  late final pulumi.Output<int?> slideBy;

  /// BETA PREVIEW: The GUID of the entity explicitly targeted by the condition. Issues triggered by this condition will affect the health status of this entity instead of having the affected entity detected automatically. The entity's account ID must be either `account_id` or `nrql.data_account_id`.
  late final pulumi.Output<String?> targetEntity;

  /// **DEPRECATED** Use `critical`, and `warning` instead. A list of terms for this condition. See Terms below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> terms;

  /// The custom title to be used when incidents are opened by the condition. Setting this field will override the default title. Must be [Handlebars](https://handlebarsjs.com/) format.
  late final pulumi.Output<String?> titleTemplate;

  /// The type of the condition. Valid values are `static`, `baseline`, or `outlier`. Defaults to `static`.
  /// &lt;small&gt;\***Note**: **BETA PREVIEW: the `outlier` field is in limited release and only enabled for preview on a per-account basis.**&lt;/small&gt;
  late final pulumi.Output<String?> type;

  /// **DEPRECATED:** Use `violation_time_limit_seconds` instead. Sets a time limit, in hours, that will automatically force-close a long-lasting incident after the time limit you select. Possible values are `ONE_HOUR`, `TWO_HOURS`, `FOUR_HOURS`, `EIGHT_HOURS`, `TWELVE_HOURS`, `TWENTY_FOUR_HOURS`, `THIRTY_DAYS` (case insensitive).&lt;br&gt;
  /// &lt;small&gt;\***Note**: One of `violation_time_limit` _or_ `violation_time_limit_seconds` must be set, but not both.&lt;/small&gt;
  late final pulumi.Output<String> violationTimeLimit;

  /// Sets a time limit, in seconds, that will automatically force-close a long-lasting incident after the time limit you select. The value must be between 300 seconds (5 minutes) to 2592000 seconds (30 days) (inclusive). &lt;br&gt;
  /// &lt;small&gt;\***Note**: One of `violation_time_limit` _or_ `violation_time_limit_seconds` must be set, but not both.&lt;/small&gt;
  late final pulumi.Output<int?> violationTimeLimitSeconds;

  /// A list containing the `warning` threshold values. At least one `critical` or `warning` threshold must be defined. See Terms below for details.
  late final pulumi.Output<NrqlAlertConditionWarning?> warning;

  /// Creates a new [NrqlAlertCondition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NrqlAlertCondition]. {@macro pulumi_index_nrql_alert_condition_nrql_alert_condition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NrqlAlertCondition(
    String name, {
    NrqlAlertConditionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/nrqlAlertCondition:NrqlAlertCondition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    aggregationDelay = registerOutput<String?>('aggregationDelay');
    aggregationMethod = registerOutput<String?>('aggregationMethod');
    aggregationTimer = registerOutput<String?>('aggregationTimer');
    aggregationWindow = registerOutput<int>('aggregationWindow');
    baselineDirection = registerOutput<String?>('baselineDirection');
    closeViolationsOnExpiration = registerOutput<bool?>(
      'closeViolationsOnExpiration',
    );
    critical = registerOutput<NrqlAlertConditionCritical?>(
      'critical',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NrqlAlertConditionCritical.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    entityGuid = registerOutput<String>('entityGuid');
    evaluationDelay = registerOutput<int?>('evaluationDelay');
    expirationDuration = registerOutput<int?>('expirationDuration');
    fillOption = registerOutput<String?>('fillOption');
    fillValue = registerOutput<double?>('fillValue');
    ignoreOnExpectedTermination = registerOutput<bool?>(
      'ignoreOnExpectedTermination',
    );
    this.name = registerOutput<String>('name');
    nrql = registerOutput<NrqlAlertConditionNrql>(
      'nrql',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NrqlAlertConditionNrql.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    openViolationOnExpiration = registerOutput<bool?>(
      'openViolationOnExpiration',
    );
    outlierConfiguration =
        registerOutput<NrqlAlertConditionOutlierConfiguration?>(
          'outlierConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return NrqlAlertConditionOutlierConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    policyId = registerOutput<String>('policyId');
    runbookUrl = registerOutput<String?>('runbookUrl');
    signalSeasonality = registerOutput<String?>('signalSeasonality');
    slideBy = registerOutput<int?>('slideBy');
    targetEntity = registerOutput<String?>('targetEntity');
    terms = registerOutput<List<Map<String, dynamic>>?>('terms');
    titleTemplate = registerOutput<String?>('titleTemplate');
    type = registerOutput<String?>('type');
    violationTimeLimit = registerOutput<String>('violationTimeLimit');
    violationTimeLimitSeconds = registerOutput<int?>(
      'violationTimeLimitSeconds',
    );
    warning = registerOutput<NrqlAlertConditionWarning?>(
      'warning',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NrqlAlertConditionWarning.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [NrqlAlertCondition] resource's state with the given [name] and [id].
  static NrqlAlertCondition get(
    String name,
    pulumi.Input<String> id, {
    NrqlAlertConditionState? state,
  }) {
    return NrqlAlertCondition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NrqlAlertCondition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/nrqlAlertCondition:NrqlAlertCondition',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    aggregationDelay = registerOutput<String?>('aggregationDelay');
    aggregationMethod = registerOutput<String?>('aggregationMethod');
    aggregationTimer = registerOutput<String?>('aggregationTimer');
    aggregationWindow = registerOutput<int>('aggregationWindow');
    baselineDirection = registerOutput<String?>('baselineDirection');
    closeViolationsOnExpiration = registerOutput<bool?>(
      'closeViolationsOnExpiration',
    );
    critical = registerOutput<NrqlAlertConditionCritical?>(
      'critical',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NrqlAlertConditionCritical.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    entityGuid = registerOutput<String>('entityGuid');
    evaluationDelay = registerOutput<int?>('evaluationDelay');
    expirationDuration = registerOutput<int?>('expirationDuration');
    fillOption = registerOutput<String?>('fillOption');
    fillValue = registerOutput<double?>('fillValue');
    ignoreOnExpectedTermination = registerOutput<bool?>(
      'ignoreOnExpectedTermination',
    );
    this.name = registerOutput<String>('name');
    nrql = registerOutput<NrqlAlertConditionNrql>(
      'nrql',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NrqlAlertConditionNrql.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    openViolationOnExpiration = registerOutput<bool?>(
      'openViolationOnExpiration',
    );
    outlierConfiguration =
        registerOutput<NrqlAlertConditionOutlierConfiguration?>(
          'outlierConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return NrqlAlertConditionOutlierConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    policyId = registerOutput<String>('policyId');
    runbookUrl = registerOutput<String?>('runbookUrl');
    signalSeasonality = registerOutput<String?>('signalSeasonality');
    slideBy = registerOutput<int?>('slideBy');
    targetEntity = registerOutput<String?>('targetEntity');
    terms = registerOutput<List<Map<String, dynamic>>?>('terms');
    titleTemplate = registerOutput<String?>('titleTemplate');
    type = registerOutput<String?>('type');
    violationTimeLimit = registerOutput<String>('violationTimeLimit');
    violationTimeLimitSeconds = registerOutput<int?>(
      'violationTimeLimitSeconds',
    );
    warning = registerOutput<NrqlAlertConditionWarning?>(
      'warning',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NrqlAlertConditionWarning.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
