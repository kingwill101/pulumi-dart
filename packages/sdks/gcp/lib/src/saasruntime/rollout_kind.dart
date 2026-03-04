import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_kind_args.dart';
import 'rollout_kind_error_budget.dart';
import 'rollout_kind_state.dart';

/// A RolloutKind is a reusable configuration resource that defines the policies, strategies, and targeting for Rollout operations. It acts as a template for repeatable Rollouts, providing guardrails and ensuring that updates are executed in a consistent manner across a fleet of Units.
///
///
/// ## Example Usage
///
/// ### Saas Runtime Rollout Kind Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleSaas = new gcp.saasruntime.SaaS("example_saas", {
///     saasId: "example-saas",
///     location: "global",
///     locations: [{
///         name: "us-central1",
///     }],
/// });
/// const exampleUnitkind = new gcp.saasruntime.UnitKind("example_unitkind", {
///     location: "global",
///     unitKindId: "example-unitkind",
///     saas: exampleSaas.id,
/// });
/// const example = new gcp.saasruntime.RolloutKind("example", {
///     location: "global",
///     rolloutKindId: "example-rolloutkind",
///     unitKind: exampleUnitkind.id,
///     rolloutOrchestrationStrategy: "Google.Cloud.Simple.OneLocationAtATime",
///     errorBudget: {
///         allowedCount: 1,
///     },
///     unitFilter: "unit.labels['key1'] == 'value1'",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_saas = gcp.saasruntime.SaaS("example_saas",
///     saas_id="example-saas",
///     location="global",
///     locations=[{
///         "name": "us-central1",
///     }])
/// example_unitkind = gcp.saasruntime.UnitKind("example_unitkind",
///     location="global",
///     unit_kind_id="example-unitkind",
///     saas=example_saas.id)
/// example = gcp.saasruntime.RolloutKind("example",
///     location="global",
///     rollout_kind_id="example-rolloutkind",
///     unit_kind=example_unitkind.id,
///     rollout_orchestration_strategy="Google.Cloud.Simple.OneLocationAtATime",
///     error_budget={
///         "allowed_count": 1,
///     },
///     unit_filter="unit.labels['key1'] == 'value1'")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSaas = new Gcp.SaaSRuntime.SaaS("example_saas", new()
///     {
///         SaasId = "example-saas",
///         Location = "global",
///         Locations = new[]
///         {
///             new Gcp.SaaSRuntime.Inputs.SaaSLocationArgs
///             {
///                 Name = "us-central1",
///             },
///         },
///     });
///
///     var exampleUnitkind = new Gcp.SaaSRuntime.UnitKind("example_unitkind", new()
///     {
///         Location = "global",
///         UnitKindId = "example-unitkind",
///         Saas = exampleSaas.Id,
///     });
///
///     var example = new Gcp.SaaSRuntime.RolloutKind("example", new()
///     {
///         Location = "global",
///         RolloutKindId = "example-rolloutkind",
///         UnitKind = exampleUnitkind.Id,
///         RolloutOrchestrationStrategy = "Google.Cloud.Simple.OneLocationAtATime",
///         ErrorBudget = new Gcp.SaaSRuntime.Inputs.RolloutKindErrorBudgetArgs
///         {
///             AllowedCount = 1,
///         },
///         UnitFilter = "unit.labels['key1'] == 'value1'",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/saasruntime"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleSaas, err := saasruntime.NewSaaS(ctx, "example_saas", &saasruntime.SaaSArgs{
/// 			SaasId:   pulumi.String("example-saas"),
/// 			Location: pulumi.String("global"),
/// 			Locations: saasruntime.SaaSLocationArray{
/// 				&saasruntime.SaaSLocationArgs{
/// 					Name: pulumi.String("us-central1"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUnitkind, err := saasruntime.NewUnitKind(ctx, "example_unitkind", &saasruntime.UnitKindArgs{
/// 			Location:   pulumi.String("global"),
/// 			UnitKindId: pulumi.String("example-unitkind"),
/// 			Saas:       exampleSaas.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = saasruntime.NewRolloutKind(ctx, "example", &saasruntime.RolloutKindArgs{
/// 			Location:                     pulumi.String("global"),
/// 			RolloutKindId:                pulumi.String("example-rolloutkind"),
/// 			UnitKind:                     exampleUnitkind.ID(),
/// 			RolloutOrchestrationStrategy: pulumi.String("Google.Cloud.Simple.OneLocationAtATime"),
/// 			ErrorBudget: &saasruntime.RolloutKindErrorBudgetArgs{
/// 				AllowedCount: pulumi.Int(1),
/// 			},
/// 			UnitFilter: pulumi.String("unit.labels['key1'] == 'value1'"),
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
/// import com.pulumi.gcp.saasruntime.SaaS;
/// import com.pulumi.gcp.saasruntime.SaaSArgs;
/// import com.pulumi.gcp.saasruntime.inputs.SaaSLocationArgs;
/// import com.pulumi.gcp.saasruntime.UnitKind;
/// import com.pulumi.gcp.saasruntime.UnitKindArgs;
/// import com.pulumi.gcp.saasruntime.RolloutKind;
/// import com.pulumi.gcp.saasruntime.RolloutKindArgs;
/// import com.pulumi.gcp.saasruntime.inputs.RolloutKindErrorBudgetArgs;
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
///         var exampleSaas = new SaaS("exampleSaas", SaaSArgs.builder()
///             .saasId("example-saas")
///             .location("global")
///             .locations(SaaSLocationArgs.builder()
///                 .name("us-central1")
///                 .build())
///             .build());
///
///         var exampleUnitkind = new UnitKind("exampleUnitkind", UnitKindArgs.builder()
///             .location("global")
///             .unitKindId("example-unitkind")
///             .saas(exampleSaas.id())
///             .build());
///
///         var example = new RolloutKind("example", RolloutKindArgs.builder()
///             .location("global")
///             .rolloutKindId("example-rolloutkind")
///             .unitKind(exampleUnitkind.id())
///             .rolloutOrchestrationStrategy("Google.Cloud.Simple.OneLocationAtATime")
///             .errorBudget(RolloutKindErrorBudgetArgs.builder()
///                 .allowedCount(1)
///                 .build())
///             .unitFilter("unit.labels['key1'] == 'value1'")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSaas:
///     type: gcp:saasruntime:SaaS
///     name: example_saas
///     properties:
///       saasId: example-saas
///       location: global
///       locations:
///         - name: us-central1
///   exampleUnitkind:
///     type: gcp:saasruntime:UnitKind
///     name: example_unitkind
///     properties:
///       location: global
///       unitKindId: example-unitkind
///       saas: ${exampleSaas.id}
///   example:
///     type: gcp:saasruntime:RolloutKind
///     properties:
///       location: global
///       rolloutKindId: example-rolloutkind
///       unitKind: ${exampleUnitkind.id}
///       rolloutOrchestrationStrategy: Google.Cloud.Simple.OneLocationAtATime
///       errorBudget:
///         allowedCount: 1
///       unitFilter: unit.labels['key1'] == 'value1'
/// ```
///
///
/// ## Import
///
/// RolloutKind can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/rolloutKinds/{{rollout_kind_id}}`
///
/// * `{{project}}/{{location}}/{{rollout_kind_id}}`
///
/// * `{{location}}/{{rollout_kind_id}}`
///
/// When using the `pulumi import` command, RolloutKind can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:saasruntime/rolloutKind:RolloutKind default projects/{{project}}/locations/{{location}}/rolloutKinds/{{rollout_kind_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/rolloutKind:RolloutKind default {{project}}/{{location}}/{{rollout_kind_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/rolloutKind:RolloutKind default {{location}}/{{rollout_kind_id}}
/// ```
class RolloutKind extends pulumi.CustomResource {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The configuration for error budget. If the number of failed units exceeds
  /// max(allowed_count, allowed_ratio * total_units), the rollout will be paused.
  /// Structure is documented below.
  late final pulumi.Output<RolloutKindErrorBudget?> errorBudget;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/rolloutKinds/{rollout_kind_id}"
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The ID value for the new rollout kind.
  late final pulumi.Output<String> rolloutKindId;

