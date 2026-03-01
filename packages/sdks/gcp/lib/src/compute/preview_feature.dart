import 'package:pulumi/pulumi.dart' as pulumi;
import 'preview_feature_args.dart';
import 'preview_feature_rollout_operation.dart';
import 'preview_feature_state.dart';

/// Represents a single Google Compute Engine preview feature such as Alpha API access, which can be enabled or unspecified for a project.
///
///
/// To get more information about PreviewFeature, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/previewFeatures)
/// * How-to Guides
/// * [Use the Compute Engine alpha API](https://cloud.google.com/compute/docs/reference/rest/alpha)
///
/// ## Example Usage
///
/// ### Preview Feature Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gcePreviewFeature = new gcp.compute.PreviewFeature("gce_preview_feature", {
///     name: "alpha-api-access",
///     activationStatus: "ACTIVATION_STATE_UNSPECIFIED",
///     rolloutOperation: {
///         rolloutInput: {
///             predefinedRolloutPlan: "ROLLOUT_PLAN_FAST_ROLLOUT",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gce_preview_feature = gcp.compute.PreviewFeature("gce_preview_feature",
///     name="alpha-api-access",
///     activation_status="ACTIVATION_STATE_UNSPECIFIED",
///     rollout_operation={
///         "rollout_input": {
///             "predefined_rollout_plan": "ROLLOUT_PLAN_FAST_ROLLOUT",
///         },
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
///     var gcePreviewFeature = new Gcp.Compute.PreviewFeature("gce_preview_feature", new()
///     {
///         Name = "alpha-api-access",
///         ActivationStatus = "ACTIVATION_STATE_UNSPECIFIED",
///         RolloutOperation = new Gcp.Compute.Inputs.PreviewFeatureRolloutOperationArgs
///         {
///             RolloutInput = new Gcp.Compute.Inputs.PreviewFeatureRolloutOperationRolloutInputArgs
///             {
///                 PredefinedRolloutPlan = "ROLLOUT_PLAN_FAST_ROLLOUT",
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
/// 		_, err := compute.NewPreviewFeature(ctx, "gce_preview_feature", &compute.PreviewFeatureArgs{
/// 			Name:             pulumi.String("alpha-api-access"),
/// 			ActivationStatus: pulumi.String("ACTIVATION_STATE_UNSPECIFIED"),
/// 			RolloutOperation: &compute.PreviewFeatureRolloutOperationArgs{
/// 				RolloutInput: &compute.PreviewFeatureRolloutOperationRolloutInputArgs{
/// 					PredefinedRolloutPlan: pulumi.String("ROLLOUT_PLAN_FAST_ROLLOUT"),
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
/// import com.pulumi.gcp.compute.PreviewFeature;
/// import com.pulumi.gcp.compute.PreviewFeatureArgs;
/// import com.pulumi.gcp.compute.inputs.PreviewFeatureRolloutOperationArgs;
/// import com.pulumi.gcp.compute.inputs.PreviewFeatureRolloutOperationRolloutInputArgs;
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
///         var gcePreviewFeature = new PreviewFeature("gcePreviewFeature", PreviewFeatureArgs.builder()
///             .name("alpha-api-access")
///             .activationStatus("ACTIVATION_STATE_UNSPECIFIED")
///             .rolloutOperation(PreviewFeatureRolloutOperationArgs.builder()
///                 .rolloutInput(PreviewFeatureRolloutOperationRolloutInputArgs.builder()
///                     .predefinedRolloutPlan("ROLLOUT_PLAN_FAST_ROLLOUT")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   gcePreviewFeature:
///     type: gcp:compute:PreviewFeature
///     name: gce_preview_feature
///     properties:
///       name: alpha-api-access
///       activationStatus: ACTIVATION_STATE_UNSPECIFIED
///       rolloutOperation:
///         rolloutInput:
///           predefinedRolloutPlan: ROLLOUT_PLAN_FAST_ROLLOUT
/// ```
///
///
/// ## Import
///
/// PreviewFeature can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/previewFeatures/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PreviewFeature can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/previewFeature:PreviewFeature default projects/{{project}}/global/previewFeatures/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/previewFeature:PreviewFeature default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/previewFeature:PreviewFeature default {{name}}
/// ```
class PreviewFeature extends pulumi.CustomResource {
  /// The activation status of the preview feature.
  /// Possible values are: `ENABLED`, `ACTIVATION_STATE_UNSPECIFIED`.
  late final pulumi.Output<String> activationStatus;
  /// The name of the preview feature.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The rollout operation of the feature.
  /// Structure is documented below.
  late final pulumi.Output<PreviewFeatureRolloutOperation?> rolloutOperation;

  /// Creates a new [PreviewFeature].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PreviewFeature]. {@macro pulumi_compute_preview_feature_preview_feature_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PreviewFeature(
    String name, {
    PreviewFeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/previewFeature:PreviewFeature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activationStatus = registerOutput<String>('activationStatus');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rolloutOperation = registerOutput<PreviewFeatureRolloutOperation?>('rolloutOperation');
  }

  /// Gets an existing [PreviewFeature] resource's state with the given [name] and [id].
  static PreviewFeature get(
    String name,
    pulumi.Input<String> id, {
    PreviewFeatureState? state,
  }) {
    return PreviewFeature._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PreviewFeature._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/previewFeature:PreviewFeature',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activationStatus = registerOutput<String>('activationStatus');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rolloutOperation = registerOutput<PreviewFeatureRolloutOperation?>('rolloutOperation');
  }
}
