import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_tensorboard_experiment_args.dart';
import 'ai_tensorboard_experiment_state.dart';

/// A TensorboardExperiment is a group of TensorboardRuns that are logically grouped together.
///
///
/// To get more information about TensorboardExperiment, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.tensorboards.experiments)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Tensorboard Experiment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const tensorboard = new gcp.vertex.AiTensorboard("tensorboard", {
///     displayName: "Tensorboard for Experiment",
///     region: "us-central1",
/// });
/// const tensorboardExperiment = new gcp.vertex.AiTensorboardExperiment("tensorboard_experiment", {
///     location: "us-central1",
///     displayName: "sample experiment",
///     tensorboard: std.basenameOutput({
///         input: tensorboard.id,
///     }).result,
///     tensorboardExperimentId: "experiment",
///     source: "a custom training job",
///     labels: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// tensorboard = gcp.vertex.AiTensorboard("tensorboard",
///     display_name="Tensorboard for Experiment",
///     region="us-central1")
/// tensorboard_experiment = gcp.vertex.AiTensorboardExperiment("tensorboard_experiment",
///     location="us-central1",
///     display_name="sample experiment",
///     tensorboard=std.basename_output(input=tensorboard.id).result,
///     tensorboard_experiment_id="experiment",
///     source="a custom training job",
///     labels={
///         "key": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tensorboard = new Gcp.Vertex.AiTensorboard("tensorboard", new()
///     {
///         DisplayName = "Tensorboard for Experiment",
///         Region = "us-central1",
///     });
///
///     var tensorboardExperiment = new Gcp.Vertex.AiTensorboardExperiment("tensorboard_experiment", new()
///     {
///         Location = "us-central1",
///         DisplayName = "sample experiment",
///         Tensorboard = Std.Basename.Invoke(new()
///         {
///             Input = tensorboard.Id,
///         }).Apply(invoke => invoke.Result),
///         TensorboardExperimentId = "experiment",
///         Source = "a custom training job",
///         Labels =
///         {
///             { "key", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tensorboard, err := vertex.NewAiTensorboard(ctx, "tensorboard", &vertex.AiTensorboardArgs{
/// 			DisplayName: pulumi.String("Tensorboard for Experiment"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiTensorboardExperiment(ctx, "tensorboard_experiment", &vertex.AiTensorboardExperimentArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("sample experiment"),
/// 			Tensorboard: std.BasenameOutput(ctx, std.BasenameOutputArgs{
/// 				Input: tensorboard.ID().ToIDOutput().ToStringOutput(),
/// 			}, nil).Result(),
/// 			TensorboardExperimentId: pulumi.String("experiment"),
/// 			Source:                  pulumi.String("a custom training job"),
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_vertex_aitensorboard" "tensorboard" {
///   display_name = "Tensorboard for Experiment"
///   region       = "us-central1"
/// }
/// resource "gcp_vertex_aitensorboardexperiment" "tensorboard_experiment" {
///   location                  = "us-central1"
///   display_name              = "sample experiment"
///   tensorboard               = basename(gcp_vertex_aitensorboard.tensorboard.id)
///   tensorboard_experiment_id = "experiment"
///   source                    = "a custom training job"
///   labels = {
///     "key" = "value"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiTensorboard;
/// import com.pulumi.gcp.vertex.AiTensorboardArgs;
/// import com.pulumi.gcp.vertex.AiTensorboardExperiment;
/// import com.pulumi.gcp.vertex.AiTensorboardExperimentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.BasenameArgs;
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
///         var tensorboard = new AiTensorboard("tensorboard", AiTensorboardArgs.builder()
///             .displayName("Tensorboard for Experiment")
///             .region("us-central1")
///             .build());
///
///         var tensorboardExperiment = new AiTensorboardExperiment("tensorboardExperiment", AiTensorboardExperimentArgs.builder()
///             .location("us-central1")
///             .displayName("sample experiment")
///             .tensorboard(StdFunctions.basename(BasenameArgs.builder()
///                 .input(tensorboard.id())
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .tensorboardExperimentId("experiment")
///             .source("a custom training job")
///             .labels(Map.of("key", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tensorboard:
///     type: gcp:vertex:AiTensorboard
///     properties:
///       displayName: Tensorboard for Experiment
///       region: us-central1
///   tensorboardExperiment:
///     type: gcp:vertex:AiTensorboardExperiment
///     name: tensorboard_experiment
///     properties:
///       location: us-central1
///       displayName: sample experiment
///       tensorboard:
///         fn::invoke:
///           function: std:basename
///           arguments:
///             input: ${tensorboard.id}
///           return: result
///       tensorboardExperimentId: experiment
///       source: a custom training job
///       labels:
///         key: value
/// ```
///
///
/// ## Import
///
/// TensorboardExperiment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/tensorboards/{{tensorboard}}/experiments/{{tensorboard_experiment_id}}`
/// * `{{project}}/{{location}}/{{tensorboard}}/{{tensorboard_experiment_id}}`
/// * `{{location}}/{{tensorboard}}/{{tensorboard_experiment_id}}`
///
///
/// When using the `pulumi import` command, TensorboardExperiment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiTensorboardExperiment:AiTensorboardExperiment default projects/{{project}}/locations/{{location}}/tensorboards/{{tensorboard}}/experiments/{{tensorboard_experiment_id}}
/// $ pulumi import gcp:vertex/aiTensorboardExperiment:AiTensorboardExperiment default {{project}}/{{location}}/{{tensorboard}}/{{tensorboard_experiment_id}}
/// $ pulumi import gcp:vertex/aiTensorboardExperiment:AiTensorboardExperiment default {{location}}/{{tensorboard}}/{{tensorboard_experiment_id}}
/// ```
class AiTensorboardExperiment extends pulumi.CustomResource {
  /// Timestamp when this TensorboardExperiment was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of this TensorboardExperiment.
  late final pulumi.Output<String?> description;
  /// User provided name of this TensorboardExperiment.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The labels with user-defined metadata to organize your
  /// TensorboardExperiment.
  /// Label keys and values cannot be longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  /// No more than 64 user labels can be associated with one Dataset (System
  /// labels are excluded).
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// System reserved label keys are prefixed with `aiplatform.googleapis.com/`
  /// and are immutable. The following system labels exist for each Dataset:
  /// * `aiplatform.googleapis.com/dataset_metadata_schema`: output only. Its
  /// value is the metadata_schema's title.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the Tensorboard Experiment. eg us-central1
  late final pulumi.Output<String> location;
  /// Name of the TensorboardExperiment.
  /// Format:
  /// `projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Source of the TensorboardExperiment. Example: a custom training job.
  late final pulumi.Output<String?> source;
  /// The Tensorboard instance.
  late final pulumi.Output<String> tensorboard;
  /// The ID to use for the Tensorboard experiment, which becomes the final
  /// component of the Tensorboard experiment's resource name.
  /// This value should be 1-128 characters, and valid characters
  /// are `/a-z-/`.
  late final pulumi.Output<String> tensorboardExperimentId;
  /// Timestamp when this TensorboardExperiment was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiTensorboardExperiment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiTensorboardExperiment]. {@macro pulumi_vertex_ai_tensorboard_experiment_ai_tensorboard_experiment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiTensorboardExperiment(
    String name, {
    AiTensorboardExperimentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiTensorboardExperiment:AiTensorboardExperiment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    source = registerOutput<String?>('source');
    tensorboard = registerOutput<String>('tensorboard');
    tensorboardExperimentId = registerOutput<String>('tensorboardExperimentId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiTensorboardExperiment] resource's state with the given [name] and [id].
  static AiTensorboardExperiment get(
    String name,
    pulumi.Input<String> id, {
    AiTensorboardExperimentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiTensorboardExperiment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiTensorboardExperiment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiTensorboardExperiment:AiTensorboardExperiment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    source = registerOutput<String?>('source');
    tensorboard = registerOutput<String>('tensorboard');
    tensorboardExperimentId = registerOutput<String>('tensorboardExperimentId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AiTensorboardExperiment] resource.
  AiTensorboardExperiment.reference(String urn)
    : super(
        'gcp:vertex/aiTensorboardExperiment:AiTensorboardExperiment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    source = registerOutput<String?>('source');
    tensorboard = registerOutput<String>('tensorboard');
    tensorboardExperimentId = registerOutput<String>('tensorboardExperimentId');
    updateTime = registerOutput<String>('updateTime');
  }
}
