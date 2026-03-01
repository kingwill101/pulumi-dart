import 'package:pulumi/pulumi.dart' as pulumi;
import 'infra_alert_condition_args.dart';
import 'infra_alert_condition_critical.dart';
import 'infra_alert_condition_state.dart';
import 'infra_alert_condition_warning.dart';

/// Use this resource to create and manage Infrastructure alert conditions in New Relic.
///
/// > **WARNING:** The `newrelic.InfraAlertCondition` resource is deprecated and will be removed in the next major release. The resource newrelic.NrqlAlertCondition would be a preferred alternative to configure alert conditions - in most cases, feature parity can be achieved with a NRQL query. For more details and examples on moving away from infra alert conditions to the NRQL based alternative, please check out these examples.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertPolicy("foo", {name: "foo"});
/// const highDiskUsage = new newrelic.InfraAlertCondition("high_disk_usage", {
///     policyId: foo.id,
///     name: "High disk usage",
///     description: "Warning if disk usage goes above 80% and critical alert if goes above 90%",
///     type: "infra_metric",
///     event: "StorageSample",
///     select: "diskUsedPercent",
///     comparison: "above",
///     where: "(hostname LIKE '%frontend%')",
///     critical: {
///         duration: 25,
///         value: 90,
///         timeFunction: "all",
///     },
///     warning: {
///         duration: 10,
///         value: 80,
///         timeFunction: "all",
///     },
/// });
/// const highDbConnCount = new newrelic.InfraAlertCondition("high_db_conn_count", {
///     policyId: foo.id,
///     name: "High database connection count",
///     description: "Critical alert when the number of database connections goes above 90",
///     type: "infra_metric",
///     event: "DatastoreSample",
///     select: "provider.databaseConnections.Average",
///     comparison: "above",
///     where: "(hostname LIKE '%db%')",
///     integrationProvider: "RdsDbInstance",
///     critical: {
///         duration: 25,
///         value: 90,
///         timeFunction: "all",
///     },
/// });
/// const processNotRunning = new newrelic.InfraAlertCondition("process_not_running", {
///     policyId: foo.id,
///     name: "Process not running (/usr/bin/ruby)",
///     description: "Critical alert when ruby isn't running",
///     type: "infra_process_running",
///     comparison: "equal",
///     where: "hostname = 'web01'",
///     processWhere: "commandName = '/usr/bin/ruby'",
///     critical: {
///         duration: 5,
///         value: 0,
///     },
/// });
/// const hostNotReporting = new newrelic.InfraAlertCondition("host_not_reporting", {
///     policyId: foo.id,
///     name: "Host not reporting",
///     description: "Critical alert when the host is not reporting",
///     type: "infra_host_not_reporting",
///     where: "(hostname LIKE '%frontend%')",
///     critical: {
///         duration: 5,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AlertPolicy("foo", name="foo")
/// high_disk_usage = newrelic.InfraAlertCondition("high_disk_usage",
///     policy_id=foo.id,
///     name="High disk usage",
///     description="Warning if disk usage goes above 80% and critical alert if goes above 90%",
///     type="infra_metric",
///     event="StorageSample",
///     select="diskUsedPercent",
///     comparison="above",
///     where="(hostname LIKE '%frontend%')",
///     critical={
///         "duration": 25,
///         "value": 90,
///         "time_function": "all",
///     },
///     warning={
///         "duration": 10,
///         "value": 80,
///         "time_function": "all",
///     })
/// high_db_conn_count = newrelic.InfraAlertCondition("high_db_conn_count",
///     policy_id=foo.id,
///     name="High database connection count",
///     description="Critical alert when the number of database connections goes above 90",
///     type="infra_metric",
///     event="DatastoreSample",
///     select="provider.databaseConnections.Average",
///     comparison="above",
///     where="(hostname LIKE '%db%')",
///     integration_provider="RdsDbInstance",
///     critical={
///         "duration": 25,
///         "value": 90,
///         "time_function": "all",
///     })
/// process_not_running = newrelic.InfraAlertCondition("process_not_running",
///     policy_id=foo.id,
///     name="Process not running (/usr/bin/ruby)",
///     description="Critical alert when ruby isn't running",
///     type="infra_process_running",
///     comparison="equal",
///     where="hostname = 'web01'",
///     process_where="commandName = '/usr/bin/ruby'",
///     critical={
///         "duration": 5,
///         "value": 0,
///     })
/// host_not_reporting = newrelic.InfraAlertCondition("host_not_reporting",
///     policy_id=foo.id,
///     name="Host not reporting",
///     description="Critical alert when the host is not reporting",
///     type="infra_host_not_reporting",
///     where="(hostname LIKE '%frontend%')",
///     critical={
///         "duration": 5,
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
///     var highDiskUsage = new NewRelic.InfraAlertCondition("high_disk_usage", new()
///     {
///         PolicyId = foo.Id,
///         Name = "High disk usage",
///         Description = "Warning if disk usage goes above 80% and critical alert if goes above 90%",
///         Type = "infra_metric",
///         Event = "StorageSample",
///         Select = "diskUsedPercent",
///         Comparison = "above",
///         Where = "(hostname LIKE '%frontend%')",
///         Critical = new NewRelic.Inputs.InfraAlertConditionCriticalArgs
///         {
///             Duration = 25,
///             Value = 90,
///             TimeFunction = "all",
///         },
///         Warning = new NewRelic.Inputs.InfraAlertConditionWarningArgs
///         {
///             Duration = 10,
///             Value = 80,
///             TimeFunction = "all",
///         },
///     });
///
///     var highDbConnCount = new NewRelic.InfraAlertCondition("high_db_conn_count", new()
///     {
///         PolicyId = foo.Id,
///         Name = "High database connection count",
///         Description = "Critical alert when the number of database connections goes above 90",
///         Type = "infra_metric",
///         Event = "DatastoreSample",
///         Select = "provider.databaseConnections.Average",
///         Comparison = "above",
///         Where = "(hostname LIKE '%db%')",
///         IntegrationProvider = "RdsDbInstance",
///         Critical = new NewRelic.Inputs.InfraAlertConditionCriticalArgs
///         {
///             Duration = 25,
///             Value = 90,
///             TimeFunction = "all",
///         },
///     });
///
///     var processNotRunning = new NewRelic.InfraAlertCondition("process_not_running", new()
///     {
///         PolicyId = foo.Id,
///         Name = "Process not running (/usr/bin/ruby)",
///         Description = "Critical alert when ruby isn't running",
///         Type = "infra_process_running",
///         Comparison = "equal",
///         Where = "hostname = 'web01'",
///         ProcessWhere = "commandName = '/usr/bin/ruby'",
///         Critical = new NewRelic.Inputs.InfraAlertConditionCriticalArgs
///         {
///             Duration = 5,
///             Value = 0,
///         },
///     });
///
///     var hostNotReporting = new NewRelic.InfraAlertCondition("host_not_reporting", new()
///     {
///         PolicyId = foo.Id,
///         Name = "Host not reporting",
///         Description = "Critical alert when the host is not reporting",
///         Type = "infra_host_not_reporting",
///         Where = "(hostname LIKE '%frontend%')",
///         Critical = new NewRelic.Inputs.InfraAlertConditionCriticalArgs
///         {
///             Duration = 5,
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
/// 		_, err = newrelic.NewInfraAlertCondition(ctx, "high_disk_usage", &newrelic.InfraAlertConditionArgs{
/// 			PolicyId:    foo.ID(),
/// 			Name:        pulumi.String("High disk usage"),
/// 			Description: pulumi.String("Warning if disk usage goes above 80% and critical alert if goes above 90%"),
/// 			Type:        pulumi.String("infra_metric"),
/// 			Event:       pulumi.String("StorageSample"),
/// 			Select:      pulumi.String("diskUsedPercent"),
/// 			Comparison:  pulumi.String("above"),
/// 			Where:       pulumi.String("(hostname LIKE '%frontend%')"),
/// 			Critical: &newrelic.InfraAlertConditionCriticalArgs{
/// 				Duration:     pulumi.Int(25),
/// 				Value:        pulumi.Float64(90),
/// 				TimeFunction: pulumi.String("all"),
/// 			},
/// 			Warning: &newrelic.InfraAlertConditionWarningArgs{
/// 				Duration:     pulumi.Int(10),
/// 				Value:        pulumi.Float64(80),
/// 				TimeFunction: pulumi.String("all"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewInfraAlertCondition(ctx, "high_db_conn_count", &newrelic.InfraAlertConditionArgs{
/// 			PolicyId:            foo.ID(),
/// 			Name:                pulumi.String("High database connection count"),
/// 			Description:         pulumi.String("Critical alert when the number of database connections goes above 90"),
/// 			Type:                pulumi.String("infra_metric"),
/// 			Event:               pulumi.String("DatastoreSample"),
/// 			Select:              pulumi.String("provider.databaseConnections.Average"),
/// 			Comparison:          pulumi.String("above"),
/// 			Where:               pulumi.String("(hostname LIKE '%db%')"),
/// 			IntegrationProvider: pulumi.String("RdsDbInstance"),
/// 			Critical: &newrelic.InfraAlertConditionCriticalArgs{
/// 				Duration:     pulumi.Int(25),
/// 				Value:        pulumi.Float64(90),
/// 				TimeFunction: pulumi.String("all"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewInfraAlertCondition(ctx, "process_not_running", &newrelic.InfraAlertConditionArgs{
/// 			PolicyId:     foo.ID(),
/// 			Name:         pulumi.String("Process not running (/usr/bin/ruby)"),
/// 			Description:  pulumi.String("Critical alert when ruby isn't running"),
/// 			Type:         pulumi.String("infra_process_running"),
/// 			Comparison:   pulumi.String("equal"),
/// 			Where:        pulumi.String("hostname = 'web01'"),
/// 			ProcessWhere: pulumi.String("commandName = '/usr/bin/ruby'"),
/// 			Critical: &newrelic.InfraAlertConditionCriticalArgs{
/// 				Duration: pulumi.Int(5),
/// 				Value:    pulumi.Float64(0),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewInfraAlertCondition(ctx, "host_not_reporting", &newrelic.InfraAlertConditionArgs{
/// 			PolicyId:    foo.ID(),
/// 			Name:        pulumi.String("Host not reporting"),
/// 			Description: pulumi.String("Critical alert when the host is not reporting"),
/// 			Type:        pulumi.String("infra_host_not_reporting"),
/// 			Where:       pulumi.String("(hostname LIKE '%frontend%')"),
/// 			Critical: &newrelic.InfraAlertConditionCriticalArgs{
/// 				Duration: pulumi.Int(5),
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
/// import com.pulumi.newrelic.InfraAlertCondition;
/// import com.pulumi.newrelic.InfraAlertConditionArgs;
/// import com.pulumi.newrelic.inputs.InfraAlertConditionCriticalArgs;
/// import com.pulumi.newrelic.inputs.InfraAlertConditionWarningArgs;
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
///         var highDiskUsage = new InfraAlertCondition("highDiskUsage", InfraAlertConditionArgs.builder()
///             .policyId(foo.id())
///             .name("High disk usage")
///             .description("Warning if disk usage goes above 80% and critical alert if goes above 90%")
///             .type("infra_metric")
///             .event("StorageSample")
///             .select("diskUsedPercent")
///             .comparison("above")
///             .where("(hostname LIKE '%frontend%')")
///             .critical(InfraAlertConditionCriticalArgs.builder()
///                 .duration(25)
///                 .value(90.0)
///                 .timeFunction("all")
///                 .build())
///             .warning(InfraAlertConditionWarningArgs.builder()
///                 .duration(10)
///                 .value(80.0)
///                 .timeFunction("all")
///                 .build())
///             .build());
///
///         var highDbConnCount = new InfraAlertCondition("highDbConnCount", InfraAlertConditionArgs.builder()
///             .policyId(foo.id())
///             .name("High database connection count")
///             .description("Critical alert when the number of database connections goes above 90")
///             .type("infra_metric")
///             .event("DatastoreSample")
///             .select("provider.databaseConnections.Average")
///             .comparison("above")
///             .where("(hostname LIKE '%db%')")
///             .integrationProvider("RdsDbInstance")
///             .critical(InfraAlertConditionCriticalArgs.builder()
///                 .duration(25)
///                 .value(90.0)
///                 .timeFunction("all")
///                 .build())
///             .build());
///
///         var processNotRunning = new InfraAlertCondition("processNotRunning", InfraAlertConditionArgs.builder()
///             .policyId(foo.id())
///             .name("Process not running (/usr/bin/ruby)")
///             .description("Critical alert when ruby isn't running")
///             .type("infra_process_running")
///             .comparison("equal")
///             .where("hostname = 'web01'")
///             .processWhere("commandName = '/usr/bin/ruby'")
///             .critical(InfraAlertConditionCriticalArgs.builder()
///                 .duration(5)
///                 .value(0.0)
///                 .build())
///             .build());
///
///         var hostNotReporting = new InfraAlertCondition("hostNotReporting", InfraAlertConditionArgs.builder()
///             .policyId(foo.id())
///             .name("Host not reporting")
///             .description("Critical alert when the host is not reporting")
///             .type("infra_host_not_reporting")
///             .where("(hostname LIKE '%frontend%')")
///             .critical(InfraAlertConditionCriticalArgs.builder()
///                 .duration(5)
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
///   highDiskUsage:
///     type: newrelic:InfraAlertCondition
///     name: high_disk_usage
///     properties:
///       policyId: ${foo.id}
///       name: High disk usage
///       description: Warning if disk usage goes above 80% and critical alert if goes above 90%
///       type: infra_metric
///       event: StorageSample
///       select: diskUsedPercent
///       comparison: above
///       where: (hostname LIKE '%frontend%')
///       critical:
///         duration: 25
///         value: 90
///         timeFunction: all
///       warning:
///         duration: 10
///         value: 80
///         timeFunction: all
///   highDbConnCount:
///     type: newrelic:InfraAlertCondition
///     name: high_db_conn_count
///     properties:
///       policyId: ${foo.id}
///       name: High database connection count
///       description: Critical alert when the number of database connections goes above 90
///       type: infra_metric
///       event: DatastoreSample
///       select: provider.databaseConnections.Average
///       comparison: above
///       where: (hostname LIKE '%db%')
///       integrationProvider: RdsDbInstance
///       critical:
///         duration: 25
///         value: 90
///         timeFunction: all
///   processNotRunning:
///     type: newrelic:InfraAlertCondition
///     name: process_not_running
///     properties:
///       policyId: ${foo.id}
///       name: Process not running (/usr/bin/ruby)
///       description: Critical alert when ruby isn't running
///       type: infra_process_running
///       comparison: equal
///       where: hostname = 'web01'
///       processWhere: commandName = '/usr/bin/ruby'
///       critical:
///         duration: 5
///         value: 0
///   hostNotReporting:
///     type: newrelic:InfraAlertCondition
///     name: host_not_reporting
///     properties:
///       policyId: ${foo.id}
///       name: Host not reporting
///       description: Critical alert when the host is not reporting
///       type: infra_host_not_reporting
///       where: (hostname LIKE '%frontend%')
///       critical:
///         duration: 5
/// ```
///
///
/// ## Thresholds
///
/// The `critical` and `warning` threshold mapping supports the following arguments:
///
/// * `duration` - (Required) Identifies the number of minutes the threshold must be passed or met for the alert to trigger. Threshold durations must be between 1 and 60 minutes (inclusive).
/// * `value` - (Optional) Threshold value, computed against the `comparison` operator. Supported by `infra_metric` and `infra_process_running` alert condition types.
/// * `time_function` - (Optional) Indicates if the condition needs to be sustained or to just break the threshold once; `all` or `any`. Supported by the `infra_metric` alert condition type.
///
///
/// ## Tags
///
/// Manage infra alert condition tags with `newrelic.EntityTags`. For up-to-date documentation about the tagging resource, please check newrelic.EntityTags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertPolicy("foo", {name: "foo policy"});
/// const fooInfraAlertCondition = new newrelic.InfraAlertCondition("foo", {
///     policyId: foo.id,
///     name: "foo infra condition",
///     description: "Warning if disk usage goes above 80% and critical alert if goes above 90%",
///     type: "infra_metric",
///     event: "StorageSample",
///     select: "diskUsedPercent",
///     comparison: "above",
///     where: "(hostname LIKE '%frontend%')",
///     critical: {
///         duration: 25,
///         value: 90,
///         timeFunction: "all",
///     },
///     warning: {
///         duration: 10,
///         value: 80,
///         timeFunction: "all",
///     },
/// });
/// const myConditionEntityTags = new newrelic.EntityTags("my_condition_entity_tags", {
///     guid: fooInfraAlertCondition.entityGuid,
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
/// foo = newrelic.AlertPolicy("foo", name="foo policy")
/// foo_infra_alert_condition = newrelic.InfraAlertCondition("foo",
///     policy_id=foo.id,
///     name="foo infra condition",
///     description="Warning if disk usage goes above 80% and critical alert if goes above 90%",
///     type="infra_metric",
///     event="StorageSample",
///     select="diskUsedPercent",
///     comparison="above",
///     where="(hostname LIKE '%frontend%')",
///     critical={
///         "duration": 25,
///         "value": 90,
///         "time_function": "all",
///     },
///     warning={
///         "duration": 10,
///         "value": 80,
///         "time_function": "all",
///     })
/// my_condition_entity_tags = newrelic.EntityTags("my_condition_entity_tags",
///     guid=foo_infra_alert_condition.entity_guid,
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
///         Name = "foo policy",
///     });
///
///     var fooInfraAlertCondition = new NewRelic.InfraAlertCondition("foo", new()
///     {
///         PolicyId = foo.Id,
///         Name = "foo infra condition",
///         Description = "Warning if disk usage goes above 80% and critical alert if goes above 90%",
///         Type = "infra_metric",
///         Event = "StorageSample",
///         Select = "diskUsedPercent",
///         Comparison = "above",
///         Where = "(hostname LIKE '%frontend%')",
///         Critical = new NewRelic.Inputs.InfraAlertConditionCriticalArgs
///         {
///             Duration = 25,
///             Value = 90,
///             TimeFunction = "all",
///         },
///         Warning = new NewRelic.Inputs.InfraAlertConditionWarningArgs
///         {
///             Duration = 10,
///             Value = 80,
///             TimeFunction = "all",
///         },
///     });
///
///     var myConditionEntityTags = new NewRelic.EntityTags("my_condition_entity_tags", new()
///     {
///         Guid = fooInfraAlertCondition.EntityGuid,
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
/// 			Name: pulumi.String("foo policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooInfraAlertCondition, err := newrelic.NewInfraAlertCondition(ctx, "foo", &newrelic.InfraAlertConditionArgs{
/// 			PolicyId:    foo.ID(),
/// 			Name:        pulumi.String("foo infra condition"),
/// 			Description: pulumi.String("Warning if disk usage goes above 80% and critical alert if goes above 90%"),
/// 			Type:        pulumi.String("infra_metric"),
/// 			Event:       pulumi.String("StorageSample"),
/// 			Select:      pulumi.String("diskUsedPercent"),
/// 			Comparison:  pulumi.String("above"),
/// 			Where:       pulumi.String("(hostname LIKE '%frontend%')"),
/// 			Critical: &newrelic.InfraAlertConditionCriticalArgs{
/// 				Duration:     pulumi.Int(25),
/// 				Value:        pulumi.Float64(90),
/// 				TimeFunction: pulumi.String("all"),
/// 			},
/// 			Warning: &newrelic.InfraAlertConditionWarningArgs{
/// 				Duration:     pulumi.Int(10),
/// 				Value:        pulumi.Float64(80),
/// 				TimeFunction: pulumi.String("all"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewEntityTags(ctx, "my_condition_entity_tags", &newrelic.EntityTagsArgs{
/// 			Guid: fooInfraAlertCondition.EntityGuid,
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
/// import com.pulumi.newrelic.InfraAlertCondition;
/// import com.pulumi.newrelic.InfraAlertConditionArgs;
/// import com.pulumi.newrelic.inputs.InfraAlertConditionCriticalArgs;
/// import com.pulumi.newrelic.inputs.InfraAlertConditionWarningArgs;
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
///             .name("foo policy")
///             .build());
///
///         var fooInfraAlertCondition = new InfraAlertCondition("fooInfraAlertCondition", InfraAlertConditionArgs.builder()
///             .policyId(foo.id())
///             .name("foo infra condition")
///             .description("Warning if disk usage goes above 80% and critical alert if goes above 90%")
///             .type("infra_metric")
///             .event("StorageSample")
///             .select("diskUsedPercent")
///             .comparison("above")
///             .where("(hostname LIKE '%frontend%')")
///             .critical(InfraAlertConditionCriticalArgs.builder()
///                 .duration(25)
///                 .value(90.0)
///                 .timeFunction("all")
///                 .build())
///             .warning(InfraAlertConditionWarningArgs.builder()
///                 .duration(10)
///                 .value(80.0)
///                 .timeFunction("all")
///                 .build())
///             .build());
///
///         var myConditionEntityTags = new EntityTags("myConditionEntityTags", EntityTagsArgs.builder()
///             .guid(fooInfraAlertCondition.entityGuid())
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
///       name: foo policy
///   fooInfraAlertCondition:
///     type: newrelic:InfraAlertCondition
///     name: foo
///     properties:
///       policyId: ${foo.id}
///       name: foo infra condition
///       description: Warning if disk usage goes above 80% and critical alert if goes above 90%
///       type: infra_metric
///       event: StorageSample
///       select: diskUsedPercent
///       comparison: above
///       where: (hostname LIKE '%frontend%')
///       critical:
///         duration: 25
///         value: 90
///         timeFunction: all
///       warning:
///         duration: 10
///         value: 80
///         timeFunction: all
///   myConditionEntityTags:
///     type: newrelic:EntityTags
///     name: my_condition_entity_tags
///     properties:
///       guid: ${fooInfraAlertCondition.entityGuid}
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
/// ## Import
///
/// Infrastructure alert conditions can be imported using a composite ID of `<policy_id>:<condition_id>`, e.g.
///
/// ```sh
/// $ pulumi import newrelic:index/infraAlertCondition:InfraAlertCondition main 12345:67890
/// ```
class InfraAlertCondition extends pulumi.CustomResource {
  /// The operator used to evaluate the threshold value.  Valid values are `above`, `below`, and `equal`.  Supported by the `infra_metric` and `infra_process_running` condition types.
  late final pulumi.Output<String?> comparison;
  /// The timestamp the alert condition was created.
  late final pulumi.Output<int> createdAt;
  /// Identifies the threshold parameters for opening a critical alert incident. See Thresholds below for details.
  late final pulumi.Output<InfraAlertConditionCritical?> critical;
  /// The description of the Infrastructure alert condition.
  late final pulumi.Output<String?> description;
  /// Whether the condition is turned on or off.  Valid values are `true` and `false`.  Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The unique entity identifier of the condition in New Relic.
  late final pulumi.Output<String> entityGuid;
  /// The metric event; for example, `SystemSample` or `StorageSample`.  Supported by the `infra_metric` condition type.
  late final pulumi.Output<String> event;
  /// For alerts on integrations, use this instead of `event`.  Supported by the `infra_metric` condition type.
  late final pulumi.Output<String?> integrationProvider;
  /// The Infrastructure alert condition's name.
  late final pulumi.Output<String> name;
  /// The ID of the alert policy where this condition should be used.
  late final pulumi.Output<String> policyId;
  /// Any filters applied to processes; for example: `commandName = 'java'`.  Required by the `infra_process_running` condition type.
  late final pulumi.Output<String?> processWhere;
  /// Runbook URL to display in notifications.
  late final pulumi.Output<String?> runbookUrl;
  /// The attribute name to identify the metric being targeted; for example, `cpuPercent`, `diskFreePercent`, or `memoryResidentSizeBytes`.  The underlying API will automatically populate this value for Infrastructure integrations (for example `diskFreePercent`), so make sure to explicitly include this value to avoid diff issues.  Supported by the `infra_metric` condition type.
  late final pulumi.Output<String?> select;
  /// The type of Infrastructure alert condition.  Valid values are  `infra_process_running`, `infra_metric`, and `infra_host_not_reporting`.
  late final pulumi.Output<String> type;
  /// The timestamp the alert condition was last updated.
  late final pulumi.Output<int> updatedAt;
  /// Determines how much time will pass (in hours) before an incident is automatically closed. Valid values are `1 2 4 8 12 24 48 72`. Defaults to 24. If `0` is provided, default of `24` is used and will have configuration drift during the apply phase until a valid value is provided.
  ///
  /// ```
  /// Warning: This resource will use the account ID linked to your API key. At the moment it is not possible to dynamically set the account ID.
  /// ```
  late final pulumi.Output<int?> violationCloseTimer;
  /// Identifies the threshold parameters for opening a warning alert incident. See Thresholds below for details.
  late final pulumi.Output<InfraAlertConditionWarning?> warning;
  /// If applicable, this identifies any Infrastructure host filters used; for example: `hostname LIKE '%cassandra%'`.
  late final pulumi.Output<String?> where;

