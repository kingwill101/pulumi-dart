import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_location_alert_condition_args.dart';
import 'multi_location_alert_condition_critical.dart';
import 'multi_location_alert_condition_state.dart';
import 'multi_location_alert_condition_warning.dart';

/// Use this resource to create, update, and delete a New Relic Synthetics Location Alerts.
///
/// &gt; **NOTE:** This is a legacy resource. The newrelic.NrqlAlertCondition resource is preferred for configuring alerts conditions. In most cases feature parity can be achieved with a NRQL query. This condition type may be deprecated in the future.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const policy = new newrelic.AlertPolicy("policy", {name: "my-policy"});
/// const monitor = new newrelic.synthetics.Monitor("monitor", {
///     locationsPublics: ["US_WEST_1"],
///     name: "my-monitor",
///     period: "EVERY_10_MINUTES",
///     status: "DISABLED",
///     type: "SIMPLE",
///     uri: "https://www.one.newrelic.com",
/// });
/// const example = new newrelic.synthetics.MultiLocationAlertCondition("example", {
///     policyId: policy.id,
///     name: "Example condition",
///     runbookUrl: "https://example.com",
///     enabled: true,
///     violationTimeLimitSeconds: 3600,
///     entities: [monitor.id],
///     critical: {
///         threshold: 2,
///     },
///     warning: {
///         threshold: 1,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// policy = newrelic.AlertPolicy("policy", name="my-policy")
/// monitor = newrelic.synthetics.Monitor("monitor",
///     locations_publics=["US_WEST_1"],
///     name="my-monitor",
///     period="EVERY_10_MINUTES",
///     status="DISABLED",
///     type="SIMPLE",
///     uri="https://www.one.newrelic.com")
/// example = newrelic.synthetics.MultiLocationAlertCondition("example",
///     policy_id=policy.id,
///     name="Example condition",
///     runbook_url="https://example.com",
///     enabled=True,
///     violation_time_limit_seconds=3600,
///     entities=[monitor.id],
///     critical={
///         "threshold": 2,
///     },
///     warning={
///         "threshold": 1,
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
///     var policy = new NewRelic.AlertPolicy("policy", new()
///     {
///         Name = "my-policy",
///     });
///
///     var monitor = new NewRelic.Synthetics.Monitor("monitor", new()
///     {
///         LocationsPublics = new[]
///         {
///             "US_WEST_1",
///         },
///         Name = "my-monitor",
///         Period = "EVERY_10_MINUTES",
///         Status = "DISABLED",
///         Type = "SIMPLE",
///         Uri = "https://www.one.newrelic.com",
///     });
///
///     var example = new NewRelic.Synthetics.MultiLocationAlertCondition("example", new()
///     {
///         PolicyId = policy.Id,
///         Name = "Example condition",
///         RunbookUrl = "https://example.com",
///         Enabled = true,
///         ViolationTimeLimitSeconds = 3600,
///         Entities = new[]
///         {
///             monitor.Id,
///         },
///         Critical = new NewRelic.Synthetics.Inputs.MultiLocationAlertConditionCriticalArgs
///         {
///             Threshold = 2,
///         },
///         Warning = new NewRelic.Synthetics.Inputs.MultiLocationAlertConditionWarningArgs
///         {
///             Threshold = 1,
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/synthetics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		policy, err := newrelic.NewAlertPolicy(ctx, "policy", &newrelic.AlertPolicyArgs{
/// 			Name: pulumi.String("my-policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		monitor, err := synthetics.NewMonitor(ctx, "monitor", &synthetics.MonitorArgs{
/// 			LocationsPublics: pulumi.StringArray{
/// 				pulumi.String("US_WEST_1"),
/// 			},
/// 			Name:   pulumi.String("my-monitor"),
/// 			Period: pulumi.String("EVERY_10_MINUTES"),
/// 			Status: pulumi.String("DISABLED"),
/// 			Type:   pulumi.String("SIMPLE"),
/// 			Uri:    pulumi.String("https://www.one.newrelic.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synthetics.NewMultiLocationAlertCondition(ctx, "example", &synthetics.MultiLocationAlertConditionArgs{
/// 			PolicyId:                  policy.ID(),
/// 			Name:                      pulumi.String("Example condition"),
/// 			RunbookUrl:                pulumi.String("https://example.com"),
/// 			Enabled:                   pulumi.Bool(true),
/// 			ViolationTimeLimitSeconds: pulumi.Int(3600),
/// 			Entities: pulumi.StringArray{
/// 				monitor.ID(),
/// 			},
/// 			Critical: &synthetics.MultiLocationAlertConditionCriticalArgs{
/// 				Threshold: pulumi.Int(2),
/// 			},
/// 			Warning: &synthetics.MultiLocationAlertConditionWarningArgs{
/// 				Threshold: pulumi.Int(1),
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
/// import com.pulumi.newrelic.synthetics.Monitor;
/// import com.pulumi.newrelic.synthetics.MonitorArgs;
/// import com.pulumi.newrelic.synthetics.MultiLocationAlertCondition;
/// import com.pulumi.newrelic.synthetics.MultiLocationAlertConditionArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MultiLocationAlertConditionCriticalArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MultiLocationAlertConditionWarningArgs;
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
///         var policy = new AlertPolicy("policy", AlertPolicyArgs.builder()
///             .name("my-policy")
///             .build());
///
///         var monitor = new Monitor("monitor", MonitorArgs.builder()
///             .locationsPublics("US_WEST_1")
///             .name("my-monitor")
///             .period("EVERY_10_MINUTES")
///             .status("DISABLED")
///             .type("SIMPLE")
///             .uri("https://www.one.newrelic.com")
///             .build());
///
///         var example = new MultiLocationAlertCondition("example", MultiLocationAlertConditionArgs.builder()
///             .policyId(policy.id())
///             .name("Example condition")
///             .runbookUrl("https://example.com")
///             .enabled(true)
///             .violationTimeLimitSeconds(3600)
///             .entities(monitor.id())
///             .critical(MultiLocationAlertConditionCriticalArgs.builder()
///                 .threshold(2)
///                 .build())
///             .warning(MultiLocationAlertConditionWarningArgs.builder()
///                 .threshold(1)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: newrelic:AlertPolicy
///     properties:
///       name: my-policy
///   monitor:
///     type: newrelic:synthetics:Monitor
///     properties:
///       locationsPublics:
///         - US_WEST_1
///       name: my-monitor
///       period: EVERY_10_MINUTES
///       status: DISABLED
///       type: SIMPLE
///       uri: https://www.one.newrelic.com
///   example:
///     type: newrelic:synthetics:MultiLocationAlertCondition
///     properties:
///       policyId: ${policy.id}
///       name: Example condition
///       runbookUrl: https://example.com
///       enabled: true
///       violationTimeLimitSeconds: 3600
///       entities:
///         - ${monitor.id}
///       critical:
///         threshold: 2
///       warning:
///         threshold: 1
/// ```
///
/// ## Tags
///
/// Manage synthetics multilocation alert condition tags with `newrelic.EntityTags`. For up-to-date documentation about the tagging resource, please check newrelic.EntityTags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AlertPolicy("foo", {name: "foo policy"});
/// const fooMonitor = new newrelic.synthetics.Monitor("foo", {
///     status: "ENABLED",
///     name: "foo monitor",
///     period: "EVERY_MINUTE",
///     uri: "https://www.one.newrelic.com",
///     type: "SIMPLE",
///     locationsPublics: ["AP_EAST_1"],
///     customHeaders: [{
///         name: "some_name",
///         value: "some_value",
///     }],
///     treatRedirectAsFailure: true,
///     validationString: "success",
///     bypassHeadRequest: true,
///     verifySsl: true,
///     tags: [{
///         key: "some_key",
///         values: ["some_value"],
///     }],
/// });
/// const fooMultiLocationAlertCondition = new newrelic.synthetics.MultiLocationAlertCondition("foo", {
///     policyId: foo.id,
///     name: "foo condition",
///     runbookUrl: "https://example.com",
///     enabled: true,
///     violationTimeLimitSeconds: 3600,
///     entities: [fooMonitor.id],
///     critical: {
///         threshold: 2,
///     },
///     warning: {
///         threshold: 1,
///     },
/// });
/// const myConditionEntityTags = new newrelic.EntityTags("my_condition_entity_tags", {
///     guid: fooMultiLocationAlertCondition.entityGuid,
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
/// foo_monitor = newrelic.synthetics.Monitor("foo",
///     status="ENABLED",
///     name="foo monitor",
///     period="EVERY_MINUTE",
///     uri="https://www.one.newrelic.com",
///     type="SIMPLE",
///     locations_publics=["AP_EAST_1"],
///     custom_headers=[{
///         "name": "some_name",
///         "value": "some_value",
///     }],
///     treat_redirect_as_failure=True,
///     validation_string="success",
///     bypass_head_request=True,
///     verify_ssl=True,
///     tags=[{
///         "key": "some_key",
///         "values": ["some_value"],
///     }])
/// foo_multi_location_alert_condition = newrelic.synthetics.MultiLocationAlertCondition("foo",
///     policy_id=foo.id,
///     name="foo condition",
///     runbook_url="https://example.com",
///     enabled=True,
///     violation_time_limit_seconds=3600,
///     entities=[foo_monitor.id],
///     critical={
///         "threshold": 2,
///     },
///     warning={
///         "threshold": 1,
///     })
/// my_condition_entity_tags = newrelic.EntityTags("my_condition_entity_tags",
///     guid=foo_multi_location_alert_condition.entity_guid,
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
///     var fooMonitor = new NewRelic.Synthetics.Monitor("foo", new()
///     {
///         Status = "ENABLED",
///         Name = "foo monitor",
///         Period = "EVERY_MINUTE",
///         Uri = "https://www.one.newrelic.com",
///         Type = "SIMPLE",
///         LocationsPublics = new[]
///         {
///             "AP_EAST_1",
///         },
///         CustomHeaders = new[]
///         {
///             new NewRelic.Synthetics.Inputs.MonitorCustomHeaderArgs
///             {
///                 Name = "some_name",
///                 Value = "some_value",
///             },
///         },
///         TreatRedirectAsFailure = true,
///         ValidationString = "success",
///         BypassHeadRequest = true,
///         VerifySsl = true,
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.MonitorTagArgs
///             {
///                 Key = "some_key",
///                 Values = new[]
///                 {
///                     "some_value",
///                 },
///             },
///         },
///     });
///
///     var fooMultiLocationAlertCondition = new NewRelic.Synthetics.MultiLocationAlertCondition("foo", new()
///     {
///         PolicyId = foo.Id,
///         Name = "foo condition",
///         RunbookUrl = "https://example.com",
///         Enabled = true,
///         ViolationTimeLimitSeconds = 3600,
///         Entities = new[]
///         {
///             fooMonitor.Id,
///         },
///         Critical = new NewRelic.Synthetics.Inputs.MultiLocationAlertConditionCriticalArgs
///         {
///             Threshold = 2,
///         },
///         Warning = new NewRelic.Synthetics.Inputs.MultiLocationAlertConditionWarningArgs
///         {
///             Threshold = 1,
///         },
///     });
///
///     var myConditionEntityTags = new NewRelic.EntityTags("my_condition_entity_tags", new()
///     {
///         Guid = fooMultiLocationAlertCondition.EntityGuid,
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/synthetics"
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
/// 		fooMonitor, err := synthetics.NewMonitor(ctx, "foo", &synthetics.MonitorArgs{
/// 			Status: pulumi.String("ENABLED"),
/// 			Name:   pulumi.String("foo monitor"),
/// 			Period: pulumi.String("EVERY_MINUTE"),
/// 			Uri:    pulumi.String("https://www.one.newrelic.com"),
/// 			Type:   pulumi.String("SIMPLE"),
/// 			LocationsPublics: pulumi.StringArray{
/// 				pulumi.String("AP_EAST_1"),
/// 			},
/// 			CustomHeaders: synthetics.MonitorCustomHeaderArray{
/// 				&synthetics.MonitorCustomHeaderArgs{
/// 					Name:  pulumi.String("some_name"),
/// 					Value: pulumi.String("some_value"),
/// 				},
/// 			},
/// 			TreatRedirectAsFailure: pulumi.Bool(true),
/// 			ValidationString:       pulumi.String("success"),
/// 			BypassHeadRequest:      pulumi.Bool(true),
/// 			VerifySsl:              pulumi.Bool(true),
/// 			Tags: synthetics.MonitorTagArray{
/// 				&synthetics.MonitorTagArgs{
/// 					Key: pulumi.String("some_key"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("some_value"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooMultiLocationAlertCondition, err := synthetics.NewMultiLocationAlertCondition(ctx, "foo", &synthetics.MultiLocationAlertConditionArgs{
/// 			PolicyId:                  foo.ID(),
/// 			Name:                      pulumi.String("foo condition"),
/// 			RunbookUrl:                pulumi.String("https://example.com"),
/// 			Enabled:                   pulumi.Bool(true),
/// 			ViolationTimeLimitSeconds: pulumi.Int(3600),
/// 			Entities: pulumi.StringArray{
/// 				fooMonitor.ID(),
/// 			},
/// 			Critical: &synthetics.MultiLocationAlertConditionCriticalArgs{
/// 				Threshold: pulumi.Int(2),
/// 			},
/// 			Warning: &synthetics.MultiLocationAlertConditionWarningArgs{
/// 				Threshold: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewEntityTags(ctx, "my_condition_entity_tags", &newrelic.EntityTagsArgs{
/// 			Guid: fooMultiLocationAlertCondition.EntityGuid,
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
/// import com.pulumi.newrelic.synthetics.Monitor;
/// import com.pulumi.newrelic.synthetics.MonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MonitorCustomHeaderArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MonitorTagArgs;
/// import com.pulumi.newrelic.synthetics.MultiLocationAlertCondition;
/// import com.pulumi.newrelic.synthetics.MultiLocationAlertConditionArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MultiLocationAlertConditionCriticalArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MultiLocationAlertConditionWarningArgs;
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
///         var fooMonitor = new Monitor("fooMonitor", MonitorArgs.builder()
///             .status("ENABLED")
///             .name("foo monitor")
///             .period("EVERY_MINUTE")
///             .uri("https://www.one.newrelic.com")
///             .type("SIMPLE")
///             .locationsPublics("AP_EAST_1")
///             .customHeaders(MonitorCustomHeaderArgs.builder()
///                 .name("some_name")
///                 .value("some_value")
///                 .build())
///             .treatRedirectAsFailure(true)
///             .validationString("success")
///             .bypassHeadRequest(true)
///             .verifySsl(true)
///             .tags(MonitorTagArgs.builder()
///                 .key("some_key")
///                 .values("some_value")
///                 .build())
///             .build());
///
///         var fooMultiLocationAlertCondition = new MultiLocationAlertCondition("fooMultiLocationAlertCondition", MultiLocationAlertConditionArgs.builder()
///             .policyId(foo.id())
///             .name("foo condition")
///             .runbookUrl("https://example.com")
///             .enabled(true)
///             .violationTimeLimitSeconds(3600)
///             .entities(fooMonitor.id())
///             .critical(MultiLocationAlertConditionCriticalArgs.builder()
///                 .threshold(2)
///                 .build())
///             .warning(MultiLocationAlertConditionWarningArgs.builder()
///                 .threshold(1)
///                 .build())
///             .build());
///
///         var myConditionEntityTags = new EntityTags("myConditionEntityTags", EntityTagsArgs.builder()
///             .guid(fooMultiLocationAlertCondition.entityGuid())
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
///   fooMonitor:
///     type: newrelic:synthetics:Monitor
///     name: foo
///     properties:
///       status: ENABLED
///       name: foo monitor
///       period: EVERY_MINUTE
///       uri: https://www.one.newrelic.com
///       type: SIMPLE
///       locationsPublics:
///         - AP_EAST_1
///       customHeaders:
///         - name: some_name
///           value: some_value
///       treatRedirectAsFailure: true
///       validationString: success
///       bypassHeadRequest: true
///       verifySsl: true
///       tags:
///         - key: some_key
///           values:
///             - some_value
///   fooMultiLocationAlertCondition:
///     type: newrelic:synthetics:MultiLocationAlertCondition
///     name: foo
///     properties:
///       policyId: ${foo.id}
///       name: foo condition
///       runbookUrl: https://example.com
///       enabled: true
///       violationTimeLimitSeconds: 3600
///       entities:
///         - ${fooMonitor.id}
///       critical:
///         threshold: 2
///       warning:
///         threshold: 1
///   myConditionEntityTags:
///     type: newrelic:EntityTags
///     name: my_condition_entity_tags
///     properties:
///       guid: ${fooMultiLocationAlertCondition.entityGuid}
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
/// New Relic Synthetics MultiLocation Conditions can be imported using a concatenated string of the format
/// `&lt;policy_id&gt;:&lt;condition_id&gt;`, e.g.
///
/// ```bash
/// $ terraform import newrelic_synthetics_multilocation_alert_condition.example 12345678:1456
/// ```
class MultiLocationAlertCondition extends pulumi.CustomResource {
  /// A condition term with the priority set to critical.
  late final pulumi.Output<MultiLocationAlertConditionCritical> critical;
  /// Set whether to enable the alert condition.  Defaults to true.
  late final pulumi.Output<bool?> enabled;
  /// The Monitor GUID's of the Synthetics monitors to alert on.
  late final pulumi.Output<List<String>> entities;
  /// The unique entity identifier of the condition in New Relic.
  late final pulumi.Output<String> entityGuid;
  /// The title of the condition.
  late final pulumi.Output<String> name;
  /// The ID of the policy where this condition will be used.
  late final pulumi.Output<String> policyId;
  /// Runbook URL to display in notifications.
  late final pulumi.Output<String?> runbookUrl;
  /// The maximum number of seconds a violation can remain open before being closed by the system. The value must be between 300 seconds (5 minutes) to 2592000 seconds (30 days), both inclusive. Defaults to 259200 seconds (3 days) if this argument is not specified in the configuration, in accordance with the characteristics of this field in NerdGraph, as specified in the [docs](https://docs.newrelic.com/docs/alerts-applied-intelligence/new-relic-alerts/advanced-alerts/rest-api-alerts/alerts-conditions-api-field-names/#violation_time_limit_seconds).
  late final pulumi.Output<int?> violationTimeLimitSeconds;
  /// A condition term with the priority set to warning.
  ///
  ///
  /// &gt; **WARNING:** This resource will use the account ID linked to your API key. At the moment it is not possible to dynamically set the account ID.
  late final pulumi.Output<MultiLocationAlertConditionWarning?> warning;

  /// Creates a new [MultiLocationAlertCondition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MultiLocationAlertCondition]. {@macro pulumi_synthetics_multi_location_alert_condition_multi_location_alert_condition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MultiLocationAlertCondition(
    String name, {
    MultiLocationAlertConditionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:synthetics/multiLocationAlertCondition:MultiLocationAlertCondition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    critical = registerOutput<MultiLocationAlertConditionCritical>('critical', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiLocationAlertConditionCritical.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    entities = registerOutput<List<String>>('entities');
    entityGuid = registerOutput<String>('entityGuid');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    runbookUrl = registerOutput<String?>('runbookUrl');
    violationTimeLimitSeconds = registerOutput<int?>('violationTimeLimitSeconds');
    warning = registerOutput<MultiLocationAlertConditionWarning?>('warning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiLocationAlertConditionWarning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [MultiLocationAlertCondition] resource's state with the given [name] and [id].
  static MultiLocationAlertCondition get(
    String name,
    pulumi.Input<String> id, {
    MultiLocationAlertConditionState? state,
  }) {
    return MultiLocationAlertCondition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MultiLocationAlertCondition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:synthetics/multiLocationAlertCondition:MultiLocationAlertCondition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    critical = registerOutput<MultiLocationAlertConditionCritical>('critical', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiLocationAlertConditionCritical.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    entities = registerOutput<List<String>>('entities');
    entityGuid = registerOutput<String>('entityGuid');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    runbookUrl = registerOutput<String?>('runbookUrl');
    violationTimeLimitSeconds = registerOutput<int?>('violationTimeLimitSeconds');
    warning = registerOutput<MultiLocationAlertConditionWarning?>('warning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiLocationAlertConditionWarning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
