import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_compound_condition_args.dart';
import 'alert_compound_condition_component_condition.dart';
import 'alert_compound_condition_state.dart';

/// Use this resource to create and manage compound alert conditions in New Relic. Compound conditions allow you to combine multiple alert conditions using logical expressions (AND, OR, NOT) to create more sophisticated alerting logic.
///
/// ## Example Usage
///
/// ### Basic Compound Condition (AND)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const example = new newrelic.AlertPolicy("example", {name: "my-policy"});
/// // Create component NRQL conditions
/// const highResponseTime = new newrelic.NrqlAlertCondition("high_response_time", {
///     policyId: example.id,
///     name: "High Response Time",
///     enabled: true,
///     nrql: {
///         query: "SELECT average(duration) FROM Transaction WHERE appName = 'MyApp'",
///     },
///     critical: {
///         operator: "above",
///         threshold: 5,
///         thresholdDuration: 300,
///         thresholdOccurrences: "all",
///     },
///     violationTimeLimitSeconds: 3600,
/// });
/// const highErrorRate = new newrelic.NrqlAlertCondition("high_error_rate", {
///     policyId: example.id,
///     name: "High Error Rate",
///     enabled: true,
///     nrql: {
///         query: "SELECT percentage(count(*), WHERE error IS true) FROM Transaction WHERE appName = 'MyApp'",
///     },
///     critical: {
///         operator: "above",
///         threshold: 5,
///         thresholdDuration: 300,
///         thresholdOccurrences: "all",
///     },
///     violationTimeLimitSeconds: 3600,
/// });
/// // Create alert compound condition combining both
/// const criticalServiceHealth = new newrelic.AlertCompoundCondition("critical_service_health", {
///     policyId: example.id,
///     name: "Critical Service Health",
///     enabled: true,
///     triggerExpression: "A AND B",
///     runbookUrl: "https://example.com/runbooks/critical-health",
///     thresholdDuration: 120,
///     componentConditions: [
///         {
///             id: highResponseTime.id,
///             alias: "A",
///         },
///         {
///             id: highErrorRate.id,
///             alias: "B",
///         },
///     ],
///     facetMatchingBehavior: "FACETS_IGNORED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// example = newrelic.AlertPolicy("example", name="my-policy")
/// # Create component NRQL conditions
/// high_response_time = newrelic.NrqlAlertCondition("high_response_time",
///     policy_id=example.id,
///     name="High Response Time",
///     enabled=True,
///     nrql={
///         "query": "SELECT average(duration) FROM Transaction WHERE appName = 'MyApp'",
///     },
///     critical={
///         "operator": "above",
///         "threshold": 5,
///         "threshold_duration": 300,
///         "threshold_occurrences": "all",
///     },
///     violation_time_limit_seconds=3600)
/// high_error_rate = newrelic.NrqlAlertCondition("high_error_rate",
///     policy_id=example.id,
///     name="High Error Rate",
///     enabled=True,
///     nrql={
///         "query": "SELECT percentage(count(*), WHERE error IS true) FROM Transaction WHERE appName = 'MyApp'",
///     },
///     critical={
///         "operator": "above",
///         "threshold": 5,
///         "threshold_duration": 300,
///         "threshold_occurrences": "all",
///     },
///     violation_time_limit_seconds=3600)
/// # Create alert compound condition combining both
/// critical_service_health = newrelic.AlertCompoundCondition("critical_service_health",
///     policy_id=example.id,
///     name="Critical Service Health",
///     enabled=True,
///     trigger_expression="A AND B",
///     runbook_url="https://example.com/runbooks/critical-health",
///     threshold_duration=120,
///     component_conditions=[
///         {
///             "id": high_response_time.id,
///             "alias": "A",
///         },
///         {
///             "id": high_error_rate.id,
///             "alias": "B",
///         },
///     ],
///     facet_matching_behavior="FACETS_IGNORED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new NewRelic.AlertPolicy("example", new()
///     {
///         Name = "my-policy",
///     });
///
///     // Create component NRQL conditions
///     var highResponseTime = new NewRelic.NrqlAlertCondition("high_response_time", new()
///     {
///         PolicyId = example.Id,
///         Name = "High Response Time",
///         Enabled = true,
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT average(duration) FROM Transaction WHERE appName = 'MyApp'",
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above",
///             Threshold = 5,
///             ThresholdDuration = 300,
///             ThresholdOccurrences = "all",
///         },
///         ViolationTimeLimitSeconds = 3600,
///     });
///
///     var highErrorRate = new NewRelic.NrqlAlertCondition("high_error_rate", new()
///     {
///         PolicyId = example.Id,
///         Name = "High Error Rate",
///         Enabled = true,
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT percentage(count(*), WHERE error IS true) FROM Transaction WHERE appName = 'MyApp'",
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above",
///             Threshold = 5,
///             ThresholdDuration = 300,
///             ThresholdOccurrences = "all",
///         },
///         ViolationTimeLimitSeconds = 3600,
///     });
///
///     // Create alert compound condition combining both
///     var criticalServiceHealth = new NewRelic.AlertCompoundCondition("critical_service_health", new()
///     {
///         PolicyId = example.Id,
///         Name = "Critical Service Health",
///         Enabled = true,
///         TriggerExpression = "A AND B",
///         RunbookUrl = "https://example.com/runbooks/critical-health",
///         ThresholdDuration = 120,
///         ComponentConditions = new[]
///         {
///             new NewRelic.Inputs.AlertCompoundConditionComponentConditionArgs
///             {
///                 Id = highResponseTime.Id,
///                 Alias = "A",
///             },
///             new NewRelic.Inputs.AlertCompoundConditionComponentConditionArgs
///             {
///                 Id = highErrorRate.Id,
///                 Alias = "B",
///             },
///         },
///         FacetMatchingBehavior = "FACETS_IGNORED",
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
/// 		example, err := newrelic.NewAlertPolicy(ctx, "example", &newrelic.AlertPolicyArgs{
/// 			Name: pulumi.String("my-policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create component NRQL conditions
/// 		highResponseTime, err := newrelic.NewNrqlAlertCondition(ctx, "high_response_time", &newrelic.NrqlAlertConditionArgs{
/// 			PolicyId: example.ID(),
/// 			Name:     pulumi.String("High Response Time"),
/// 			Enabled:  pulumi.Bool(true),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT average(duration) FROM Transaction WHERE appName = 'MyApp'"),
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(5),
/// 				ThresholdDuration:    pulumi.Int(300),
/// 				ThresholdOccurrences: pulumi.String("all"),
/// 			},
/// 			ViolationTimeLimitSeconds: pulumi.Int(3600),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		highErrorRate, err := newrelic.NewNrqlAlertCondition(ctx, "high_error_rate", &newrelic.NrqlAlertConditionArgs{
/// 			PolicyId: example.ID(),
/// 			Name:     pulumi.String("High Error Rate"),
/// 			Enabled:  pulumi.Bool(true),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT percentage(count(*), WHERE error IS true) FROM Transaction WHERE appName = 'MyApp'"),
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(5),
/// 				ThresholdDuration:    pulumi.Int(300),
/// 				ThresholdOccurrences: pulumi.String("all"),
/// 			},
/// 			ViolationTimeLimitSeconds: pulumi.Int(3600),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create alert compound condition combining both
/// 		_, err = newrelic.NewAlertCompoundCondition(ctx, "critical_service_health", &newrelic.AlertCompoundConditionArgs{
/// 			PolicyId:          example.ID(),
/// 			Name:              pulumi.String("Critical Service Health"),
/// 			Enabled:           pulumi.Bool(true),
/// 			TriggerExpression: pulumi.String("A AND B"),
/// 			RunbookUrl:        pulumi.String("https://example.com/runbooks/critical-health"),
/// 			ThresholdDuration: pulumi.Int(120),
/// 			ComponentConditions: newrelic.AlertCompoundConditionComponentConditionArray{
/// 				&newrelic.AlertCompoundConditionComponentConditionArgs{
/// 					Id:    highResponseTime.ID(),
/// 					Alias: pulumi.String("A"),
/// 				},
/// 				&newrelic.AlertCompoundConditionComponentConditionArgs{
/// 					Id:    highErrorRate.ID(),
/// 					Alias: pulumi.String("B"),
/// 				},
/// 			},
/// 			FacetMatchingBehavior: pulumi.String("FACETS_IGNORED"),
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
/// import com.pulumi.newrelic.AlertCompoundCondition;
/// import com.pulumi.newrelic.AlertCompoundConditionArgs;
/// import com.pulumi.newrelic.inputs.AlertCompoundConditionComponentConditionArgs;
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
///         var example = new AlertPolicy("example", AlertPolicyArgs.builder()
///             .name("my-policy")
///             .build());
///
///         // Create component NRQL conditions
///         var highResponseTime = new NrqlAlertCondition("highResponseTime", NrqlAlertConditionArgs.builder()
///             .policyId(example.id())
///             .name("High Response Time")
///             .enabled(true)
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT average(duration) FROM Transaction WHERE appName = 'MyApp'")
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above")
///                 .threshold(5.0)
///                 .thresholdDuration(300)
///                 .thresholdOccurrences("all")
///                 .build())
///             .violationTimeLimitSeconds(3600)
///             .build());
///
///         var highErrorRate = new NrqlAlertCondition("highErrorRate", NrqlAlertConditionArgs.builder()
///             .policyId(example.id())
///             .name("High Error Rate")
///             .enabled(true)
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT percentage(count(*), WHERE error IS true) FROM Transaction WHERE appName = 'MyApp'")
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above")
///                 .threshold(5.0)
///                 .thresholdDuration(300)
///                 .thresholdOccurrences("all")
///                 .build())
///             .violationTimeLimitSeconds(3600)
///             .build());
///
///         // Create alert compound condition combining both
///         var criticalServiceHealth = new AlertCompoundCondition("criticalServiceHealth", AlertCompoundConditionArgs.builder()
///             .policyId(example.id())
///             .name("Critical Service Health")
///             .enabled(true)
///             .triggerExpression("A AND B")
///             .runbookUrl("https://example.com/runbooks/critical-health")
///             .thresholdDuration(120)
///             .componentConditions(
///                 AlertCompoundConditionComponentConditionArgs.builder()
///                     .id(highResponseTime.id())
///                     .alias("A")
///                     .build(),
///                 AlertCompoundConditionComponentConditionArgs.builder()
///                     .id(highErrorRate.id())
///                     .alias("B")
///                     .build())
///             .facetMatchingBehavior("FACETS_IGNORED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: newrelic:AlertPolicy
///     properties:
///       name: my-policy
///   # Create component NRQL conditions
///   highResponseTime:
///     type: newrelic:NrqlAlertCondition
///     name: high_response_time
///     properties:
///       policyId: ${example.id}
///       name: High Response Time
///       enabled: true
///       nrql:
///         query: SELECT average(duration) FROM Transaction WHERE appName = 'MyApp'
///       critical:
///         operator: above
///         threshold: 5
///         thresholdDuration: 300
///         thresholdOccurrences: all
///       violationTimeLimitSeconds: 3600
///   highErrorRate:
///     type: newrelic:NrqlAlertCondition
///     name: high_error_rate
///     properties:
///       policyId: ${example.id}
///       name: High Error Rate
///       enabled: true
///       nrql:
///         query: SELECT percentage(count(*), WHERE error IS true) FROM Transaction WHERE appName = 'MyApp'
///       critical:
///         operator: above
///         threshold: 5
///         thresholdDuration: 300
///         thresholdOccurrences: all
///       violationTimeLimitSeconds: 3600
///   # Create alert compound condition combining both
///   criticalServiceHealth:
///     type: newrelic:AlertCompoundCondition
///     name: critical_service_health
///     properties:
///       policyId: ${example.id}
///       name: Critical Service Health
///       enabled: true
///       triggerExpression: A AND B
///       runbookUrl: https://example.com/runbooks/critical-health
///       thresholdDuration: 120
///       componentConditions:
///         - id: ${highResponseTime.id}
///           alias: A
///         - id: ${highErrorRate.id}
///           alias: B
///       facetMatchingBehavior: FACETS_IGNORED
/// ```
///
///
/// ### Complex Condition with Three Components
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const highCpu = new newrelic.NrqlAlertCondition("high_cpu", {
///     policyId: example.id,
///     name: "High CPU",
///     enabled: true,
///     nrql: {
///         query: "SELECT average(cpuPercent) FROM SystemSample WHERE hostname = 'myhost'",
///     },
///     critical: {
///         operator: "above",
///         threshold: 80,
///         thresholdDuration: 300,
///         thresholdOccurrences: "all",
///     },
///     violationTimeLimitSeconds: 3600,
/// });
/// const highMemory = new newrelic.NrqlAlertCondition("high_memory", {
///     policyId: example.id,
///     name: "High Memory",
///     enabled: true,
///     nrql: {
///         query: "SELECT average(memoryUsedPercent) FROM SystemSample WHERE hostname = 'myhost'",
///     },
///     critical: {
///         operator: "above",
///         threshold: 85,
///         thresholdDuration: 300,
///         thresholdOccurrences: "all",
///     },
///     violationTimeLimitSeconds: 3600,
/// });
/// const diskFull = new newrelic.NrqlAlertCondition("disk_full", {
///     policyId: example.id,
///     name: "Disk Full",
///     enabled: true,
///     nrql: {
///         query: "SELECT average(diskUsedPercent) FROM SystemSample WHERE hostname = 'myhost'",
///     },
///     critical: {
///         operator: "above",
///         threshold: 90,
///         thresholdDuration: 300,
///         thresholdOccurrences: "all",
///     },
///     violationTimeLimitSeconds: 3600,
/// });
/// const complex = new newrelic.AlertCompoundCondition("complex", {
///     policyId: example.id,
///     name: "Complex Infrastructure Alert",
///     enabled: true,
///     triggerExpression: "(A AND B) OR C",
///     componentConditions: [
///         {
///             id: highCpu.id,
///             alias: "A",
///         },
///         {
///             id: highMemory.id,
///             alias: "B",
///         },
///         {
///             id: diskFull.id,
///             alias: "C",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// high_cpu = newrelic.NrqlAlertCondition("high_cpu",
///     policy_id=example["id"],
///     name="High CPU",
///     enabled=True,
///     nrql={
///         "query": "SELECT average(cpuPercent) FROM SystemSample WHERE hostname = 'myhost'",
///     },
///     critical={
///         "operator": "above",
///         "threshold": 80,
///         "threshold_duration": 300,
///         "threshold_occurrences": "all",
///     },
///     violation_time_limit_seconds=3600)
/// high_memory = newrelic.NrqlAlertCondition("high_memory",
///     policy_id=example["id"],
///     name="High Memory",
///     enabled=True,
///     nrql={
///         "query": "SELECT average(memoryUsedPercent) FROM SystemSample WHERE hostname = 'myhost'",
///     },
///     critical={
///         "operator": "above",
///         "threshold": 85,
///         "threshold_duration": 300,
///         "threshold_occurrences": "all",
///     },
///     violation_time_limit_seconds=3600)
/// disk_full = newrelic.NrqlAlertCondition("disk_full",
///     policy_id=example["id"],
///     name="Disk Full",
///     enabled=True,
///     nrql={
///         "query": "SELECT average(diskUsedPercent) FROM SystemSample WHERE hostname = 'myhost'",
///     },
///     critical={
///         "operator": "above",
///         "threshold": 90,
///         "threshold_duration": 300,
///         "threshold_occurrences": "all",
///     },
///     violation_time_limit_seconds=3600)
/// complex = newrelic.AlertCompoundCondition("complex",
///     policy_id=example["id"],
///     name="Complex Infrastructure Alert",
///     enabled=True,
///     trigger_expression="(A AND B) OR C",
///     component_conditions=[
///         {
///             "id": high_cpu.id,
///             "alias": "A",
///         },
///         {
///             "id": high_memory.id,
///             "alias": "B",
///         },
///         {
///             "id": disk_full.id,
///             "alias": "C",
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
///     var highCpu = new NewRelic.NrqlAlertCondition("high_cpu", new()
///     {
///         PolicyId = example.Id,
///         Name = "High CPU",
///         Enabled = true,
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT average(cpuPercent) FROM SystemSample WHERE hostname = 'myhost'",
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above",
///             Threshold = 80,
///             ThresholdDuration = 300,
///             ThresholdOccurrences = "all",
///         },
///         ViolationTimeLimitSeconds = 3600,
///     });
///
///     var highMemory = new NewRelic.NrqlAlertCondition("high_memory", new()
///     {
///         PolicyId = example.Id,
///         Name = "High Memory",
///         Enabled = true,
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT average(memoryUsedPercent) FROM SystemSample WHERE hostname = 'myhost'",
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above",
///             Threshold = 85,
///             ThresholdDuration = 300,
///             ThresholdOccurrences = "all",
///         },
///         ViolationTimeLimitSeconds = 3600,
///     });
///
///     var diskFull = new NewRelic.NrqlAlertCondition("disk_full", new()
///     {
///         PolicyId = example.Id,
///         Name = "Disk Full",
///         Enabled = true,
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT average(diskUsedPercent) FROM SystemSample WHERE hostname = 'myhost'",
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above",
///             Threshold = 90,
///             ThresholdDuration = 300,
///             ThresholdOccurrences = "all",
///         },
///         ViolationTimeLimitSeconds = 3600,
///     });
///
///     var complex = new NewRelic.AlertCompoundCondition("complex", new()
///     {
///         PolicyId = example.Id,
///         Name = "Complex Infrastructure Alert",
///         Enabled = true,
///         TriggerExpression = "(A AND B) OR C",
///         ComponentConditions = new[]
///         {
///             new NewRelic.Inputs.AlertCompoundConditionComponentConditionArgs
///             {
///                 Id = highCpu.Id,
///                 Alias = "A",
///             },
///             new NewRelic.Inputs.AlertCompoundConditionComponentConditionArgs
///             {
///                 Id = highMemory.Id,
///                 Alias = "B",
///             },
///             new NewRelic.Inputs.AlertCompoundConditionComponentConditionArgs
///             {
///                 Id = diskFull.Id,
///                 Alias = "C",
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
/// 		highCpu, err := newrelic.NewNrqlAlertCondition(ctx, "high_cpu", &newrelic.NrqlAlertConditionArgs{
/// 			PolicyId: pulumi.Any(example.Id),
/// 			Name:     pulumi.String("High CPU"),
/// 			Enabled:  pulumi.Bool(true),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT average(cpuPercent) FROM SystemSample WHERE hostname = 'myhost'"),
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(80),
/// 				ThresholdDuration:    pulumi.Int(300),
/// 				ThresholdOccurrences: pulumi.String("all"),
/// 			},
/// 			ViolationTimeLimitSeconds: pulumi.Int(3600),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		highMemory, err := newrelic.NewNrqlAlertCondition(ctx, "high_memory", &newrelic.NrqlAlertConditionArgs{
/// 			PolicyId: pulumi.Any(example.Id),
/// 			Name:     pulumi.String("High Memory"),
/// 			Enabled:  pulumi.Bool(true),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT average(memoryUsedPercent) FROM SystemSample WHERE hostname = 'myhost'"),
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(85),
/// 				ThresholdDuration:    pulumi.Int(300),
/// 				ThresholdOccurrences: pulumi.String("all"),
/// 			},
/// 			ViolationTimeLimitSeconds: pulumi.Int(3600),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		diskFull, err := newrelic.NewNrqlAlertCondition(ctx, "disk_full", &newrelic.NrqlAlertConditionArgs{
/// 			PolicyId: pulumi.Any(example.Id),
/// 			Name:     pulumi.String("Disk Full"),
/// 			Enabled:  pulumi.Bool(true),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT average(diskUsedPercent) FROM SystemSample WHERE hostname = 'myhost'"),
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(90),
/// 				ThresholdDuration:    pulumi.Int(300),
/// 				ThresholdOccurrences: pulumi.String("all"),
/// 			},
/// 			ViolationTimeLimitSeconds: pulumi.Int(3600),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewAlertCompoundCondition(ctx, "complex", &newrelic.AlertCompoundConditionArgs{
/// 			PolicyId:          pulumi.Any(example.Id),
/// 			Name:              pulumi.String("Complex Infrastructure Alert"),
/// 			Enabled:           pulumi.Bool(true),
/// 			TriggerExpression: pulumi.String("(A AND B) OR C"),
/// 			ComponentConditions: newrelic.AlertCompoundConditionComponentConditionArray{
/// 				&newrelic.AlertCompoundConditionComponentConditionArgs{
/// 					Id:    highCpu.ID(),
/// 					Alias: pulumi.String("A"),
/// 				},
/// 				&newrelic.AlertCompoundConditionComponentConditionArgs{
/// 					Id:    highMemory.ID(),
/// 					Alias: pulumi.String("B"),
/// 				},
/// 				&newrelic.AlertCompoundConditionComponentConditionArgs{
/// 					Id:    diskFull.ID(),
/// 					Alias: pulumi.String("C"),
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
/// import com.pulumi.newrelic.NrqlAlertCondition;
/// import com.pulumi.newrelic.NrqlAlertConditionArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionNrqlArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionCriticalArgs;
/// import com.pulumi.newrelic.AlertCompoundCondition;
/// import com.pulumi.newrelic.AlertCompoundConditionArgs;
/// import com.pulumi.newrelic.inputs.AlertCompoundConditionComponentConditionArgs;
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
///         var highCpu = new NrqlAlertCondition("highCpu", NrqlAlertConditionArgs.builder()
///             .policyId(example.id())
///             .name("High CPU")
///             .enabled(true)
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT average(cpuPercent) FROM SystemSample WHERE hostname = 'myhost'")
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above")
///                 .threshold(80.0)
///                 .thresholdDuration(300)
///                 .thresholdOccurrences("all")
///                 .build())
///             .violationTimeLimitSeconds(3600)
///             .build());
///
///         var highMemory = new NrqlAlertCondition("highMemory", NrqlAlertConditionArgs.builder()
///             .policyId(example.id())
///             .name("High Memory")
///             .enabled(true)
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT average(memoryUsedPercent) FROM SystemSample WHERE hostname = 'myhost'")
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above")
///                 .threshold(85.0)
///                 .thresholdDuration(300)
///                 .thresholdOccurrences("all")
///                 .build())
///             .violationTimeLimitSeconds(3600)
///             .build());
///
///         var diskFull = new NrqlAlertCondition("diskFull", NrqlAlertConditionArgs.builder()
///             .policyId(example.id())
///             .name("Disk Full")
///             .enabled(true)
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT average(diskUsedPercent) FROM SystemSample WHERE hostname = 'myhost'")
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above")
///                 .threshold(90.0)
///                 .thresholdDuration(300)
///                 .thresholdOccurrences("all")
///                 .build())
///             .violationTimeLimitSeconds(3600)
///             .build());
///
///         var complex = new AlertCompoundCondition("complex", AlertCompoundConditionArgs.builder()
///             .policyId(example.id())
///             .name("Complex Infrastructure Alert")
///             .enabled(true)
///             .triggerExpression("(A AND B) OR C")
///             .componentConditions(
///                 AlertCompoundConditionComponentConditionArgs.builder()
///                     .id(highCpu.id())
///                     .alias("A")
///                     .build(),
///                 AlertCompoundConditionComponentConditionArgs.builder()
///                     .id(highMemory.id())
///                     .alias("B")
///                     .build(),
///                 AlertCompoundConditionComponentConditionArgs.builder()
///                     .id(diskFull.id())
///                     .alias("C")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   highCpu:
///     type: newrelic:NrqlAlertCondition
///     name: high_cpu
///     properties:
///       policyId: ${example.id}
///       name: High CPU
///       enabled: true
///       nrql:
///         query: SELECT average(cpuPercent) FROM SystemSample WHERE hostname = 'myhost'
///       critical:
///         operator: above
///         threshold: 80
///         thresholdDuration: 300
///         thresholdOccurrences: all
///       violationTimeLimitSeconds: 3600
///   highMemory:
///     type: newrelic:NrqlAlertCondition
///     name: high_memory
///     properties:
///       policyId: ${example.id}
///       name: High Memory
///       enabled: true
///       nrql:
///         query: SELECT average(memoryUsedPercent) FROM SystemSample WHERE hostname = 'myhost'
///       critical:
///         operator: above
///         threshold: 85
///         thresholdDuration: 300
///         thresholdOccurrences: all
///       violationTimeLimitSeconds: 3600
///   diskFull:
///     type: newrelic:NrqlAlertCondition
///     name: disk_full
///     properties:
///       policyId: ${example.id}
///       name: Disk Full
///       enabled: true
///       nrql:
///         query: SELECT average(diskUsedPercent) FROM SystemSample WHERE hostname = 'myhost'
///       critical:
///         operator: above
///         threshold: 90
///         thresholdDuration: 300
///         thresholdOccurrences: all
///       violationTimeLimitSeconds: 3600
///   complex:
///     type: newrelic:AlertCompoundCondition
///     properties:
///       policyId: ${example.id}
///       name: Complex Infrastructure Alert
///       enabled: true
///       triggerExpression: (A AND B) OR C
///       componentConditions:
///         - id: ${highCpu.id}
///           alias: A
///         - id: ${highMemory.id}
///           alias: B
///         - id: ${diskFull.id}
///           alias: C
/// ```
///
///
/// ### With Facet Matching
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const highThroughputPerHost = new newrelic.NrqlAlertCondition("high_throughput_per_host", {
///     policyId: example.id,
///     name: "High Throughput Per Host",
///     enabled: true,
///     nrql: {
///         query: "SELECT rate(count(*), 1 minute) FROM Transaction FACET host",
///     },
///     critical: {
///         operator: "above",
///         threshold: 1000,
///         thresholdDuration: 300,
///         thresholdOccurrences: "all",
///     },
///     violationTimeLimitSeconds: 3600,
/// });
/// const highErrorRatePerHost = new newrelic.NrqlAlertCondition("high_error_rate_per_host", {
///     policyId: example.id,
///     name: "High Error Rate Per Host",
///     enabled: true,
///     nrql: {
///         query: "SELECT percentage(count(*), WHERE error IS true) FROM Transaction FACET host",
///     },
///     critical: {
///         operator: "above",
///         threshold: 5,
///         thresholdDuration: 300,
///         thresholdOccurrences: "all",
///     },
///     violationTimeLimitSeconds: 3600,
/// });
/// const withFacets = new newrelic.AlertCompoundCondition("with_facets", {
///     policyId: example.id,
///     name: "Host-Specific Alert",
///     enabled: true,
///     triggerExpression: "A AND B",
///     facetMatchingBehavior: "FACETS_MATCH",
///     componentConditions: [
///         {
///             id: highThroughputPerHost.id,
///             alias: "A",
///         },
///         {
///             id: highErrorRatePerHost.id,
///             alias: "B",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// high_throughput_per_host = newrelic.NrqlAlertCondition("high_throughput_per_host",
///     policy_id=example["id"],
///     name="High Throughput Per Host",
///     enabled=True,
///     nrql={
///         "query": "SELECT rate(count(*), 1 minute) FROM Transaction FACET host",
///     },
///     critical={
///         "operator": "above",
///         "threshold": 1000,
///         "threshold_duration": 300,
///         "threshold_occurrences": "all",
///     },
///     violation_time_limit_seconds=3600)
/// high_error_rate_per_host = newrelic.NrqlAlertCondition("high_error_rate_per_host",
///     policy_id=example["id"],
///     name="High Error Rate Per Host",
///     enabled=True,
///     nrql={
///         "query": "SELECT percentage(count(*), WHERE error IS true) FROM Transaction FACET host",
///     },
///     critical={
///         "operator": "above",
///         "threshold": 5,
///         "threshold_duration": 300,
///         "threshold_occurrences": "all",
///     },
///     violation_time_limit_seconds=3600)
/// with_facets = newrelic.AlertCompoundCondition("with_facets",
///     policy_id=example["id"],
///     name="Host-Specific Alert",
///     enabled=True,
///     trigger_expression="A AND B",
///     facet_matching_behavior="FACETS_MATCH",
///     component_conditions=[
///         {
///             "id": high_throughput_per_host.id,
///             "alias": "A",
///         },
///         {
///             "id": high_error_rate_per_host.id,
///             "alias": "B",
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
///     var highThroughputPerHost = new NewRelic.NrqlAlertCondition("high_throughput_per_host", new()
///     {
///         PolicyId = example.Id,
///         Name = "High Throughput Per Host",
///         Enabled = true,
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT rate(count(*), 1 minute) FROM Transaction FACET host",
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above",
///             Threshold = 1000,
///             ThresholdDuration = 300,
///             ThresholdOccurrences = "all",
///         },
///         ViolationTimeLimitSeconds = 3600,
///     });
///
///     var highErrorRatePerHost = new NewRelic.NrqlAlertCondition("high_error_rate_per_host", new()
///     {
///         PolicyId = example.Id,
///         Name = "High Error Rate Per Host",
///         Enabled = true,
///         Nrql = new NewRelic.Inputs.NrqlAlertConditionNrqlArgs
///         {
///             Query = "SELECT percentage(count(*), WHERE error IS true) FROM Transaction FACET host",
///         },
///         Critical = new NewRelic.Inputs.NrqlAlertConditionCriticalArgs
///         {
///             Operator = "above",
///             Threshold = 5,
///             ThresholdDuration = 300,
///             ThresholdOccurrences = "all",
///         },
///         ViolationTimeLimitSeconds = 3600,
///     });
///
///     var withFacets = new NewRelic.AlertCompoundCondition("with_facets", new()
///     {
///         PolicyId = example.Id,
///         Name = "Host-Specific Alert",
///         Enabled = true,
///         TriggerExpression = "A AND B",
///         FacetMatchingBehavior = "FACETS_MATCH",
///         ComponentConditions = new[]
///         {
///             new NewRelic.Inputs.AlertCompoundConditionComponentConditionArgs
///             {
///                 Id = highThroughputPerHost.Id,
///                 Alias = "A",
///             },
///             new NewRelic.Inputs.AlertCompoundConditionComponentConditionArgs
///             {
///                 Id = highErrorRatePerHost.Id,
///                 Alias = "B",
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
/// 		highThroughputPerHost, err := newrelic.NewNrqlAlertCondition(ctx, "high_throughput_per_host", &newrelic.NrqlAlertConditionArgs{
/// 			PolicyId: pulumi.Any(example.Id),
/// 			Name:     pulumi.String("High Throughput Per Host"),
/// 			Enabled:  pulumi.Bool(true),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT rate(count(*), 1 minute) FROM Transaction FACET host"),
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(1000),
/// 				ThresholdDuration:    pulumi.Int(300),
/// 				ThresholdOccurrences: pulumi.String("all"),
/// 			},
/// 			ViolationTimeLimitSeconds: pulumi.Int(3600),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		highErrorRatePerHost, err := newrelic.NewNrqlAlertCondition(ctx, "high_error_rate_per_host", &newrelic.NrqlAlertConditionArgs{
/// 			PolicyId: pulumi.Any(example.Id),
/// 			Name:     pulumi.String("High Error Rate Per Host"),
/// 			Enabled:  pulumi.Bool(true),
/// 			Nrql: &newrelic.NrqlAlertConditionNrqlArgs{
/// 				Query: pulumi.String("SELECT percentage(count(*), WHERE error IS true) FROM Transaction FACET host"),
/// 			},
/// 			Critical: &newrelic.NrqlAlertConditionCriticalArgs{
/// 				Operator:             pulumi.String("above"),
/// 				Threshold:            pulumi.Float64(5),
/// 				ThresholdDuration:    pulumi.Int(300),
/// 				ThresholdOccurrences: pulumi.String("all"),
/// 			},
/// 			ViolationTimeLimitSeconds: pulumi.Int(3600),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewAlertCompoundCondition(ctx, "with_facets", &newrelic.AlertCompoundConditionArgs{
/// 			PolicyId:              pulumi.Any(example.Id),
/// 			Name:                  pulumi.String("Host-Specific Alert"),
/// 			Enabled:               pulumi.Bool(true),
/// 			TriggerExpression:     pulumi.String("A AND B"),
/// 			FacetMatchingBehavior: pulumi.String("FACETS_MATCH"),
/// 			ComponentConditions: newrelic.AlertCompoundConditionComponentConditionArray{
/// 				&newrelic.AlertCompoundConditionComponentConditionArgs{
/// 					Id:    highThroughputPerHost.ID(),
/// 					Alias: pulumi.String("A"),
/// 				},
/// 				&newrelic.AlertCompoundConditionComponentConditionArgs{
/// 					Id:    highErrorRatePerHost.ID(),
/// 					Alias: pulumi.String("B"),
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
/// import com.pulumi.newrelic.NrqlAlertCondition;
/// import com.pulumi.newrelic.NrqlAlertConditionArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionNrqlArgs;
/// import com.pulumi.newrelic.inputs.NrqlAlertConditionCriticalArgs;
/// import com.pulumi.newrelic.AlertCompoundCondition;
/// import com.pulumi.newrelic.AlertCompoundConditionArgs;
/// import com.pulumi.newrelic.inputs.AlertCompoundConditionComponentConditionArgs;
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
///         var highThroughputPerHost = new NrqlAlertCondition("highThroughputPerHost", NrqlAlertConditionArgs.builder()
///             .policyId(example.id())
///             .name("High Throughput Per Host")
///             .enabled(true)
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT rate(count(*), 1 minute) FROM Transaction FACET host")
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above")
///                 .threshold(1000.0)
///                 .thresholdDuration(300)
///                 .thresholdOccurrences("all")
///                 .build())
///             .violationTimeLimitSeconds(3600)
///             .build());
///
///         var highErrorRatePerHost = new NrqlAlertCondition("highErrorRatePerHost", NrqlAlertConditionArgs.builder()
///             .policyId(example.id())
///             .name("High Error Rate Per Host")
///             .enabled(true)
///             .nrql(NrqlAlertConditionNrqlArgs.builder()
///                 .query("SELECT percentage(count(*), WHERE error IS true) FROM Transaction FACET host")
///                 .build())
///             .critical(NrqlAlertConditionCriticalArgs.builder()
///                 .operator("above")
///                 .threshold(5.0)
///                 .thresholdDuration(300)
///                 .thresholdOccurrences("all")
///                 .build())
///             .violationTimeLimitSeconds(3600)
///             .build());
///
///         var withFacets = new AlertCompoundCondition("withFacets", AlertCompoundConditionArgs.builder()
///             .policyId(example.id())
///             .name("Host-Specific Alert")
///             .enabled(true)
///             .triggerExpression("A AND B")
///             .facetMatchingBehavior("FACETS_MATCH")
///             .componentConditions(
///                 AlertCompoundConditionComponentConditionArgs.builder()
///                     .id(highThroughputPerHost.id())
///                     .alias("A")
///                     .build(),
///                 AlertCompoundConditionComponentConditionArgs.builder()
///                     .id(highErrorRatePerHost.id())
///                     .alias("B")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   highThroughputPerHost:
///     type: newrelic:NrqlAlertCondition
///     name: high_throughput_per_host
///     properties:
///       policyId: ${example.id}
///       name: High Throughput Per Host
///       enabled: true
///       nrql:
///         query: SELECT rate(count(*), 1 minute) FROM Transaction FACET host
///       critical:
///         operator: above
///         threshold: 1000
///         thresholdDuration: 300
///         thresholdOccurrences: all
///       violationTimeLimitSeconds: 3600
///   highErrorRatePerHost:
///     type: newrelic:NrqlAlertCondition
///     name: high_error_rate_per_host
///     properties:
///       policyId: ${example.id}
///       name: High Error Rate Per Host
///       enabled: true
///       nrql:
///         query: SELECT percentage(count(*), WHERE error IS true) FROM Transaction FACET host
///       critical:
///         operator: above
///         threshold: 5
///         thresholdDuration: 300
///         thresholdOccurrences: all
///       violationTimeLimitSeconds: 3600
///   withFacets:
///     type: newrelic:AlertCompoundCondition
///     name: with_facets
///     properties:
///       policyId: ${example.id}
///       name: Host-Specific Alert
///       enabled: true
///       triggerExpression: A AND B
///       facetMatchingBehavior: FACETS_MATCH
///       componentConditions:
///         - id: ${highThroughputPerHost.id}
///           alias: A
///         - id: ${highErrorRatePerHost.id}
///           alias: B
/// ```
///
///
/// ## Additional Information
///
/// ### Understanding Trigger Expressions
///
/// Trigger expressions define the logical conditions under which your alert compound condition will activate. Valid operators are:
///
/// - **AND** - Both conditions must be true
/// - **OR** - Either condition must be true
/// - **NOT** - Negates a condition
/// - **Parentheses** - Group conditions for complex logic
///
/// Examples:
///
/// - `"A AND B"` - Activate when both A and B are in violation
/// - `"A OR B"` - Activate when either A or B is in violation
/// - `"A AND NOT B"` - Activate when A is in violation but B is not
/// - `"(A AND B) OR C"` - Activate when both A and B are in violation, OR when C is in violation
/// - `"A AND (B OR C) AND NOT D"` - Activate when A is in violation AND either B or C is in violation AND D is not in violation
///
/// ### Facet Matching Behavior
///
/// When your component NRQL conditions use FACET clauses:
///
/// - **FACETS_IGNORED** (Default) - Facets are not taken into consideration when determining when the compound alert condition activates. If component conditions have violations (on any facet), the compound alert condition will activate based on the trigger expression.
/// - **FACETS_MATCH** - The compound alert condition will activate only when shared facets have matching values. For example, if condition A fires for `host="server-1"` and condition B fires for `host="server-2"`, the compound alert condition will NOT activate because the facet values don't match.
///
/// ### Threshold Duration
///
/// The `threshold_duration` parameter controls how long the trigger expression must remain true before the compound alert condition will activate.
///
/// ## Import
///
/// Compound alert conditions can be imported using the condition ID, e.g.
///
/// ```bash
/// $ terraform import newrelic_alert_compound_condition.main 789012
/// ```
class AlertCompoundCondition extends pulumi.CustomResource {
  /// The New Relic account ID for managing your compound alert conditions. Defaults to the account ID set in your environment variable `NEW_RELIC_ACCOUNT_ID`.
  late final pulumi.Output<String> accountId;
  /// The list of conditions to be combined. Each component condition must be enabled. Must include at least 2. See Component Conditions below for details.
  late final pulumi.Output<List<AlertCompoundConditionComponentCondition>> componentConditions;
  /// Whether or not the compound alert condition is enabled. Defaults to `true`.
  late final pulumi.Output<bool> enabled;
  /// How the compound condition will take into account the component conditions' facets during evaluation. Valid values are:
  /// - `FACETS_IGNORED` - (Default) Facets are not taken into consideration when determining when the compound alert condition activates
  /// - `FACETS_MATCH` - The compound alert condition will activate only when shared facets have matching values
  late final pulumi.Output<String> facetMatchingBehavior;
  /// The title of the compound alert condition.
  late final pulumi.Output<String> name;
  /// The ID of the policy where this alert compound condition should be used.
  late final pulumi.Output<String> policyId;
  /// Runbook URL to display in notifications.
  late final pulumi.Output<String?> runbookUrl;
  /// The duration, in seconds, that the trigger expression must be true before the compound alert condition will activate. Between 30-86400 seconds.
  late final pulumi.Output<int> thresholdDuration;
  /// Expression that defines how component condition evaluations are combined. Valid operators are 'AND', 'OR', 'NOT'. For more complex expressions, use parentheses. Use the aliases from `component_conditions` to build expressions like `"A AND B"`, `"A OR B"`, `"(A AND B) OR C"`, or `"A AND (B OR C) AND NOT (D AND E)"`.
  late final pulumi.Output<String> triggerExpression;

  /// Creates a new [AlertCompoundCondition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertCompoundCondition]. {@macro pulumi_index_alert_compound_condition_alert_compound_condition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertCompoundCondition(
    String name, {
    AlertCompoundConditionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/alertCompoundCondition:AlertCompoundCondition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.componentConditions = registerOutput<List<AlertCompoundConditionComponentCondition>>('componentConditions');
    this.enabled = registerOutput<bool>('enabled');
    this.facetMatchingBehavior = registerOutput<String>('facetMatchingBehavior');
    this.name = registerOutput<String>('name');
    this.policyId = registerOutput<String>('policyId');
    this.runbookUrl = registerOutput<String?>('runbookUrl');
    this.thresholdDuration = registerOutput<int>('thresholdDuration');
    this.triggerExpression = registerOutput<String>('triggerExpression');
  }

  /// Gets an existing [AlertCompoundCondition] resource's state with the given [name] and [id].
  static AlertCompoundCondition get(
    String name,
    pulumi.Input<String> id, {
    AlertCompoundConditionState? state,
  }) {
    return AlertCompoundCondition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertCompoundCondition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/alertCompoundCondition:AlertCompoundCondition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.componentConditions = registerOutput<List<AlertCompoundConditionComponentCondition>>('componentConditions');
    this.enabled = registerOutput<bool>('enabled');
    this.facetMatchingBehavior = registerOutput<String>('facetMatchingBehavior');
    this.name = registerOutput<String>('name');
    this.policyId = registerOutput<String>('policyId');
    this.runbookUrl = registerOutput<String?>('runbookUrl');
    this.thresholdDuration = registerOutput<int>('thresholdDuration');
    this.triggerExpression = registerOutput<String>('triggerExpression');
  }
}