  /// The strategy used for executing a Rollout. This is a required field.
  /// There are two supported values strategies which are used to control a rollout.
  /// - "Google.Cloud.Simple.AllAtOnce"
  /// - "Google.Cloud.Simple.OneLocationAtATime"
  /// A rollout with one of these simple strategies will rollout across
  /// all locations defined in the associated UnitKind's Saas Locations.
  late final pulumi.Output<String?> rolloutOrchestrationStrategy;

  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  late final pulumi.Output<String> uid;

  /// CEL(https://github.com/google/cel-spec) formatted filter string against
  /// Unit. The filter will be applied to determine the eligible unit population.
  /// This filter can only reduce, but not expand the scope of the rollout.
  late final pulumi.Output<String?> unitFilter;

  /// UnitKind that this rollout kind corresponds to. Rollouts stemming from this
  /// rollout kind will target the units of this unit kind. In other words, this
  /// defines the population of target units to be upgraded by rollouts.
  late final pulumi.Output<String> unitKind;

  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  late final pulumi.Output<String> updateTime;

  /// The config for updating the unit kind. By default, the unit kind will be
  /// updated on the rollout start.
  /// Possible values:
  /// UPDATE_UNIT_KIND_STRATEGY_ON_START
  /// UPDATE_UNIT_KIND_STRATEGY_NEVER
  /// Possible values are: `UPDATE_UNIT_KIND_STRATEGY_ON_START`, `UPDATE_UNIT_KIND_STRATEGY_NEVER`.
  late final pulumi.Output<String?> updateUnitKindStrategy;

