import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_agent_coaching_context.dart';
import 'generator_args.dart';
import 'generator_free_form_context.dart';
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
///         version: "6.0",
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
///         "version": "6.0",
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
///             Version = "6.0",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/diagflow"
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
/// 				Version:            pulumi.String("6.0"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_diagflow_generator" "summarization_basic_generator" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location    = "global"
///   description = "A v4.0 summarization generator."
///   inference_parameter = {
///     max_output_tokens = 1024
///     temperature       = 0
///     top_k             = 40
///     top_p             = 0.95
///   }
///   summarization_context = {
///     version              = "6.0"
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
///                 .version("6.0")
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
///         version: '6.0'
///         outputLanguageCode: en
///       triggerEvent: MANUAL_CALL
/// ```
///
/// ### Dialogflow Generator Agent Coaching
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agentCoachingGenerator = new gcp.diagflow.Generator("agent_coaching_generator", {
///     location: "global",
///     description: "An agent coaching generator.",
///     agentCoachingContext: {
///         version: "2.5",
///         overarchingGuidance: "Be helpful and polite.",
///         outputLanguageCode: "en",
///         instructions: [{
///             displayName: "Greeting",
///             displayDetails: "Greet the customer warmly",
///             condition: "Customer starts the conversation",
///             agentAction: "Say hello and ask how to help",
///             systemAction: "Log greeting event",
///             triggeringEvent: "END_OF_UTTERANCE",
///         }],
///     },
///     triggerEvent: "END_OF_UTTERANCE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent_coaching_generator = gcp.diagflow.Generator("agent_coaching_generator",
///     location="global",
///     description="An agent coaching generator.",
///     agent_coaching_context={
///         "version": "2.5",
///         "overarching_guidance": "Be helpful and polite.",
///         "output_language_code": "en",
///         "instructions": [{
///             "display_name": "Greeting",
///             "display_details": "Greet the customer warmly",
///             "condition": "Customer starts the conversation",
///             "agent_action": "Say hello and ask how to help",
///             "system_action": "Log greeting event",
///             "triggering_event": "END_OF_UTTERANCE",
///         }],
///     },
///     trigger_event="END_OF_UTTERANCE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentCoachingGenerator = new Gcp.Diagflow.Generator("agent_coaching_generator", new()
///     {
///         Location = "global",
///         Description = "An agent coaching generator.",
///         AgentCoachingContext = new Gcp.Diagflow.Inputs.GeneratorAgentCoachingContextArgs
///         {
///             Version = "2.5",
///             OverarchingGuidance = "Be helpful and polite.",
///             OutputLanguageCode = "en",
///             Instructions = new[]
///             {
///                 new Gcp.Diagflow.Inputs.GeneratorAgentCoachingContextInstructionArgs
///                 {
///                     DisplayName = "Greeting",
///                     DisplayDetails = "Greet the customer warmly",
///                     Condition = "Customer starts the conversation",
///                     AgentAction = "Say hello and ask how to help",
///                     SystemAction = "Log greeting event",
///                     TriggeringEvent = "END_OF_UTTERANCE",
///                 },
///             },
///         },
///         TriggerEvent = "END_OF_UTTERANCE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := diagflow.NewGenerator(ctx, "agent_coaching_generator", &diagflow.GeneratorArgs{
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("An agent coaching generator."),
/// 			AgentCoachingContext: &diagflow.GeneratorAgentCoachingContextArgs{
/// 				Version:             pulumi.String("2.5"),
/// 				OverarchingGuidance: pulumi.String("Be helpful and polite."),
/// 				OutputLanguageCode:  pulumi.String("en"),
/// 				Instructions: diagflow.GeneratorAgentCoachingContextInstructionArray{
/// 					&diagflow.GeneratorAgentCoachingContextInstructionArgs{
/// 						DisplayName:     pulumi.String("Greeting"),
/// 						DisplayDetails:  pulumi.String("Greet the customer warmly"),
/// 						Condition:       pulumi.String("Customer starts the conversation"),
/// 						AgentAction:     pulumi.String("Say hello and ask how to help"),
/// 						SystemAction:    pulumi.String("Log greeting event"),
/// 						TriggeringEvent: pulumi.String("END_OF_UTTERANCE"),
/// 					},
/// 				},
/// 			},
/// 			TriggerEvent: pulumi.String("END_OF_UTTERANCE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_diagflow_generator" "agent_coaching_generator" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location    = "global"
///   description = "An agent coaching generator."
///   agent_coaching_context = {
///     version              = "2.5"
///     overarching_guidance = "Be helpful and polite."
///     output_language_code = "en"
///     instructions = [{
///       display_name     = "Greeting"
///       display_details  = "Greet the customer warmly"
///       condition        = "Customer starts the conversation"
///       agent_action     = "Say hello and ask how to help"
///       system_action    = "Log greeting event"
///       triggering_event = "END_OF_UTTERANCE"
///     }]
///   }
///   trigger_event = "END_OF_UTTERANCE"
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
/// import com.pulumi.gcp.diagflow.inputs.GeneratorAgentCoachingContextArgs;
/// import com.pulumi.gcp.diagflow.inputs.GeneratorAgentCoachingContextInstructionArgs;
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
///         var agentCoachingGenerator = new Generator("agentCoachingGenerator", GeneratorArgs.builder()
///             .location("global")
///             .description("An agent coaching generator.")
///             .agentCoachingContext(GeneratorAgentCoachingContextArgs.builder()
///                 .version("2.5")
///                 .overarchingGuidance("Be helpful and polite.")
///                 .outputLanguageCode("en")
///                 .instructions(GeneratorAgentCoachingContextInstructionArgs.builder()
///                     .displayName("Greeting")
///                     .displayDetails("Greet the customer warmly")
///                     .condition("Customer starts the conversation")
///                     .agentAction("Say hello and ask how to help")
///                     .systemAction("Log greeting event")
///                     .triggeringEvent("END_OF_UTTERANCE")
///                     .build())
///                 .build())
///             .triggerEvent("END_OF_UTTERANCE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agentCoachingGenerator:
///     type: gcp:diagflow:Generator
///     name: agent_coaching_generator
///     properties:
///       location: global
///       description: An agent coaching generator.
///       agentCoachingContext:
///         version: '2.5'
///         overarchingGuidance: Be helpful and polite.
///         outputLanguageCode: en
///         instructions:
///           - displayName: Greeting
///             displayDetails: Greet the customer warmly
///             condition: Customer starts the conversation
///             agentAction: Say hello and ask how to help
///             systemAction: Log greeting event
///             triggeringEvent: END_OF_UTTERANCE
///       triggerEvent: END_OF_UTTERANCE
/// ```
///
/// ### Dialogflow Generator With Tools
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testTool = new gcp.diagflow.Tool("test_tool", {
///     location: "global",
///     toolKey: "generator_tool_key",
///     displayName: "test-tool",
///     description: "A test tool",
///     openApiSpec: {
///         textSchema: `openapi: 3.0.0
/// info:
///   title: generator_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// `,
///     },
/// });
/// const generatorWithTools = new gcp.diagflow.Generator("generator_with_tools", {
///     location: "global",
///     description: "A generator with tools and free form context.",
///     tools: [testTool.name],
///     freeFormContext: {
///         text: "Use the search tool to answer the user's query.",
///     },
///     triggerEvent: "MANUAL_CALL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_tool = gcp.diagflow.Tool("test_tool",
///     location="global",
///     tool_key="generator_tool_key",
///     display_name="test-tool",
///     description="A test tool",
///     open_api_spec={
///         "text_schema": """openapi: 3.0.0
/// info:
///   title: generator_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// """,
///     })
/// generator_with_tools = gcp.diagflow.Generator("generator_with_tools",
///     location="global",
///     description="A generator with tools and free form context.",
///     tools=[test_tool.name],
///     free_form_context={
///         "text": "Use the search tool to answer the user's query.",
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
///     var testTool = new Gcp.Diagflow.Tool("test_tool", new()
///     {
///         Location = "global",
///         ToolKey = "generator_tool_key",
///         DisplayName = "test-tool",
///         Description = "A test tool",
///         OpenApiSpec = new Gcp.Diagflow.Inputs.ToolOpenApiSpecArgs
///         {
///             TextSchema = @"openapi: 3.0.0
/// info:
///   title: generator_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// ",
///         },
///     });
///
///     var generatorWithTools = new Gcp.Diagflow.Generator("generator_with_tools", new()
///     {
///         Location = "global",
///         Description = "A generator with tools and free form context.",
///         Tools = new[]
///         {
///             testTool.Name,
///         },
///         FreeFormContext = new Gcp.Diagflow.Inputs.GeneratorFreeFormContextArgs
///         {
///             Text = "Use the search tool to answer the user's query.",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testTool, err := diagflow.NewTool(ctx, "test_tool", &diagflow.ToolArgs{
/// 			Location:    pulumi.String("global"),
/// 			ToolKey:     pulumi.String("generator_tool_key"),
/// 			DisplayName: pulumi.String("test-tool"),
/// 			Description: pulumi.String("A test tool"),
/// 			OpenApiSpec: &diagflow.ToolOpenApiSpecArgs{
/// 				TextSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: generator_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// `),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewGenerator(ctx, "generator_with_tools", &diagflow.GeneratorArgs{
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("A generator with tools and free form context."),
/// 			Tools: pulumi.StringArray{
/// 				testTool.Name,
/// 			},
/// 			FreeFormContext: &diagflow.GeneratorFreeFormContextArgs{
/// 				Text: pulumi.String("Use the search tool to answer the user's query."),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_diagflow_tool" "test_tool" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "global"
///   tool_key     = "generator_tool_key"
///   display_name = "test-tool"
///   description  = "A test tool"
///   open_api_spec = {
///     text_schema = <<EOF
/// openapi: 3.0.0
/// info:
///   title: generator_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
/// EOF
///
///   }
/// }
/// resource "gcp_diagflow_generator" "generator_with_tools" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location    = "global"
///   description = "A generator with tools and free form context."
///   tools       = [gcp_diagflow_tool.test_tool.name]
///   free_form_context = {
///     text = "Use the search tool to answer the user's query."
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
/// import com.pulumi.gcp.diagflow.Tool;
/// import com.pulumi.gcp.diagflow.ToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.ToolOpenApiSpecArgs;
/// import com.pulumi.gcp.diagflow.Generator;
/// import com.pulumi.gcp.diagflow.GeneratorArgs;
/// import com.pulumi.gcp.diagflow.inputs.GeneratorFreeFormContextArgs;
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
///         var testTool = new Tool("testTool", ToolArgs.builder()
///             .location("global")
///             .toolKey("generator_tool_key")
///             .displayName("test-tool")
///             .description("A test tool")
///             .openApiSpec(ToolOpenApiSpecArgs.builder()
///                 .textSchema("""
/// openapi: 3.0.0
/// info:
///   title: generator_tool_key
///   version: 1.0.0
/// paths:
///   /search:
///     get:
///       summary: Search function
///       operationId: searchAction
///       responses:
///         '200':
///           description: OK
///                 """)
///                 .build())
///             .build());
///
///         var generatorWithTools = new Generator("generatorWithTools", GeneratorArgs.builder()
///             .location("global")
///             .description("A generator with tools and free form context.")
///             .tools(testTool.name())
///             .freeFormContext(GeneratorFreeFormContextArgs.builder()
///                 .text("Use the search tool to answer the user's query.")
///                 .build())
///             .triggerEvent("MANUAL_CALL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testTool:
///     type: gcp:diagflow:Tool
///     name: test_tool
///     properties:
///       location: global
///       toolKey: generator_tool_key
///       displayName: test-tool
///       description: A test tool
///       openApiSpec:
///         textSchema: |
///           openapi: 3.0.0
///           info:
///             title: generator_tool_key
///             version: 1.0.0
///           paths:
///             /search:
///               get:
///                 summary: Search function
///                 operationId: searchAction
///                 responses:
///                   '200':
///                     description: OK
///   generatorWithTools:
///     type: gcp:diagflow:Generator
///     name: generator_with_tools
///     properties:
///       location: global
///       description: A generator with tools and free form context.
///       tools:
///         - ${testTool.name}
///       freeFormContext:
///         text: Use the search tool to answer the user's query.
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
  /// Input of prebuilt Agent Coaching feature.
  /// Structure is documented below.
  late final pulumi.Output<GeneratorAgentCoachingContext?> agentCoachingContext;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. Human readable description of the generator.
  late final pulumi.Output<String?> description;
  /// Input of free form generator to LLM.
  /// Structure is documented below.
  late final pulumi.Output<GeneratorFreeFormContext?> freeFormContext;
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
  late final pulumi.Output<GeneratorSummarizationContext?> summarizationContext;
  /// Optional. Resource names of the tools that the generator can choose from. Format: `projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/tools/&lt;tool ID&gt;`.
  late final pulumi.Output<List<String>?> tools;
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
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
        ) {
    agentCoachingContext = registerOutput<GeneratorAgentCoachingContext?>('agentCoachingContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorAgentCoachingContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    freeFormContext = registerOutput<GeneratorFreeFormContext?>('freeFormContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorFreeFormContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    generatorId = registerOutput<String>('generatorId');
    inferenceParameter = registerOutput<GeneratorInferenceParameter?>('inferenceParameter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorInferenceParameter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publishedModel = registerOutput<String?>('publishedModel');
    summarizationContext = registerOutput<GeneratorSummarizationContext?>('summarizationContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorSummarizationContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tools = registerOutput<List<String>?>('tools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
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
    agentCoachingContext = registerOutput<GeneratorAgentCoachingContext?>('agentCoachingContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorAgentCoachingContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    freeFormContext = registerOutput<GeneratorFreeFormContext?>('freeFormContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorFreeFormContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    generatorId = registerOutput<String>('generatorId');
    inferenceParameter = registerOutput<GeneratorInferenceParameter?>('inferenceParameter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorInferenceParameter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publishedModel = registerOutput<String?>('publishedModel');
    summarizationContext = registerOutput<GeneratorSummarizationContext?>('summarizationContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorSummarizationContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tools = registerOutput<List<String>?>('tools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
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
    agentCoachingContext = registerOutput<GeneratorAgentCoachingContext?>('agentCoachingContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorAgentCoachingContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    freeFormContext = registerOutput<GeneratorFreeFormContext?>('freeFormContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorFreeFormContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    generatorId = registerOutput<String>('generatorId');
    inferenceParameter = registerOutput<GeneratorInferenceParameter?>('inferenceParameter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorInferenceParameter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publishedModel = registerOutput<String?>('publishedModel');
    summarizationContext = registerOutput<GeneratorSummarizationContext?>('summarizationContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeneratorSummarizationContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tools = registerOutput<List<String>?>('tools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    triggerEvent = registerOutput<String?>('triggerEvent');
  }
}
