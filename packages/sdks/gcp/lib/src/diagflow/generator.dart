import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_args.dart';
import 'generator_inference_parameter.dart';
import 'generator_state.dart';
import 'generator_summarization_context.dart';

/// LLM generator.
///
///
/// To get more information about Generator, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/es/docs/reference/rest/v2beta1/projects.locations.generators)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/agent-assist/docs)
///
/// ## Example Usage
///
/// ### Dialogflow Generator Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const summarizationBasicGenerator = new gcp.diagflow.Generator("summarization_basic_generator", {
///     location: "global",
///     description: "A v4.0 summarization generator.",
///     inferenceParameter: {
///         maxOutputTokens: 1024,
///         temperature: 0,
///         topK: 40,
///         topP: 0.95,
///     },
///     summarizationContext: {
///         version: "4.0",
///         outputLanguageCode: "en",
///     },
///     triggerEvent: "MANUAL_CALL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// summarization_basic_generator = gcp.diagflow.Generator("summarization_basic_generator",
///     location="global",
///     description="A v4.0 summarization generator.",
///     inference_parameter={
///         "max_output_tokens": 1024,
///         "temperature": float(0),
///         "top_k": 40,
///         "top_p": 0.95,
///     },
///     summarization_context={
///         "version": "4.0",
///         "output_language_code": "en",
///     },
///     trigger_event="MANUAL_CALL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var summarizationBasicGenerator = new Gcp.Diagflow.Generator("summarization_basic_generator", new()
///     {
///         Location = "global",
///         Description = "A v4.0 summarization generator.",
///         InferenceParameter = new Gcp.Diagflow.Inputs.GeneratorInferenceParameterArgs
///         {
///             MaxOutputTokens = 1024,
///             Temperature = 0.0,
///             TopK = 40,
///             TopP = 0.95,
///         },
///         SummarizationContext = new Gcp.Diagflow.Inputs.GeneratorSummarizationContextArgs
///         {
///             Version = "4.0",
///             OutputLanguageCode = "en",
///         },
///         TriggerEvent = "MANUAL_CALL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := diagflow.NewGenerator(ctx, "summarization_basic_generator", &diagflow.GeneratorArgs{
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("A v4.0 summarization generator."),
/// 			InferenceParameter: &diagflow.GeneratorInferenceParameterArgs{
/// 				MaxOutputTokens: pulumi.Int(1024),
/// 				Temperature:     pulumi.Float64(0),
/// 				TopK:            pulumi.Int(40),
/// 				TopP:            pulumi.Float64(0.95),
/// 			},
/// 			SummarizationContext: &diagflow.GeneratorSummarizationContextArgs{
/// 				Version:            pulumi.String("4.0"),
/// 				OutputLanguageCode: pulumi.String("en"),
/// 			},
/// 			TriggerEvent: pulumi.String("MANUAL_CALL"),
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
/// resource "gcp_diagflow_generator" "summarization_basic_generator" {
///   location    = "global"
///   description = "A v4.0 summarization generator."
///   inference_parameter = {
///     max_output_tokens = 1024
///     temperature       = 0
///     top_k             = 40
///     top_p             = 0.95
///   }
///   summarization_context = {
///     version              = "4.0"
///     output_language_code = "en"
///   }
///   trigger_event = "MANUAL_CALL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.Generator;
/// import com.pulumi.gcp.diagflow.GeneratorArgs;
/// import com.pulumi.gcp.diagflow.inputs.GeneratorInferenceParameterArgs;
/// import com.pulumi.gcp.diagflow.inputs.GeneratorSummarizationContextArgs;
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
///         var summarizationBasicGenerator = new Generator("summarizationBasicGenerator", GeneratorArgs.builder()
///             .location("global")
///             .description("A v4.0 summarization generator.")
///             .inferenceParameter(GeneratorInferenceParameterArgs.builder()
///                 .maxOutputTokens(1024)
///                 .temperature(0.0)
///                 .topK(40)
///                 .topP(0.95)
///                 .build())
///             .summarizationContext(GeneratorSummarizationContextArgs.builder()
///                 .version("4.0")
///                 .outputLanguageCode("en")
///                 .build())
///             .triggerEvent("MANUAL_CALL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   summarizationBasicGenerator:
///     type: gcp:diagflow:Generator
///     name: summarization_basic_generator
///     properties:
///       location: global
///       description: A v4.0 summarization generator.
///       inferenceParameter:
///         maxOutputTokens: 1024
///         temperature: 0
///         topK: 40
///         topP: 0.95
///       summarizationContext:
///         version: '4.0'
///         outputLanguageCode: en
///       triggerEvent: MANUAL_CALL
/// ```
///
///
/// ## Import
///
/// Generator can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/generators/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Generator can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/generator:Generator default projects/{{project}}/locations/{{location}}/generators/{{name}}
/// $ pulumi import gcp:diagflow/generator:Generator default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:diagflow/generator:Generator default {{location}}/{{name}}
/// ```
class Generator extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. Human readable description of the generator.
  late final pulumi.Output<String?> description;
  /// Optional. The ID to use for the generator, which will become the final component of the generator's resource name.
  late final pulumi.Output<String> generatorId;
  /// Optional. Inference parameters for this generator.
  /// Structure is documented below.
  late final pulumi.Output<GeneratorInferenceParameter?> inferenceParameter;
  /// desc
  late final pulumi.Output<String> location;
  /// The resource name of the generator.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Optional. The published Large Language Model name. * To use the latest model version, specify the model name without version number. Example: text-bison * To use a stable model version, specify the version number as well. Example: text-bison@002.
  late final pulumi.Output<String?> publishedModel;
  /// Input of prebuilt Summarization feature.
  /// Structure is documented below.
  late final pulumi.Output<GeneratorSummarizationContext> summarizationContext;
  /// Optional. The trigger event of the generator. It defines when the generator is triggered in a conversation.
  /// Possible values are: `END_OF_UTTERANCE`, `MANUAL_CALL`, `CUSTOMER_MESSAGE`, `AGENT_MESSAGE`.
  late final pulumi.Output<String?> triggerEvent;

  /// Creates a new [Generator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Generator]. {@macro pulumi_diagflow_generator_generator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Generator(
    String name, {
    GeneratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/generator:Generator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    generatorId = registerOutput<String>('generatorId');
    inferenceParameter = registerOutput<GeneratorInferenceParameter?>('inferenceParameter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorInferenceParameter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publishedModel = registerOutput<String?>('publishedModel');
    summarizationContext = registerOutput<GeneratorSummarizationContext>('summarizationContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorSummarizationContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    triggerEvent = registerOutput<String?>('triggerEvent');
  }

  /// Gets an existing [Generator] resource's state with the given [name] and [id].
  static Generator get(
    String name,
    pulumi.Input<String> id, {
    GeneratorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Generator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Generator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/generator:Generator',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    generatorId = registerOutput<String>('generatorId');
    inferenceParameter = registerOutput<GeneratorInferenceParameter?>('inferenceParameter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorInferenceParameter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publishedModel = registerOutput<String?>('publishedModel');
    summarizationContext = registerOutput<GeneratorSummarizationContext>('summarizationContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorSummarizationContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    triggerEvent = registerOutput<String?>('triggerEvent');
  }

  /// Creates a typed reference to an existing [Generator] resource.
  Generator.reference(String urn)
    : super(
        'gcp:diagflow/generator:Generator',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    generatorId = registerOutput<String>('generatorId');
    inferenceParameter = registerOutput<GeneratorInferenceParameter?>('inferenceParameter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorInferenceParameter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publishedModel = registerOutput<String?>('publishedModel');
    summarizationContext = registerOutput<GeneratorSummarizationContext>('summarizationContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorSummarizationContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    triggerEvent = registerOutput<String?>('triggerEvent');
  }
}
