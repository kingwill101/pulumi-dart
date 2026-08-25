import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_tensorboard_run_args.dart';
import 'ai_tensorboard_run_state.dart';

/// A TensorboardRun is a single execution of a training job.
///
///
/// To get more information about TensorboardRun, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.tensorboards.experiments.runs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Tensorboard Run Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const tensorboard = new gcp.vertex.AiTensorboard("tensorboard", {
///     displayName: "Tensorboard for Run",
///     region: "us-central1",
/// });
/// const experiment = new gcp.vertex.AiTensorboardExperiment("experiment", {
///     location: "us-central1",
///     displayName: "sample experiment",
///     tensorboard: std.basenameOutput({
///         input: tensorboard.id,
///     }).result,
///     tensorboardExperimentId: "experiment",
/// });
/// const tensorboardRun = new gcp.vertex.AiTensorboardRun("tensorboard_run", {
///     location: "us-central1",
///     displayName: "sample run",
///     tensorboard: std.basenameOutput({
///         input: tensorboard.id,
///     }).result,
///     experiment: experiment.tensorboardExperimentId,
///     tensorboardRunId: "run",
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
///     display_name="Tensorboard for Run",
///     region="us-central1")
/// experiment = gcp.vertex.AiTensorboardExperiment("experiment",
///     location="us-central1",
///     display_name="sample experiment",
///     tensorboard=std.basename_output(input=tensorboard.id).result,
///     tensorboard_experiment_id="experiment")
/// tensorboard_run = gcp.vertex.AiTensorboardRun("tensorboard_run",
///     location="us-central1",
///     display_name="sample run",
///     tensorboard=std.basename_output(input=tensorboard.id).result,
///     experiment=experiment.tensorboard_experiment_id,
///     tensorboard_run_id="run",
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
///         DisplayName = "Tensorboard for Run",
///         Region = "us-central1",
///     });
///
///     var experiment = new Gcp.Vertex.AiTensorboardExperiment("experiment", new()
///     {
///         Location = "us-central1",
///         DisplayName = "sample experiment",
///         Tensorboard = Std.Basename.Invoke(new()
///         {
///             Input = tensorboard.Id,
///         }).Apply(invoke => invoke.Result),
///         TensorboardExperimentId = "experiment",
///     });
///
///     var tensorboardRun = new Gcp.Vertex.AiTensorboardRun("tensorboard_run", new()
///     {
///         Location = "us-central1",
///         DisplayName = "sample run",
///         Tensorboard = Std.Basename.Invoke(new()
///         {
///             Input = tensorboard.Id,
///         }).Apply(invoke => invoke.Result),
///         Experiment = experiment.TensorboardExperimentId,
///         TensorboardRunId = "run",
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
/// 			DisplayName: pulumi.String("Tensorboard for Run"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		experiment, err := vertex.NewAiTensorboardExperiment(ctx, "experiment", &vertex.AiTensorboardExperimentArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("sample experiment"),
/// 			Tensorboard: std.BasenameOutput(ctx, std.BasenameOutputArgs{
/// 				Input: tensorboard.ID().ToIDOutput().ToStringOutput(),
/// 			}, nil).Result(),
/// 			TensorboardExperimentId: pulumi.String("experiment"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiTensorboardRun(ctx, "tensorboard_run", &vertex.AiTensorboardRunArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("sample run"),
/// 			Tensorboard: std.BasenameOutput(ctx, std.BasenameOutputArgs{
/// 				Input: tensorboard.ID().ToIDOutput().ToStringOutput(),
/// 			}, nil).Result(),
/// 			Experiment:       experiment.TensorboardExperimentId,
/// 			TensorboardRunId: pulumi.String("run"),
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
///   display_name = "Tensorboard for Run"
///   region       = "us-central1"
/// }
/// resource "gcp_vertex_aitensorboardexperiment" "experiment" {
///   location                  = "us-central1"
///   display_name              = "sample experiment"
///   tensorboard               = basename(gcp_vertex_aitensorboard.tensorboard.id)
///   tensorboard_experiment_id = "experiment"
/// }
/// resource "gcp_vertex_aitensorboardrun" "tensorboard_run" {
///   location           = "us-central1"
///   display_name       = "sample run"
///   tensorboard        = basename(gcp_vertex_aitensorboard.tensorboard.id)
///   experiment         = gcp_vertex_aitensorboardexperiment.experiment.tensorboard_experiment_id
///   tensorboard_run_id = "run"
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
/// import com.pulumi.gcp.vertex.AiTensorboardRun;
/// import com.pulumi.gcp.vertex.AiTensorboardRunArgs;
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
///             .displayName("Tensorboard for Run")
///             .region("us-central1")
///             .build());
///
///         var experiment = new AiTensorboardExperiment("experiment", AiTensorboardExperimentArgs.builder()
///             .location("us-central1")
///             .displayName("sample experiment")
///             .tensorboard(StdFunctions.basename(BasenameArgs.builder()
///                 .input(tensorboard.id())
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .tensorboardExperimentId("experiment")
///             .build());
///
///         var tensorboardRun = new AiTensorboardRun("tensorboardRun", AiTensorboardRunArgs.builder()
///             .location("us-central1")
///             .displayName("sample run")
///             .tensorboard(StdFunctions.basename(BasenameArgs.builder()
///                 .input(tensorboard.id())
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .experiment(experiment.tensorboardExperimentId())
///             .tensorboardRunId("run")
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
///       displayName: Tensorboard for Run
///       region: us-central1
///   experiment:
///     type: gcp:vertex:AiTensorboardExperiment
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
///   tensorboardRun:
///     type: gcp:vertex:AiTensorboardRun
///     name: tensorboard_run
///     properties:
///       location: us-central1
///       displayName: sample run
///       tensorboard:
///         fn::invoke:
///           function: std:basename
///           arguments:
///             input: ${tensorboard.id}
///           return: result
///       experiment: ${experiment.tensorboardExperimentId}
///       tensorboardRunId: run
///       labels:
///         key: value
/// ```
///
///
/// ## Import
///
/// TensorboardRun can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/tensorboards/{{tensorboard}}/experiments/{{experiment}}/runs/{{tensorboard_run_id}}`
/// * `{{project}}/{{location}}/{{tensorboard}}/{{experiment}}/{{tensorboard_run_id}}`
/// * `{{location}}/{{tensorboard}}/{{experiment}}/{{tensorboard_run_id}}`
///
///
/// When using the `pulumi import` command, TensorboardRun can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiTensorboardRun:AiTensorboardRun default projects/{{project}}/locations/{{location}}/tensorboards/{{tensorboard}}/experiments/{{experiment}}/runs/{{tensorboard_run_id}}
/// $ pulumi import gcp:vertex/aiTensorboardRun:AiTensorboardRun default {{project}}/{{location}}/{{tensorboard}}/{{experiment}}/{{tensorboard_run_id}}
/// $ pulumi import gcp:vertex/aiTensorboardRun:AiTensorboardRun default {{location}}/{{tensorboard}}/{{experiment}}/{{tensorboard_run_id}}
/// ```
class AiTensorboardRun extends pulumi.CustomResource {
  /// Timestamp when this TensorboardRun was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of this TensorboardRun.
  late final pulumi.Output<String?> description;
  /// User provided name of this TensorboardRun.
  /// This value must be unique among all TensorboardRuns
  /// belonging to the same parent TensorboardExperiment.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The Tensorboard Experiment ID.
  late final pulumi.Output<String> experiment;
  /// The labels with user-defined metadata to organize your TensorboardRuns.
  /// This field will be used to filter and visualize Runs in the Tensorboard UI.
  /// For example, a Vertex AI training job can set a label
  /// aiplatform.googleapis.com/training_job_id=xxxxx to all the runs created
  /// within that job. An end user can set a label experiment_id=xxxxx for all
  /// the runs produced in a Jupyter notebook. These runs can be grouped by a
  /// label value and visualized together in the Tensorboard UI.
  /// Label keys and values can be no longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  /// No more than 64 user labels can be associated with one TensorboardRun
  /// (System labels are excluded).
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// System reserved label keys are prefixed with "aiplatform.googleapis.com/"
  /// and are immutable.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the Tensorboard Run. eg us-central1
  late final pulumi.Output<String> location;
  /// Name of the TensorboardRun.
  /// Format:
  /// `projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}/runs/{run}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The Tensorboard instance.
  late final pulumi.Output<String> tensorboard;
  /// The ID to use for the Tensorboard run, which becomes the final
  /// component of the Tensorboard run's resource name.
  /// This value should be 1-128 characters, and valid characters
  /// are `/a-z-/`.
  late final pulumi.Output<String> tensorboardRunId;
  /// Timestamp when this TensorboardRun was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiTensorboardRun].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiTensorboardRun]. {@macro pulumi_vertex_ai_tensorboard_run_ai_tensorboard_run_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiTensorboardRun(
    String name, {
    AiTensorboardRunArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiTensorboardRun:AiTensorboardRun',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    experiment = registerOutput<String>('experiment');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    tensorboard = registerOutput<String>('tensorboard');
    tensorboardRunId = registerOutput<String>('tensorboardRunId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiTensorboardRun] resource's state with the given [name] and [id].
  static AiTensorboardRun get(
    String name,
    pulumi.Input<String> id, {
    AiTensorboardRunState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiTensorboardRun._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiTensorboardRun._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiTensorboardRun:AiTensorboardRun',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    experiment = registerOutput<String>('experiment');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    tensorboard = registerOutput<String>('tensorboard');
    tensorboardRunId = registerOutput<String>('tensorboardRunId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AiTensorboardRun] resource.
  AiTensorboardRun.reference(String urn)
    : super(
        'gcp:vertex/aiTensorboardRun:AiTensorboardRun',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    experiment = registerOutput<String>('experiment');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    tensorboard = registerOutput<String>('tensorboard');
    tensorboardRunId = registerOutput<String>('tensorboardRunId');
    updateTime = registerOutput<String>('updateTime');
  }
}
