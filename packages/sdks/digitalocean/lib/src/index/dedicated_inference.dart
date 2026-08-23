import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_inference_args.dart';
import 'dedicated_inference_state.dart';

/// Provides a DigitalOcean Dedicated Inference resource. This can be used to create,
/// modify, and delete dedicated inference endpoints for running GPU-accelerated
/// model inference.
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
/// 		_, err := digitalocean.NewDedicatedInference(ctx, "example", &digitalocean.DedicatedInferenceArgs{
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
/// ```
///
///
/// ### With Public Endpoint
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const _public = new digitalocean.DedicatedInference("public", {
///     name: "my-public-inference",
///     region: "tor1",
///     enablePublicEndpoint: true,
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// public = digitalocean.DedicatedInference("public",
///     name="my-public-inference",
///     region="tor1",
///     enable_public_endpoint=True,
///     model_deployments=[{
///         "model_slug": "deepseek-r1-distill-qwen-14b",
///         "model_provider": "digitalocean",
///         "accelerators": [{
///             "accelerator_slug": "gpu-h100x1-80gb",
///             "scale": 1,
///             "type": "nvidia_h100",
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @public = new DigitalOcean.DedicatedInference("public", new()
///     {
///         Name = "my-public-inference",
///         Region = "tor1",
///         EnablePublicEndpoint = true,
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
/// 		_, err := digitalocean.NewDedicatedInference(ctx, "public", &digitalocean.DedicatedInferenceArgs{
/// 			Name:                 pulumi.String("my-public-inference"),
/// 			Region:               pulumi.String("tor1"),
/// 			EnablePublicEndpoint: pulumi.Bool(true),
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
/// resource "digitalocean_dedicatedinference" "public" {
///   name                   = "my-public-inference"
///   region                 = "tor1"
///   enable_public_endpoint = true
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
///         var public_ = new DedicatedInference("public", DedicatedInferenceArgs.builder()
///             .name("my-public-inference")
///             .region("tor1")
///             .enablePublicEndpoint(true)
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   public:
///     type: digitalocean:DedicatedInference
///     properties:
///       name: my-public-inference
///       region: tor1
///       enablePublicEndpoint: true
///       modelDeployments:
///         - modelSlug: deepseek-r1-distill-qwen-14b
///           modelProvider: digitalocean
///           accelerators:
///             - acceleratorSlug: gpu-h100x1-80gb
///               scale: 1
///               type: nvidia_h100
/// ```
///
///
/// ### With VPC
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const _private = new digitalocean.DedicatedInference("private", {
///     name: "my-private-inference",
///     region: "tor1",
///     vpcUuid: example.id,
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// private = digitalocean.DedicatedInference("private",
///     name="my-private-inference",
///     region="tor1",
///     vpc_uuid=example["id"],
///     model_deployments=[{
///         "model_slug": "deepseek-r1-distill-qwen-14b",
///         "model_provider": "digitalocean",
///         "accelerators": [{
///             "accelerator_slug": "gpu-h100x1-80gb",
///             "scale": 1,
///             "type": "nvidia_h100",
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @private = new DigitalOcean.DedicatedInference("private", new()
///     {
///         Name = "my-private-inference",
///         Region = "tor1",
///         VpcUuid = example.Id,
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
/// 		_, err := digitalocean.NewDedicatedInference(ctx, "private", &digitalocean.DedicatedInferenceArgs{
/// 			Name:    pulumi.String("my-private-inference"),
/// 			Region:  pulumi.String("tor1"),
/// 			VpcUuid: pulumi.Any(example.Id),
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
/// resource "digitalocean_dedicatedinference" "private" {
///   name     = "my-private-inference"
///   region   = "tor1"
///   vpc_uuid = example.id
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
///         var private_ = new DedicatedInference("private", DedicatedInferenceArgs.builder()
///             .name("my-private-inference")
///             .region("tor1")
///             .vpcUuid(example.id())
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   private:
///     type: digitalocean:DedicatedInference
///     properties:
///       name: my-private-inference
///       region: tor1
///       vpcUuid: ${example.id}
///       modelDeployments:
///         - modelSlug: deepseek-r1-distill-qwen-14b
///           modelProvider: digitalocean
///           accelerators:
///             - acceleratorSlug: gpu-h100x1-80gb
///               scale: 1
///               type: nvidia_h100
/// ```
///
///
/// ## Import
///
/// Dedicated inference endpoints can be imported using their `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/dedicatedInference:DedicatedInference example endpoint-id
/// ```
class DedicatedInference extends pulumi.CustomResource {
  /// The date and time when the dedicated inference endpoint was created.
  late final pulumi.Output<String> createdAt;
  /// Whether to enable a public HTTPS endpoint for the dedicated inference endpoint. Defaults to `false`. This field is immutable after creation and changing it forces a new resource.
  late final pulumi.Output<bool?> enablePublicEndpoint;
  /// A HuggingFace token for accessing gated models.
  late final pulumi.Output<String?> huggingFaceToken;
  /// The list of model deployments to run on the dedicated inference endpoint. Each `modelDeployments` block supports:
  late final pulumi.Output<List<Map<String, dynamic>>> modelDeployments;
  /// A human-readable name for the dedicated inference endpoint.
  late final pulumi.Output<String> name;
  /// The fully-qualified domain name of the private endpoint.
  late final pulumi.Output<String> privateEndpointFqdn;
  /// The fully-qualified domain name of the public endpoint, if enabled.
  late final pulumi.Output<String> publicEndpointFqdn;
  /// The region slug where the dedicated inference endpoint will be deployed. Changing this forces a new resource.
  late final pulumi.Output<String> region;
  /// The current status of the dedicated inference endpoint.
  late final pulumi.Output<String> status;
  /// The date and time when the dedicated inference endpoint was last updated.
  late final pulumi.Output<String> updatedAt;
  /// The UUID of the VPC to deploy the dedicated inference endpoint into. Changing this forces a new resource.
  late final pulumi.Output<String?> vpcUuid;

  /// Creates a new [DedicatedInference].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedInference]. {@macro pulumi_index_dedicated_inference_dedicated_inference_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedInference(
    String name, {
    DedicatedInferenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/dedicatedInference:DedicatedInference',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    enablePublicEndpoint = registerOutput<bool?>('enablePublicEndpoint');
    huggingFaceToken = registerOutput<String?>('huggingFaceToken');
    modelDeployments = registerOutput<List<Map<String, dynamic>>>('modelDeployments');
    this.name = registerOutput<String>('name');
    privateEndpointFqdn = registerOutput<String>('privateEndpointFqdn');
    publicEndpointFqdn = registerOutput<String>('publicEndpointFqdn');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    vpcUuid = registerOutput<String?>('vpcUuid');
  }

  /// Gets an existing [DedicatedInference] resource's state with the given [name] and [id].
  static DedicatedInference get(
    String name,
    pulumi.Input<String> id, {
    DedicatedInferenceState? state,
  }) {
    return DedicatedInference._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DedicatedInference._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/dedicatedInference:DedicatedInference',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    enablePublicEndpoint = registerOutput<bool?>('enablePublicEndpoint');
    huggingFaceToken = registerOutput<String?>('huggingFaceToken');
    modelDeployments = registerOutput<List<Map<String, dynamic>>>('modelDeployments');
    this.name = registerOutput<String>('name');
    privateEndpointFqdn = registerOutput<String>('privateEndpointFqdn');
    publicEndpointFqdn = registerOutput<String>('publicEndpointFqdn');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    vpcUuid = registerOutput<String?>('vpcUuid');
  }
}
