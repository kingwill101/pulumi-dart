import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_plan_args.dart';
import 'rollout_plan_state.dart';
import 'rollout_plan_wave.dart';

/// A RolloutPlan is the customer-defined strategy to divide a large-scale change
/// into smaller increments, referred to as "waves". Each wave targets a specific
/// portion of the overall affected area and defines criteria that must be met
/// before progressing to the subsequent wave.
///
///
/// To get more information about RolloutPlan, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/rolloutPlans)
///
/// ## Example Usage
///
/// ### Rollout Plan Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RolloutPlan("default", {
///     name: "tf-test-rollout-plan-_91980",
///     description: "A test rollout plan",
///     locationScope: "ZONAL",
///     waves: [{
///         displayName: "wave-1",
///         selectors: [{
///             locationSelector: {
///                 includedLocations: ["us-central1-a"],
///             },
///         }],
///         validation: {
///             type: "manual",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RolloutPlan("default",
///     name="tf-test-rollout-plan-_91980",
///     description="A test rollout plan",
///     location_scope="ZONAL",
///     waves=[{
///         "display_name": "wave-1",
///         "selectors": [{
///             "location_selector": {
///                 "included_locations": ["us-central1-a"],
///             },
///         }],
///         "validation": {
///             "type": "manual",
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
///     var @default = new Gcp.Compute.RolloutPlan("default", new()
///     {
///         Name = "tf-test-rollout-plan-_91980",
///         Description = "A test rollout plan",
///         LocationScope = "ZONAL",
///         Waves = new[]
///         {
///             new Gcp.Compute.Inputs.RolloutPlanWaveArgs
///             {
///                 DisplayName = "wave-1",
///                 Selectors = new[]
///                 {
///                     new Gcp.Compute.Inputs.RolloutPlanWaveSelectorArgs
///                     {
///                         LocationSelector = new Gcp.Compute.Inputs.RolloutPlanWaveSelectorLocationSelectorArgs
///                         {
///                             IncludedLocations = new[]
///                             {
///                                 "us-central1-a",
///                             },
///                         },
///                     },
///                 },
///                 Validation = new Gcp.Compute.Inputs.RolloutPlanWaveValidationArgs
///                 {
///                     Type = "manual",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewRolloutPlan(ctx, "default", &compute.RolloutPlanArgs{
/// 			Name:          pulumi.String("tf-test-rollout-plan-_91980"),
/// 			Description:   pulumi.String("A test rollout plan"),
/// 			LocationScope: pulumi.String("ZONAL"),
/// 			Waves: compute.RolloutPlanWaveArray{
/// 				&compute.RolloutPlanWaveArgs{
/// 					DisplayName: pulumi.String("wave-1"),
/// 					Selectors: compute.RolloutPlanWaveSelectorArray{
/// 						&compute.RolloutPlanWaveSelectorArgs{
/// 							LocationSelector: &compute.RolloutPlanWaveSelectorLocationSelectorArgs{
/// 								IncludedLocations: pulumi.StringArray{
/// 									pulumi.String("us-central1-a"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Validation: &compute.RolloutPlanWaveValidationArgs{
/// 						Type: pulumi.String("manual"),
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
/// resource "gcp_compute_rolloutplan" "default" {
///   name           = "tf-test-rollout-plan-_91980"
///   description    = "A test rollout plan"
///   location_scope = "ZONAL"
///   waves {
///     display_name = "wave-1"
///     selectors {
///       location_selector = {
///         included_locations = ["us-central1-a"]
///       }
///     }
///     validation = {
///       type = "manual"
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
/// import com.pulumi.gcp.compute.RolloutPlan;
/// import com.pulumi.gcp.compute.RolloutPlanArgs;
/// import com.pulumi.gcp.compute.inputs.RolloutPlanWaveArgs;
/// import com.pulumi.gcp.compute.inputs.RolloutPlanWaveSelectorArgs;
/// import com.pulumi.gcp.compute.inputs.RolloutPlanWaveSelectorLocationSelectorArgs;
/// import com.pulumi.gcp.compute.inputs.RolloutPlanWaveValidationArgs;
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
///         var default_ = new RolloutPlan("default", RolloutPlanArgs.builder()
///             .name("tf-test-rollout-plan-_91980")
///             .description("A test rollout plan")
///             .locationScope("ZONAL")
///             .waves(RolloutPlanWaveArgs.builder()
///                 .displayName("wave-1")
///                 .selectors(RolloutPlanWaveSelectorArgs.builder()
///                     .locationSelector(RolloutPlanWaveSelectorLocationSelectorArgs.builder()
///                         .includedLocations("us-central1-a")
///                         .build())
///                     .build())
///                 .validation(RolloutPlanWaveValidationArgs.builder()
///                     .type("manual")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RolloutPlan
///     properties:
///       name: tf-test-rollout-plan-_91980
///       description: A test rollout plan
///       locationScope: ZONAL
///       waves:
///         - displayName: wave-1
///           selectors:
///             - locationSelector:
///                 includedLocations:
///                   - us-central1-a
///           validation:
///             type: manual
/// ```
///
///
/// ## Import
///
/// RolloutPlan can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/rolloutPlans/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RolloutPlan can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/rolloutPlan:RolloutPlan default projects/{{project}}/global/rolloutPlans/{{name}}
/// $ pulumi import gcp:compute/rolloutPlan:RolloutPlan default {{project}}/{{name}}
/// $ pulumi import gcp:compute/rolloutPlan:RolloutPlan default {{name}}
/// ```
class RolloutPlan extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// The location scope of the rollout plan.
  /// Possible values are: `LOCATION_SCOPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.
  late final pulumi.Output<String?> locationScope;
  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// The waves included in this rollout plan.
  /// Structure is documented below.
  late final pulumi.Output<List<RolloutPlanWave>> waves;

  /// Creates a new [RolloutPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RolloutPlan]. {@macro pulumi_compute_rollout_plan_rollout_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RolloutPlan(
    String name, {
    RolloutPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/rolloutPlan:RolloutPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    locationScope = registerOutput<String?>('locationScope');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    waves = registerOutput<List<RolloutPlanWave>>('waves', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RolloutPlanWave>(guardedValue, (value) => RolloutPlanWave.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [RolloutPlan] resource's state with the given [name] and [id].
  static RolloutPlan get(
    String name,
    pulumi.Input<String> id, {
    RolloutPlanState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RolloutPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RolloutPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/rolloutPlan:RolloutPlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    locationScope = registerOutput<String?>('locationScope');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    waves = registerOutput<List<RolloutPlanWave>>('waves', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RolloutPlanWave>(guardedValue, (value) => RolloutPlanWave.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [RolloutPlan] resource.
  RolloutPlan.reference(String urn)
    : super(
        'gcp:compute/rolloutPlan:RolloutPlan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    locationScope = registerOutput<String?>('locationScope');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    waves = registerOutput<List<RolloutPlanWave>>('waves', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RolloutPlanWave>(guardedValue, (value) => RolloutPlanWave.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