  /// Creates a new [RolloutKind].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RolloutKind]. {@macro pulumi_saasruntime_rollout_kind_rollout_kind_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RolloutKind(
    String name, {
    RolloutKindArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:saasruntime/rolloutKind:RolloutKind',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    createTime = registerOutput<String>('createTime');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    errorBudget = registerOutput<RolloutKindErrorBudget?>('errorBudget');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rolloutKindId = registerOutput<String>('rolloutKindId');
    rolloutOrchestrationStrategy = registerOutput<String?>(
      'rolloutOrchestrationStrategy',
    );
    uid = registerOutput<String>('uid');
    unitFilter = registerOutput<String?>('unitFilter');
    unitKind = registerOutput<String>('unitKind');
    updateTime = registerOutput<String>('updateTime');
    updateUnitKindStrategy = registerOutput<String?>('updateUnitKindStrategy');
  }

  /// Gets an existing [RolloutKind] resource's state with the given [name] and [id].
  static RolloutKind get(
    String name,
    pulumi.Input<String> id, {
    RolloutKindState? state,
  }) {
    return RolloutKind._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RolloutKind._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:saasruntime/rolloutKind:RolloutKind',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    createTime = registerOutput<String>('createTime');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    errorBudget = registerOutput<RolloutKindErrorBudget?>('errorBudget');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rolloutKindId = registerOutput<String>('rolloutKindId');
    rolloutOrchestrationStrategy = registerOutput<String?>(
      'rolloutOrchestrationStrategy',
    );
    uid = registerOutput<String>('uid');
    unitFilter = registerOutput<String?>('unitFilter');
    unitKind = registerOutput<String>('unitKind');
    updateTime = registerOutput<String>('updateTime');
    updateUnitKindStrategy = registerOutput<String?>('updateUnitKindStrategy');
  }
}
