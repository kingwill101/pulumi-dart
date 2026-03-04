import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_condition_args.dart';
import 'alert_condition_state.dart';

/// Use this resource to create and manage alert conditions for APM, Browser, and Mobile in New Relic.
///
/// &gt; **WARNING:** The `newrelic.AlertCondition` resource is deprecated and will be removed in the next major release. The resource newrelic.NrqlAlertCondition would be a preferred alternative to configure alert conditions - in most cases, feature parity can be achieved with a NRQL query.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const app = newrelic.getEntity({
///     name: "my-app",
///     type: "APPLICATION",
///     domain: "APM",
/// });
/// const foo = new newrelic.AlertPolicy("foo", {name: "foo"});
/// const fooAlertCondition = new newrelic.AlertCondition("foo", {
///     policyId: foo.id,
///     name: "foo",
///     type: "apm_app_metric",
///     entities: [app.then(app => app.applicationId)],
///     metric: "apdex",
///     runbookUrl: "https://www.example.com",
///     conditionScope: "application",
///     terms: [{
///         duration: 5,
///         operator: "below",
///         priority: "critical",
///         threshold: 0.75,
///         timeFunction: "all",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// app = newrelic.get_entity(name="my-app",
///     type="APPLICATION",
///     domain="APM")
/// foo = newrelic.AlertPolicy("foo", name="foo")
/// foo_alert_condition = newrelic.AlertCondition("foo",
///     policy_id=foo.id,
///     name="foo",
///     type="apm_app_metric",
///     entities=[app.application_id],
///     metric="apdex",
///     runbook_url="https://www.example.com",
///     condition_scope="application",
///     terms=[{
///         "duration": 5,
///         "operator": "below",
///         "priority": "critical",
///         "threshold": 0.75,
///         "time_function": "all",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var app = NewRelic.GetEntity.Invoke(new()
///     {
///         Name = "my-app",
///         Type = "APPLICATION",
///         Domain = "APM",
///     });
///
///     var foo = new NewRelic.AlertPolicy("foo", new()
///     {
///         Name = "foo",
///     });
///
///     var fooAlertCondition = new NewRelic.AlertCondition("foo", new()
///     {
///         PolicyId = foo.Id,
///         Name = "foo",
///         Type = "apm_app_metric",
///         Entities = new[]
///         {
///             app.Apply(getEntityResult => getEntityResult.ApplicationId),
///         },
///         Metric = "apdex",
///         RunbookUrl = "https://www.example.com",
///         ConditionScope = "application",
///         Terms = new[]
///         {
///             new NewRelic.Inputs.AlertConditionTermArgs
///             {
///                 Duration = 5,
///                 Operator = "below",
///                 Priority = "critical",
///                 Threshold = 0.75,
///                 TimeFunction = "all",
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
/// 		app, err := newrelic.GetEntity(ctx, &newrelic.GetEntityArgs{
/// 			Name:   "my-app",
/// 			Type:   pulumi.StringRef("APPLICATION"),
/// 			Domain: pulumi.StringRef("APM"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := newrelic.NewAlertPolicy(ctx, "foo", &newrelic.AlertPolicyArgs{
/// 			Name: pulumi.String("foo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewAlertCondition(ctx, "foo", &newrelic.AlertConditionArgs{
/// 			PolicyId: foo.ID(),
/// 			Name:     pulumi.String("foo"),
/// 			Type:     pulumi.String("apm_app_metric"),
/// 			Entities: pulumi.StringArray{
/// 				pulumi.String(app.ApplicationId),
/// 			},
/// 			Metric:         pulumi.String("apdex"),
/// 			RunbookUrl:     pulumi.String("https://www.example.com"),
/// 			ConditionScope: pulumi.String("application"),
/// 			Terms: newrelic.AlertConditionTermArray{
/// 				&newrelic.AlertConditionTermArgs{
/// 					Duration:     pulumi.Int(5),
/// 					Operator:     pulumi.String("below"),
/// 					Priority:     pulumi.String("critical"),
/// 					Threshold:    pulumi.Float64(0.75),
/// 					TimeFunction: pulumi.String("all"),
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetEntityArgs;
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
/// import com.pulumi.newrelic.AlertCondition;
/// import com.pulumi.newrelic.AlertConditionArgs;
/// import com.pulumi.newrelic.inputs.AlertConditionTermArgs;
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
///         final var app = NewrelicFunctions.getEntity(GetEntityArgs.builder()
///             .name("my-app")
///             .type("APPLICATION")
///             .domain("APM")
///             .build());
///
///         var foo = new AlertPolicy("foo", AlertPolicyArgs.builder()
///             .name("foo")
///             .build());
///
///         var fooAlertCondition = new AlertCondition("fooAlertCondition", AlertConditionArgs.builder()
///             .policyId(foo.id())
///             .name("foo")
///             .type("apm_app_metric")
///             .entities(app.applicationId())
///             .metric("apdex")
///             .runbookUrl("https://www.example.com")
///             .conditionScope("application")
///             .terms(AlertConditionTermArgs.builder()
///                 .duration(5)
///                 .operator("below")
///                 .priority("critical")
///                 .threshold(0.75)
///                 .timeFunction("all")
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
///   fooAlertCondition:
///     type: newrelic:AlertCondition
///     name: foo
///     properties:
///       policyId: ${foo.id}
///       name: foo
///       type: apm_app_metric
///       entities:
///         - ${app.applicationId}
///       metric: apdex
///       runbookUrl: https://www.example.com
///       conditionScope: application
///       terms:
///         - duration: 5
///           operator: below
///           priority: critical
///           threshold: '0.75'
///           timeFunction: all
/// variables:
///   app:
///     fn::invoke:
///       function: newrelic:getEntity
///       arguments:
///         name: my-app
///         type: APPLICATION
///         domain: APM
/// ```
///
///
/// ## Terms
///
/// The `term` mapping supports the following arguments:
///
/// * `duration` - (Required) In minutes, must be in the range of `5` to `120`, inclusive.
/// * `operator` - (Optional) `above`, `below`, or `equal`.  Defaults to `equal`.
/// * `priority` - (Optional) `critical` or `warning`.  Defaults to `critical`. Terms must include at least one `critical` priority term
/// * `threshold` - (Required) Must be 0 or greater.
/// * `time_function` - (Required) `all` or `any`.
///
/// ## Tags
///
/// Manage alert condition tags with `newrelic.EntityTags`. For up-to-date documentation about the tagging resource, please check newrelic.EntityTags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = newrelic.getEntity({
///     name: "foo entitiy",
/// });
/// const fooAlertPolicy = new newrelic.AlertPolicy("foo", {name: "foo policy"});
/// const fooAlertCondition = new newrelic.AlertCondition("foo", {
///     policyId: fooAlertPolicy.id,
///     name: "foo condition",
///     type: "apm_app_metric",
///     entities: [foo.then(foo => foo.applicationId)],
///     metric: "apdex",
///     runbookUrl: "https://www.example.com",
///     conditionScope: "application",
///     terms: [{
///         duration: 5,
///         operator: "below",
///         priority: "critical",
///         threshold: 0.75,
///         timeFunction: "all",
///     }],
/// });
/// const myConditionEntityTags = new newrelic.EntityTags("my_condition_entity_tags", {
///     guid: fooAlertCondition.entityGuid,
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
/// foo = newrelic.get_entity(name="foo entitiy")
/// foo_alert_policy = newrelic.AlertPolicy("foo", name="foo policy")
/// foo_alert_condition = newrelic.AlertCondition("foo",
///     policy_id=foo_alert_policy.id,
///     name="foo condition",
///     type="apm_app_metric",
///     entities=[foo.application_id],
///     metric="apdex",
///     runbook_url="https://www.example.com",
///     condition_scope="application",
///     terms=[{
///         "duration": 5,
///         "operator": "below",
///         "priority": "critical",
///         "threshold": 0.75,
///         "time_function": "all",
///     }])
/// my_condition_entity_tags = newrelic.EntityTags("my_condition_entity_tags",
///     guid=foo_alert_condition.entity_guid,
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
///     var foo = NewRelic.GetEntity.Invoke(new()
///     {
///         Name = "foo entitiy",
///     });
///
///     var fooAlertPolicy = new NewRelic.AlertPolicy("foo", new()
///     {
///         Name = "foo policy",
///     });
///
///     var fooAlertCondition = new NewRelic.AlertCondition("foo", new()
///     {
///         PolicyId = fooAlertPolicy.Id,
///         Name = "foo condition",
///         Type = "apm_app_metric",
///         Entities = new[]
///         {
///             foo.Apply(getEntityResult => getEntityResult.ApplicationId),
///         },
///         Metric = "apdex",
///         RunbookUrl = "https://www.example.com",
///         ConditionScope = "application",
///         Terms = new[]
///         {
///             new NewRelic.Inputs.AlertConditionTermArgs
///             {
///                 Duration = 5,
///                 Operator = "below",
///                 Priority = "critical",
///                 Threshold = 0.75,
///                 TimeFunction = "all",
///             },
///         },
///     });
///
///     var myConditionEntityTags = new NewRelic.EntityTags("my_condition_entity_tags", new()
///     {
///         Guid = fooAlertCondition.EntityGuid,
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
/// 		foo, err := newrelic.GetEntity(ctx, &newrelic.GetEntityArgs{
/// 			Name: "foo entitiy",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooAlertPolicy, err := newrelic.NewAlertPolicy(ctx, "foo", &newrelic.AlertPolicyArgs{
/// 			Name: pulumi.String("foo policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooAlertCondition, err := newrelic.NewAlertCondition(ctx, "foo", &newrelic.AlertConditionArgs{
/// 			PolicyId: fooAlertPolicy.ID(),
/// 			Name:     pulumi.String("foo condition"),
/// 			Type:     pulumi.String("apm_app_metric"),
/// 			Entities: pulumi.StringArray{
/// 				pulumi.String(foo.ApplicationId),
/// 			},
/// 			Metric:         pulumi.String("apdex"),
/// 			RunbookUrl:     pulumi.String("https://www.example.com"),
/// 			ConditionScope: pulumi.String("application"),
/// 			Terms: newrelic.AlertConditionTermArray{
/// 				&newrelic.AlertConditionTermArgs{
/// 					Duration:     pulumi.Int(5),
/// 					Operator:     pulumi.String("below"),
/// 					Priority:     pulumi.String("critical"),
/// 					Threshold:    pulumi.Float64(0.75),
/// 					TimeFunction: pulumi.String("all"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewEntityTags(ctx, "my_condition_entity_tags", &newrelic.EntityTagsArgs{
/// 			Guid: fooAlertCondition.EntityGuid,
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetEntityArgs;
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
/// import com.pulumi.newrelic.AlertCondition;
/// import com.pulumi.newrelic.AlertConditionArgs;
/// import com.pulumi.newrelic.inputs.AlertConditionTermArgs;
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
///         final var foo = NewrelicFunctions.getEntity(GetEntityArgs.builder()
///             .name("foo entitiy")
///             .build());
///
///         var fooAlertPolicy = new AlertPolicy("fooAlertPolicy", AlertPolicyArgs.builder()
///             .name("foo policy")
///             .build());
///
///         var fooAlertCondition = new AlertCondition("fooAlertCondition", AlertConditionArgs.builder()
///             .policyId(fooAlertPolicy.id())
///             .name("foo condition")
///             .type("apm_app_metric")
///             .entities(foo.applicationId())
///             .metric("apdex")
///             .runbookUrl("https://www.example.com")
///             .conditionScope("application")
///             .terms(AlertConditionTermArgs.builder()
///                 .duration(5)
///                 .operator("below")
///                 .priority("critical")
///                 .threshold(0.75)
///                 .timeFunction("all")
///                 .build())
///             .build());
///
///         var myConditionEntityTags = new EntityTags("myConditionEntityTags", EntityTagsArgs.builder()
///             .guid(fooAlertCondition.entityGuid())
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
///   fooAlertPolicy:
///     type: newrelic:AlertPolicy
///     name: foo
///     properties:
///       name: foo policy
///   fooAlertCondition:
///     type: newrelic:AlertCondition
///     name: foo
///     properties:
///       policyId: ${fooAlertPolicy.id}
///       name: foo condition
///       type: apm_app_metric
///       entities:
///         - ${foo.applicationId}
///       metric: apdex
///       runbookUrl: https://www.example.com
///       conditionScope: application
///       terms:
///         - duration: 5
///           operator: below
///           priority: critical
///           threshold: '0.75'
///           timeFunction: all
///   myConditionEntityTags:
///     type: newrelic:EntityTags
///     name: my_condition_entity_tags
///     properties:
///       guid: ${fooAlertCondition.entityGuid}
///       tags:
///         - key: my-key
///           values:
///             - my-value
///             - my-other-value
///         - key: my-key-2
///           values:
///             - my-value-2
/// variables:
///   foo:
///     fn::invoke:
///       function: newrelic:getEntity
///       arguments:
///         name: foo entitiy
/// ```
///
///
/// ## Import
///
/// Alert conditions can be imported using notation `alert_policy_id:alert_condition_id`, e.g.
///
/// ```sh
/// $ pulumi import newrelic:index/alertCondition:AlertCondition main 123456:6789012345
/// ```
class AlertCondition extends pulumi.CustomResource {
  /// `application` or `instance`.  Choose `application` for most scenarios.  If you are using the JVM plugin in New Relic, the `instance` setting allows your condition to trigger [for specific app instances](https://docs.newrelic.com/docs/alerts/new-relic-alerts/defining-conditions/scope-alert-thresholds-specific-instances).
  late final pulumi.Output<String?> conditionScope;

