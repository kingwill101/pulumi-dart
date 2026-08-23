import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_inference_token_args.dart';
import 'dedicated_inference_token_state.dart';

/// Provides a DigitalOcean Dedicated Inference Token resource. This can be used to
/// create and revoke API tokens for dedicated inference endpoints.
///
/// &gt; **Note:** The `token` attribute is only available immediately after creation
/// and cannot be retrieved afterwards. Make sure to store it securely.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.DedicatedInference("example", {
///     name: "my-inference-endpoint",
///     region: "tor1",
///     modelDeployments: [{
///         modelSlug: "deepseek-r1-distill-qwen-14b",
///         modelProvider: "digitalocean",
///         accelerators: [{
///             acceleratorSlug: "gpu-h100x1-80gb",
///             scale: 1,
///             type: "nvidia_h100",
///         }],
///     }],
/// });
/// const exampleDedicatedInferenceToken = new digitalocean.DedicatedInferenceToken("example", {
///     dedicatedInferenceId: example.id,
///     name: "my-api-token",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.DedicatedInference("example",
///     name="my-inference-endpoint",
///     region="tor1",
///     model_deployments=[{
///         "model_slug": "deepseek-r1-distill-qwen-14b",
///         "model_provider": "digitalocean",
///         "accelerators": [{
///             "accelerator_slug": "gpu-h100x1-80gb",
///             "scale": 1,
///             "type": "nvidia_h100",
///         }],
///     }])
/// example_dedicated_inference_token = digitalocean.DedicatedInferenceToken("example",
///     dedicated_inference_id=example.id,
///     name="my-api-token")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new DigitalOcean.DedicatedInference("example", new()
///     {
///         Name = "my-inference-endpoint",
///         Region = "tor1",
///         ModelDeployments = new[]
///         {
///             new DigitalOcean.Inputs.DedicatedInferenceModelDeploymentArgs
///             {
///                 ModelSlug = "deepseek-r1-distill-qwen-14b",
///                 ModelProvider = "digitalocean",
///                 Accelerators = new[]
///                 {
///                     new DigitalOcean.Inputs.DedicatedInferenceModelDeploymentAcceleratorArgs
///                     {
///                         AcceleratorSlug = "gpu-h100x1-80gb",
///                         Scale = 1,
///                         Type = "nvidia_h100",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleDedicatedInferenceToken = new DigitalOcean.DedicatedInferenceToken("example", new()
///     {
///         DedicatedInferenceId = example.Id,
///         Name = "my-api-token",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.NewDedicatedInference(ctx, "example", &digitalocean.DedicatedInferenceArgs{
/// 			Name:   pulumi.String("my-inference-endpoint"),
/// 			Region: pulumi.String("tor1"),
/// 			ModelDeployments: digitalocean.DedicatedInferenceModelDeploymentArray{
/// 				&digitalocean.DedicatedInferenceModelDeploymentArgs{
/// 					ModelSlug:     pulumi.String("deepseek-r1-distill-qwen-14b"),
/// 					ModelProvider: pulumi.String("digitalocean"),
/// 					Accelerators: digitalocean.DedicatedInferenceModelDeploymentAcceleratorArray{
/// 						&digitalocean.DedicatedInferenceModelDeploymentAcceleratorArgs{
/// 							AcceleratorSlug: pulumi.String("gpu-h100x1-80gb"),
/// 							Scale:           pulumi.Int(1),
/// 							Type:            pulumi.String("nvidia_h100"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDedicatedInferenceToken(ctx, "example", &digitalocean.DedicatedInferenceTokenArgs{
/// 			DedicatedInferenceId: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:                 pulumi.String("my-api-token"),
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_dedicatedinference" "example" {
///   name   = "my-inference-endpoint"
///   region = "tor1"
///   model_deployments {
///     model_slug     = "deepseek-r1-distill-qwen-14b"
///     model_provider = "digitalocean"
///     accelerators {
///       accelerator_slug = "gpu-h100x1-80gb"
///       scale            = 1
///       type             = "nvidia_h100"
///     }
///   }
/// }
/// resource "digitalocean_dedicatedinferencetoken" "example" {
///   dedicated_inference_id = digitalocean_dedicatedinference.example.id
///   name                   = "my-api-token"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DedicatedInference;
/// import com.pulumi.digitalocean.DedicatedInferenceArgs;
/// import com.pulumi.digitalocean.inputs.DedicatedInferenceModelDeploymentArgs;
/// import com.pulumi.digitalocean.inputs.DedicatedInferenceModelDeploymentAcceleratorArgs;
/// import com.pulumi.digitalocean.DedicatedInferenceToken;
/// import com.pulumi.digitalocean.DedicatedInferenceTokenArgs;
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
///         var example = new DedicatedInference("example", DedicatedInferenceArgs.builder()
///             .name("my-inference-endpoint")
///             .region("tor1")
///             .modelDeployments(DedicatedInferenceModelDeploymentArgs.builder()
///                 .modelSlug("deepseek-r1-distill-qwen-14b")
///                 .modelProvider("digitalocean")
///                 .accelerators(DedicatedInferenceModelDeploymentAcceleratorArgs.builder()
///                     .acceleratorSlug("gpu-h100x1-80gb")
///                     .scale(1)
///                     .type("nvidia_h100")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleDedicatedInferenceToken = new DedicatedInferenceToken("exampleDedicatedInferenceToken", DedicatedInferenceTokenArgs.builder()
///             .dedicatedInferenceId(example.id())
///             .name("my-api-token")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:DedicatedInference
///     properties:
///       name: my-inference-endpoint
///       region: tor1
///       modelDeployments:
///         - modelSlug: deepseek-r1-distill-qwen-14b
///           modelProvider: digitalocean
///           accelerators:
///             - acceleratorSlug: gpu-h100x1-80gb
///               scale: 1
///               type: nvidia_h100
///   exampleDedicatedInferenceToken:
///     type: digitalocean:DedicatedInferenceToken
///     name: example
///     properties:
///       dedicatedInferenceId: ${example.id}
///       name: my-api-token
/// ```
///
///
/// ## Import
///
/// Dedicated inference tokens can be imported using the composite ID
/// `{dedicated_inference_id}:{token_id}`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/dedicatedInferenceToken:DedicatedInferenceToken example endpoint-id:token-id
/// ```
class DedicatedInferenceToken extends pulumi.CustomResource {
  /// The date and time when the token was created.
  late final pulumi.Output<String> createdAt;
  /// The ID of the dedicated inference endpoint this token belongs to. Changing this forces a new resource.
  late final pulumi.Output<String> dedicatedInferenceId;
  /// A human-readable name for the token. Changing this forces a new resource.
  late final pulumi.Output<String> name;
  /// (Sensitive) The token value. Only available immediately after creation and not retrievable afterwards.
  late final pulumi.Output<String> token;

  /// Creates a new [DedicatedInferenceToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedInferenceToken]. {@macro pulumi_index_dedicated_inference_token_dedicated_inference_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedInferenceToken(
    String name, {
    DedicatedInferenceTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/dedicatedInferenceToken:DedicatedInferenceToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    dedicatedInferenceId = registerOutput<String>('dedicatedInferenceId');
    this.name = registerOutput<String>('name');
    token = registerOutput<String>('token');
  }

  /// Gets an existing [DedicatedInferenceToken] resource's state with the given [name] and [id].
  static DedicatedInferenceToken get(
    String name,
    pulumi.Input<String> id, {
    DedicatedInferenceTokenState? state,
  }) {
    return DedicatedInferenceToken._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DedicatedInferenceToken._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/dedicatedInferenceToken:DedicatedInferenceToken',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    dedicatedInferenceId = registerOutput<String>('dedicatedInferenceId');
    this.name = registerOutput<String>('name');
    token = registerOutput<String>('token');
  }
}
