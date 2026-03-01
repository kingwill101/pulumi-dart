import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_condition_args.dart';
import 'alert_condition_state.dart';

/// Use this resource to create and manage synthetics alert conditions in New Relic.
///
/// > **WARNING:** The `newrelic.synthetics.AlertCondition` resource is deprecated and will be removed in the next major release. The resource newrelic.NrqlAlertCondition would be a preferred alternative to configure alert conditions - in most cases, feature parity can be achieved with a NRQL query. For more details and examples on moving away from synthetics alert conditions to the NRQL based alternative, please check out this example.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.synthetics.AlertCondition("foo", {
///     policyId: fooNewrelicAlertPolicy.id,
///     name: "foo",
///     monitorId: fooNewrelicSyntheticsMonitor.id,
///     runbookUrl: "https://www.example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.synthetics.AlertCondition("foo",
///     policy_id=foo_newrelic_alert_policy["id"],
///     name="foo",
///     monitor_id=foo_newrelic_synthetics_monitor["id"],
///     runbook_url="https://www.example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Synthetics.AlertCondition("foo", new()
///     {
///         PolicyId = fooNewrelicAlertPolicy.Id,
///         Name = "foo",
///         MonitorId = fooNewrelicSyntheticsMonitor.Id,
///         RunbookUrl = "https://www.example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/synthetics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synthetics.NewAlertCondition(ctx, "foo", &synthetics.AlertConditionArgs{
/// 			PolicyId:   pulumi.Any(fooNewrelicAlertPolicy.Id),
/// 			Name:       pulumi.String("foo"),
/// 			MonitorId:  pulumi.Any(fooNewrelicSyntheticsMonitor.Id),
/// 			RunbookUrl: pulumi.String("https://www.example.com"),
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
/// import com.pulumi.newrelic.synthetics.AlertCondition;
/// import com.pulumi.newrelic.synthetics.AlertConditionArgs;
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
///         var foo = new AlertCondition("foo", AlertConditionArgs.builder()
///             .policyId(fooNewrelicAlertPolicy.id())
///             .name("foo")
///             .monitorId(fooNewrelicSyntheticsMonitor.id())
///             .runbookUrl("https://www.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:synthetics:AlertCondition
///     properties:
///       policyId: ${fooNewrelicAlertPolicy.id}
///       name: foo
///       monitorId: ${fooNewrelicSyntheticsMonitor.id}
///       runbookUrl: https://www.example.com
/// ```
///
///
/// ## Tags
///
/// Manage synthetics alert condition tags with `newrelic.EntityTags`. For up-to-date documentation about the tagging resource, please check newrelic.EntityTags
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
/// const fooAlertCondition = new newrelic.synthetics.AlertCondition("foo", {
///     policyId: foo.id,
///     name: "foo synthetics condition",
///     monitorId: fooMonitor.id,
///     runbookUrl: "https://www.example.com",
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
/// foo_alert_condition = newrelic.synthetics.AlertCondition("foo",
///     policy_id=foo.id,
///     name="foo synthetics condition",
///     monitor_id=foo_monitor.id,
///     runbook_url="https://www.example.com")
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
///     var fooAlertCondition = new NewRelic.Synthetics.AlertCondition("foo", new()
///     {
///         PolicyId = foo.Id,
///         Name = "foo synthetics condition",
///         MonitorId = fooMonitor.Id,
///         RunbookUrl = "https://www.example.com",
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
/// 		fooAlertCondition, err := synthetics.NewAlertCondition(ctx, "foo", &synthetics.AlertConditionArgs{
/// 			PolicyId:   foo.ID(),
/// 			Name:       pulumi.String("foo synthetics condition"),
/// 			MonitorId:  fooMonitor.ID(),
/// 			RunbookUrl: pulumi.String("https://www.example.com"),
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
/// import com.pulumi.newrelic.AlertPolicy;
/// import com.pulumi.newrelic.AlertPolicyArgs;
/// import com.pulumi.newrelic.synthetics.Monitor;
/// import com.pulumi.newrelic.synthetics.MonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MonitorCustomHeaderArgs;
/// import com.pulumi.newrelic.synthetics.inputs.MonitorTagArgs;
/// import com.pulumi.newrelic.synthetics.AlertCondition;
/// import com.pulumi.newrelic.synthetics.AlertConditionArgs;
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
///         var fooAlertCondition = new AlertCondition("fooAlertCondition", AlertConditionArgs.builder()
///             .policyId(foo.id())
///             .name("foo synthetics condition")
///             .monitorId(fooMonitor.id())
///             .runbookUrl("https://www.example.com")
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
///   fooAlertCondition:
///     type: newrelic:synthetics:AlertCondition
///     name: foo
///     properties:
///       policyId: ${foo.id}
///       name: foo synthetics condition
///       monitorId: ${fooMonitor.id}
///       runbookUrl: https://www.example.com
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
/// ```
///
///
/// ## Import
///
/// Synthetics alert conditions can be imported using a composite ID of `<policy_id>:<condition_id>`, e.g.
///
/// ```sh
/// $ pulumi import newrelic:synthetics/alertCondition:AlertCondition main 12345:67890
/// ```
class AlertCondition extends pulumi.CustomResource {
  /// Set whether to enable the alert condition. Defaults to `true`.
  ///
  /// ```
  /// Warning: This resource will use the account ID linked to your API key. At the moment it is not possible to dynamically set the account ID.
  /// ```
  late final pulumi.Output<bool?> enabled;
  /// The unique entity identifier of the condition in New Relic.
  late final pulumi.Output<String> entityGuid;
  /// The GUID of the Synthetics monitor to be referenced in the alert condition.
  late final pulumi.Output<String> monitorId;
  /// The title of this condition.
  late final pulumi.Output<String> name;
  /// The ID of the policy where this condition should be used.
  late final pulumi.Output<String> policyId;
  /// Runbook URL to display in notifications.
  late final pulumi.Output<String?> runbookUrl;

  /// Creates a new [AlertCondition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertCondition]. {@macro pulumi_synthetics_alert_condition_alert_condition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertCondition(
    String name, {
    AlertConditionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:synthetics/alertCondition:AlertCondition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool?>('enabled');
    this.entityGuid = registerOutput<String>('entityGuid');
    this.monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
    this.policyId = registerOutput<String>('policyId');
    this.runbookUrl = registerOutput<String?>('runbookUrl');
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
          'newrelic:synthetics/alertCondition:AlertCondition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool?>('enabled');
    this.entityGuid = registerOutput<String>('entityGuid');
    this.monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
    this.policyId = registerOutput<String>('policyId');
    this.runbookUrl = registerOutput<String?>('runbookUrl');
  }
}