  /// Whether the condition is enabled or not. Defaults to true.
  late final pulumi.Output<bool?> enabled;

  /// The instance IDs associated with this condition.
  late final pulumi.Output<List<String>> entities;

  /// The unique entity identifier of the condition in New Relic.
  late final pulumi.Output<String> entityGuid;

  /// A valid Garbage Collection metric e.g. `GC/G1 Young Generation`.
  late final pulumi.Output<String?> gcMetric;

  /// The metric field accepts parameters based on the `type` set. One of these metrics based on `type`:
  late final pulumi.Output<String> metric;

  /// The title of the condition. Must be between 1 and 64 characters, inclusive.
  late final pulumi.Output<String> name;

  /// The ID of the policy where this condition should be used.
  late final pulumi.Output<String> policyId;

  /// Runbook URL to display in notifications.
  late final pulumi.Output<String?> runbookUrl;

  /// A list of terms for this condition. See Terms below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> terms;

  /// The type of condition. One of: `apm_app_metric`, `apm_jvm_metric`, `apm_kt_metric`, `browser_metric`, `mobile_metric`
  late final pulumi.Output<String> type;

  /// A custom metric to be evaluated.
  late final pulumi.Output<String?> userDefinedMetric;

  /// One of: `average`, `min`, `max`, `total`, `sample_size`, `rate` or `percent`.
  ///
  /// &gt; **NOTE:** The `user_defined_value_function` can have `rate` or `percent` only when the `type` is `mobile_metric`.
  ///
  /// ```
  /// Warning: This resource will use the account ID linked to your API key. At the moment it is not possible to dynamically set the account ID.
  /// ```
  late final pulumi.Output<String?> userDefinedValueFunction;