  /// Creates a new [InfraAlertCondition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InfraAlertCondition]. {@macro pulumi_index_infra_alert_condition_infra_alert_condition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InfraAlertCondition(
    String name, {
    InfraAlertConditionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/infraAlertCondition:InfraAlertCondition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.comparison = registerOutput<String?>('comparison');
    this.createdAt = registerOutput<int>('createdAt');
    this.critical = registerOutput<InfraAlertConditionCritical?>('critical');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.entityGuid = registerOutput<String>('entityGuid');
    this.event = registerOutput<String>('event');
    this.integrationProvider = registerOutput<String?>('integrationProvider');
    this.name = registerOutput<String>('name');
    this.policyId = registerOutput<String>('policyId');
    this.processWhere = registerOutput<String?>('processWhere');
    this.runbookUrl = registerOutput<String?>('runbookUrl');
    this.select = registerOutput<String?>('select');
    this.type = registerOutput<String>('type');
    this.updatedAt = registerOutput<int>('updatedAt');
    this.violationCloseTimer = registerOutput<int?>('violationCloseTimer');
    this.warning = registerOutput<InfraAlertConditionWarning?>('warning');
    this.where = registerOutput<String?>('where');
  }

  /// Gets an existing [InfraAlertCondition] resource's state with the given [name] and [id].
  static InfraAlertCondition get(
    String name,
    pulumi.Input<String> id, {
    InfraAlertConditionState? state,
  }) {
    return InfraAlertCondition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InfraAlertCondition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/infraAlertCondition:InfraAlertCondition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.comparison = registerOutput<String?>('comparison');
    this.createdAt = registerOutput<int>('createdAt');
    this.critical = registerOutput<InfraAlertConditionCritical?>('critical');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.entityGuid = registerOutput<String>('entityGuid');
    this.event = registerOutput<String>('event');
    this.integrationProvider = registerOutput<String?>('integrationProvider');
    this.name = registerOutput<String>('name');
    this.policyId = registerOutput<String>('policyId');
    this.processWhere = registerOutput<String?>('processWhere');
    this.runbookUrl = registerOutput<String?>('runbookUrl');
    this.select = registerOutput<String?>('select');
    this.type = registerOutput<String>('type');
    this.updatedAt = registerOutput<int>('updatedAt');
    this.violationCloseTimer = registerOutput<int?>('violationCloseTimer');
    this.warning = registerOutput<InfraAlertConditionWarning?>('warning');
    this.where = registerOutput<String?>('where');
  }
}
