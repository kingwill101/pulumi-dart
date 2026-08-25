import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_garden_enable_model_args.dart';
import 'ai_model_garden_enable_model_state.dart';

/// Enables a Model Garden publisher model for a project so that it can be
/// deployed. This calls the synchronous
/// `ModelGardenService.EnableModel` method, which checks that the prerequisites
/// for the model are met (for example, a completed questionnaire and accepted
/// consents, or an active Private Offer) before enabling it.
///
/// &gt; **Note:** The underlying API does not provide a way to disable a model
/// once it has been enabled, so destroying this resource only removes it from
/// Terraform state and does not affect the project's enablement status.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about ModelGardenEnableModel, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.publishers.models/enableModel)
/// * How-to Guides
/// * [Overview of Model Garden](https://cloud.google.com/vertex-ai/generative-ai/docs/model-garden/explore-models)
/// * [Use models in Model Garden](https://cloud.google.com/vertex-ai/generative-ai/docs/model-garden/use-models)
///
/// ## Example Usage
///
/// ### Vertex Ai Model Garden Enable Model Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const enable = new gcp.vertex.AiModelGardenEnableModel("enable", {publisherModelName: "publishers/google/models/paligemma@paligemma-224-float32"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// enable = gcp.vertex.AiModelGardenEnableModel("enable", publisher_model_name="publishers/google/models/paligemma@paligemma-224-float32")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var enable = new Gcp.Vertex.AiModelGardenEnableModel("enable", new()
///     {
///         PublisherModelName = "publishers/google/models/paligemma@paligemma-224-float32",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiModelGardenEnableModel(ctx, "enable", &vertex.AiModelGardenEnableModelArgs{
/// 			PublisherModelName: pulumi.String("publishers/google/models/paligemma@paligemma-224-float32"),
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
/// resource "gcp_vertex_aimodelgardenenablemodel" "enable" {
///   publisher_model_name = "publishers/google/models/paligemma@paligemma-224-float32"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiModelGardenEnableModel;
/// import com.pulumi.gcp.vertex.AiModelGardenEnableModelArgs;
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
///         var enable = new AiModelGardenEnableModel("enable", AiModelGardenEnableModelArgs.builder()
///             .publisherModelName("publishers/google/models/paligemma@paligemma-224-float32")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   enable:
///     type: gcp:vertex:AiModelGardenEnableModel
///     properties:
///       publisherModelName: publishers/google/models/paligemma@paligemma-224-float32
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class AiModelGardenEnableModel extends pulumi.CustomResource {
  /// Output only. The result of the model enablement.
  late final pulumi.Output<String> enablementState;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. The publisher endpoint that the project is enabled for.
  /// Format:
  /// `projects/{project}/locations/{location}/publishers/{publisher}/models/{publisher_model}`.
  late final pulumi.Output<String> publisherEndpoint;
  /// The resource name of the Model Garden publisher model to enable.
  /// Format: `publishers/{publisher}/models/{publisher_model}`, optionally
  /// with a version suffix, for example
  /// `publishers/google/models/paligemma@paligemma-224-float32`.
  late final pulumi.Output<String> publisherModelName;

  /// Creates a new [AiModelGardenEnableModel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiModelGardenEnableModel]. {@macro pulumi_vertex_ai_model_garden_enable_model_ai_model_garden_enable_model_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiModelGardenEnableModel(
    String name, {
    AiModelGardenEnableModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiModelGardenEnableModel:AiModelGardenEnableModel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    enablementState = registerOutput<String>('enablementState');
    project = registerOutput<String>('project');
    publisherEndpoint = registerOutput<String>('publisherEndpoint');
    publisherModelName = registerOutput<String>('publisherModelName');
  }

  /// Gets an existing [AiModelGardenEnableModel] resource's state with the given [name] and [id].
  static AiModelGardenEnableModel get(
    String name,
    pulumi.Input<String> id, {
    AiModelGardenEnableModelState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiModelGardenEnableModel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiModelGardenEnableModel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiModelGardenEnableModel:AiModelGardenEnableModel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enablementState = registerOutput<String>('enablementState');
    project = registerOutput<String>('project');
    publisherEndpoint = registerOutput<String>('publisherEndpoint');
    publisherModelName = registerOutput<String>('publisherModelName');
  }

  /// Creates a typed reference to an existing [AiModelGardenEnableModel] resource.
  AiModelGardenEnableModel.reference(String urn)
    : super(
        'gcp:vertex/aiModelGardenEnableModel:AiModelGardenEnableModel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    enablementState = registerOutput<String>('enablementState');
    project = registerOutput<String>('project');
    publisherEndpoint = registerOutput<String>('publisherEndpoint');
    publisherModelName = registerOutput<String>('publisherModelName');
  }
}