  /// Automatically close instance-based incidents, including JVM health metric incidents, after the number of hours specified. Must be between 1 and 720 hours. Must be specified in the following two cases, to prevent drift:
  /// * when `type` = `apm_app_metric` and `condition_scope` = `instance`
  /// * when `type` = `apm_jvm_metric`
  late final pulumi.Output<int?> violationCloseTimer;

  /// Creates a new [AlertCondition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertCondition]. {@macro pulumi_index_alert_condition_alert_condition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertCondition(
    String name, {
    AlertConditionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/alertCondition:AlertCondition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    conditionScope = registerOutput<String?>('conditionScope');
    enabled = registerOutput<bool?>('enabled');
    entities = registerOutput<List<String>>('entities');
    entityGuid = registerOutput<String>('entityGuid');
    gcMetric = registerOutput<String?>('gcMetric');
    metric = registerOutput<String>('metric');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    runbookUrl = registerOutput<String?>('runbookUrl');
    terms = registerOutput<List<Map<String, dynamic>>>('terms');
    type = registerOutput<String>('type');
    userDefinedMetric = registerOutput<String?>('userDefinedMetric');
    userDefinedValueFunction = registerOutput<String?>(
      'userDefinedValueFunction',
    );
    violationCloseTimer = registerOutput<int?>('violationCloseTimer');
  }

  /// Gets an existing [AlertCondition] resource's state with the given [name] and [id].
  static AlertCondition get(
    String name,
    pulumi.Input<String> id, {
    AlertConditionState? state,
  }) {
    return AlertCondition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertCondition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/alertCondition:AlertCondition',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    conditionScope = registerOutput<String?>('conditionScope');
    enabled = registerOutput<bool?>('enabled');
    entities = registerOutput<List<String>>('entities');
    entityGuid = registerOutput<String>('entityGuid');
    gcMetric = registerOutput<String?>('gcMetric');
    metric = registerOutput<String>('metric');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    runbookUrl = registerOutput<String?>('runbookUrl');
    terms = registerOutput<List<Map<String, dynamic>>>('terms');
    type = registerOutput<String>('type');
    userDefinedMetric = registerOutput<String?>('userDefinedMetric');
    userDefinedValueFunction = registerOutput<String?>(
      'userDefinedValueFunction',
    );
    violationCloseTimer = registerOutput<int?>('violationCloseTimer');
  }
}
