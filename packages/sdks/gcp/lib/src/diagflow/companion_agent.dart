import 'package:pulumi/pulumi.dart' as pulumi;
import 'companion_agent_args.dart';
import 'companion_agent_ces_tool_spec.dart';
import 'companion_agent_skill_config.dart';
import 'companion_agent_state.dart';
import 'companion_agent_toolset_tool.dart';

/// A Companion Agent in Dialogflow.
///
///
/// To get more information about CompanionAgent, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.locations.companionAgents)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/agent-assist/docs)
///
///
/// ## Example Usage
///
/// ### Dialogflow Companion Agent Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.diagflow.CompanionAgent("default", {
///     location: "global",
///     companionAgentId: "companion-agent",
///     displayName: "companion-agent-basic",
///     description: "Basic Companion Agent Description",
///     skillConfigs: [{
///         skillTriggeringEvent: "END_OF_UTTERANCE",
///         guidanceSkillConfig: {
///             overarchingGuidance: "Initial guidance",
///             guidanceInstructions: [{
///                 displayName: "greeting",
///                 displayDetails: "Greeting for the customer",
///                 condition: "Customer starts conversation",
///                 disableSuggestedReply: true,
///                 triggerEvent: "CUSTOMER_MESSAGE",
///                 actions: [{
///                     description: "Greet customer warmly",
///                 }],
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.diagflow.CompanionAgent("default",
///     location="global",
///     companion_agent_id="companion-agent",
///     display_name="companion-agent-basic",
///     description="Basic Companion Agent Description",
///     skill_configs=[{
///         "skill_triggering_event": "END_OF_UTTERANCE",
///         "guidance_skill_config": {
///             "overarching_guidance": "Initial guidance",
///             "guidance_instructions": [{
///                 "display_name": "greeting",
///                 "display_details": "Greeting for the customer",
///                 "condition": "Customer starts conversation",
///                 "disable_suggested_reply": True,
///                 "trigger_event": "CUSTOMER_MESSAGE",
///                 "actions": [{
///                     "description": "Greet customer warmly",
///                 }],
///             }],
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
///     var @default = new Gcp.Diagflow.CompanionAgent("default", new()
///     {
///         Location = "global",
///         CompanionAgentId = "companion-agent",
///         DisplayName = "companion-agent-basic",
///         Description = "Basic Companion Agent Description",
///         SkillConfigs = new[]
///         {
///             new Gcp.Diagflow.Inputs.CompanionAgentSkillConfigArgs
///             {
///                 SkillTriggeringEvent = "END_OF_UTTERANCE",
///                 GuidanceSkillConfig = new Gcp.Diagflow.Inputs.CompanionAgentSkillConfigGuidanceSkillConfigArgs
///                 {
///                     OverarchingGuidance = "Initial guidance",
///                     GuidanceInstructions = new[]
///                     {
///                         new Gcp.Diagflow.Inputs.CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionArgs
///                         {
///                             DisplayName = "greeting",
///                             DisplayDetails = "Greeting for the customer",
///                             Condition = "Customer starts conversation",
///                             DisableSuggestedReply = true,
///                             TriggerEvent = "CUSTOMER_MESSAGE",
///                             Actions = new[]
///                             {
///                                 new Gcp.Diagflow.Inputs.CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionActionArgs
///                                 {
///                                     Description = "Greet customer warmly",
///                                 },
///                             },
///                         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := diagflow.NewCompanionAgent(ctx, "default", &diagflow.CompanionAgentArgs{
/// 			Location:         pulumi.String("global"),
/// 			CompanionAgentId: pulumi.String("companion-agent"),
/// 			DisplayName:      pulumi.String("companion-agent-basic"),
/// 			Description:      pulumi.String("Basic Companion Agent Description"),
/// 			SkillConfigs: diagflow.CompanionAgentSkillConfigArray{
/// 				&diagflow.CompanionAgentSkillConfigArgs{
/// 					SkillTriggeringEvent: pulumi.String("END_OF_UTTERANCE"),
/// 					GuidanceSkillConfig: &diagflow.CompanionAgentSkillConfigGuidanceSkillConfigArgs{
/// 						OverarchingGuidance: pulumi.String("Initial guidance"),
/// 						GuidanceInstructions: diagflow.CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionArray{
/// 							&diagflow.CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionArgs{
/// 								DisplayName:           pulumi.String("greeting"),
/// 								DisplayDetails:        pulumi.String("Greeting for the customer"),
/// 								Condition:             pulumi.String("Customer starts conversation"),
/// 								DisableSuggestedReply: pulumi.Bool(true),
/// 								TriggerEvent:          pulumi.String("CUSTOMER_MESSAGE"),
/// 								Actions: diagflow.CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionActionArray{
/// 									&diagflow.CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionActionArgs{
/// 										Description: pulumi.String("Greet customer warmly"),
/// 									},
/// 								},
/// 							},
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_diagflow_companion_agent" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location           = "global"
///   companion_agent_id = "companion-agent"
///   display_name       = "companion-agent-basic"
///   description        = "Basic Companion Agent Description"
///   skill_configs {
///     skill_triggering_event = "END_OF_UTTERANCE"
///     guidance_skill_config = {
///       overarching_guidance = "Initial guidance"
///       guidance_instructions = [{
///         display_name            = "greeting"
///         display_details         = "Greeting for the customer"
///         condition               = "Customer starts conversation"
///         disable_suggested_reply = true
///         trigger_event           = "CUSTOMER_MESSAGE"
///         actions = [{
///           description = "Greet customer warmly"
///         }]
///       }]
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
/// import com.pulumi.gcp.diagflow.CompanionAgent;
/// import com.pulumi.gcp.diagflow.CompanionAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CompanionAgentSkillConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.CompanionAgentSkillConfigGuidanceSkillConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionArgs;
/// import com.pulumi.gcp.diagflow.inputs.CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionActionArgs;
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
///         var default_ = new CompanionAgent("default", CompanionAgentArgs.builder()
///             .location("global")
///             .companionAgentId("companion-agent")
///             .displayName("companion-agent-basic")
///             .description("Basic Companion Agent Description")
///             .skillConfigs(CompanionAgentSkillConfigArgs.builder()
///                 .skillTriggeringEvent("END_OF_UTTERANCE")
///                 .guidanceSkillConfig(CompanionAgentSkillConfigGuidanceSkillConfigArgs.builder()
///                     .overarchingGuidance("Initial guidance")
///                     .guidanceInstructions(CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionArgs.builder()
///                         .displayName("greeting")
///                         .displayDetails("Greeting for the customer")
///                         .condition("Customer starts conversation")
///                         .disableSuggestedReply(true)
///                         .triggerEvent("CUSTOMER_MESSAGE")
///                         .actions(CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionActionArgs.builder()
///                             .description("Greet customer warmly")
///                             .build())
///                         .build())
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
///     type: gcp:diagflow:CompanionAgent
///     properties:
///       location: global
///       companionAgentId: companion-agent
///       displayName: companion-agent-basic
///       description: Basic Companion Agent Description
///       skillConfigs:
///         - skillTriggeringEvent: END_OF_UTTERANCE
///           guidanceSkillConfig:
///             overarchingGuidance: Initial guidance
///             guidanceInstructions:
///               - displayName: greeting
///                 displayDetails: Greeting for the customer
///                 condition: Customer starts conversation
///                 disableSuggestedReply: true
///                 triggerEvent: CUSTOMER_MESSAGE
///                 actions:
///                   - description: Greet customer warmly
/// ```
///
///
/// ### Dialogflow Companion Agent Tools
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const app = new gcp.ces.App("app", {
///     location: "us",
///     appId: "ces-app",
///     displayName: "ces-app",
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const tool1 = new gcp.ces.Tool("tool_1", {
///     location: "us",
///     app: app.name,
///     toolId: "ces-tool-1",
///     executionType: "SYNCHRONOUS",
///     pythonFunction: {
///         name: "lookup_order",
///         pythonCode: "def lookup_order(order_id: str) -> str: return order_id",
///     },
/// });
/// const toolset1 = new gcp.ces.Toolset("toolset_1", {
///     location: "us",
///     app: app.name,
///     toolsetId: "ces-toolset-1",
///     displayName: "ces-toolset-1",
///     executionType: "SYNCHRONOUS",
///     openApiToolset: {
///         openApiSchema: `openapi: 3.0.0
/// info:
///   title: Order API
///   version: 1.0.0
/// servers:
///   - url: https://api.example.com/v1
/// paths:
///   /orders:
///     get:
///       operationId: getOrder
///       parameters:
///         - name: order_id
///           in: query
///           required: true
///           schema:
///             type: string
///       responses:
///         '200':
///           description: OK
/// `,
///     },
/// });
/// const _default = new gcp.diagflow.CompanionAgent("default", {
///     location: "us",
///     companionAgentId: "companion-tools",
///     displayName: "companion-tools",
///     description: "Companion Agent with CES tools",
///     cesToolSpecs: [{
///         cesTool: tool1.id,
///         confirmationRequirement: "NOT_REQUIRED",
///         proactiveEnabled: true,
///         reactiveEnabled: false,
///         parameterOverrides: [{
///             parameterName: "order_id",
///             contextReferenceKey: "order_context",
///             fieldPath: "order.id",
///         }],
///     }],
///     toolsetTools: [{
///         toolset: toolset1.id,
///         operationId: "getOrder",
///         confirmationRequirement: "NOT_REQUIRED",
///         proactiveEnabled: false,
///         reactiveEnabled: true,
///         parameterOverrides: [{
///             parameterName: "order_id",
///             contextReferenceKey: "order_context",
///             fieldPath: "order.id",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// app = gcp.ces.App("app",
///     location="us",
///     app_id="ces-app",
///     display_name="ces-app",
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// tool1 = gcp.ces.Tool("tool_1",
///     location="us",
///     app=app.name,
///     tool_id="ces-tool-1",
///     execution_type="SYNCHRONOUS",
///     python_function={
///         "name": "lookup_order",
///         "python_code": "def lookup_order(order_id: str) -> str: return order_id",
///     })
/// toolset1 = gcp.ces.Toolset("toolset_1",
///     location="us",
///     app=app.name,
///     toolset_id="ces-toolset-1",
///     display_name="ces-toolset-1",
///     execution_type="SYNCHRONOUS",
///     open_api_toolset={
///         "open_api_schema": """openapi: 3.0.0
/// info:
///   title: Order API
///   version: 1.0.0
/// servers:
///   - url: https://api.example.com/v1
/// paths:
///   /orders:
///     get:
///       operationId: getOrder
///       parameters:
///         - name: order_id
///           in: query
///           required: true
///           schema:
///             type: string
///       responses:
///         '200':
///           description: OK
/// """,
///     })
/// default = gcp.diagflow.CompanionAgent("default",
///     location="us",
///     companion_agent_id="companion-tools",
///     display_name="companion-tools",
///     description="Companion Agent with CES tools",
///     ces_tool_specs=[{
///         "ces_tool": tool1.id,
///         "confirmation_requirement": "NOT_REQUIRED",
///         "proactive_enabled": True,
///         "reactive_enabled": False,
///         "parameter_overrides": [{
///             "parameter_name": "order_id",
///             "context_reference_key": "order_context",
///             "field_path": "order.id",
///         }],
///     }],
///     toolset_tools=[{
///         "toolset": toolset1.id,
///         "operation_id": "getOrder",
///         "confirmation_requirement": "NOT_REQUIRED",
///         "proactive_enabled": False,
///         "reactive_enabled": True,
///         "parameter_overrides": [{
///             "parameter_name": "order_id",
///             "context_reference_key": "order_context",
///             "field_path": "order.id",
///         }],
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
///     var app = new Gcp.Ces.App("app", new()
///     {
///         Location = "us",
///         AppId = "ces-app",
///         DisplayName = "ces-app",
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var tool1 = new Gcp.Ces.Tool("tool_1", new()
///     {
///         Location = "us",
///         App = app.Name,
///         ToolId = "ces-tool-1",
///         ExecutionType = "SYNCHRONOUS",
///         PythonFunction = new Gcp.Ces.Inputs.ToolPythonFunctionArgs
///         {
///             Name = "lookup_order",
///             PythonCode = "def lookup_order(order_id: str) -> str: return order_id",
///         },
///     });
///
///     var toolset1 = new Gcp.Ces.Toolset("toolset_1", new()
///     {
///         Location = "us",
///         App = app.Name,
///         ToolsetId = "ces-toolset-1",
///         DisplayName = "ces-toolset-1",
///         ExecutionType = "SYNCHRONOUS",
///         OpenApiToolset = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetArgs
///         {
///             OpenApiSchema = @"openapi: 3.0.0
/// info:
///   title: Order API
///   version: 1.0.0
/// servers:
///   - url: https://api.example.com/v1
/// paths:
///   /orders:
///     get:
///       operationId: getOrder
///       parameters:
///         - name: order_id
///           in: query
///           required: true
///           schema:
///             type: string
///       responses:
///         '200':
///           description: OK
/// ",
///         },
///     });
///
///     var @default = new Gcp.Diagflow.CompanionAgent("default", new()
///     {
///         Location = "us",
///         CompanionAgentId = "companion-tools",
///         DisplayName = "companion-tools",
///         Description = "Companion Agent with CES tools",
///         CesToolSpecs = new[]
///         {
///             new Gcp.Diagflow.Inputs.CompanionAgentCesToolSpecArgs
///             {
///                 CesTool = tool1.Id,
///                 ConfirmationRequirement = "NOT_REQUIRED",
///                 ProactiveEnabled = true,
///                 ReactiveEnabled = false,
///                 ParameterOverrides = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CompanionAgentCesToolSpecParameterOverrideArgs
///                     {
///                         ParameterName = "order_id",
///                         ContextReferenceKey = "order_context",
///                         FieldPath = "order.id",
///                     },
///                 },
///             },
///         },
///         ToolsetTools = new[]
///         {
///             new Gcp.Diagflow.Inputs.CompanionAgentToolsetToolArgs
///             {
///                 Toolset = toolset1.Id,
///                 OperationId = "getOrder",
///                 ConfirmationRequirement = "NOT_REQUIRED",
///                 ProactiveEnabled = false,
///                 ReactiveEnabled = true,
///                 ParameterOverrides = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CompanionAgentToolsetToolParameterOverrideArgs
///                     {
///                         ParameterName = "order_id",
///                         ContextReferenceKey = "order_context",
///                         FieldPath = "order.id",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/ces"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		app, err := ces.NewApp(ctx, "app", &ces.AppArgs{
/// 			Location:    pulumi.String("us"),
/// 			AppId:       pulumi.String("ces-app"),
/// 			DisplayName: pulumi.String("ces-app"),
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tool1, err := ces.NewTool(ctx, "tool_1", &ces.ToolArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           app.Name,
/// 			ToolId:        pulumi.String("ces-tool-1"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			PythonFunction: &ces.ToolPythonFunctionArgs{
/// 				Name:       pulumi.String("lookup_order"),
/// 				PythonCode: pulumi.String("def lookup_order(order_id: str) -> str: return order_id"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		toolset1, err := ces.NewToolset(ctx, "toolset_1", &ces.ToolsetArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           app.Name,
/// 			ToolsetId:     pulumi.String("ces-toolset-1"),
/// 			DisplayName:   pulumi.String("ces-toolset-1"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			OpenApiToolset: &ces.ToolsetOpenApiToolsetArgs{
/// 				OpenApiSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: Order API
///   version: 1.0.0
/// servers:
///   - url: https://api.example.com/v1
/// paths:
///   /orders:
///     get:
///       operationId: getOrder
///       parameters:
///         - name: order_id
///           in: query
///           required: true
///           schema:
///             type: string
///       responses:
///         '200':
///           description: OK
/// `),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCompanionAgent(ctx, "default", &diagflow.CompanionAgentArgs{
/// 			Location:         pulumi.String("us"),
/// 			CompanionAgentId: pulumi.String("companion-tools"),
/// 			DisplayName:      pulumi.String("companion-tools"),
/// 			Description:      pulumi.String("Companion Agent with CES tools"),
/// 			CesToolSpecs: diagflow.CompanionAgentCesToolSpecArray{
/// 				&diagflow.CompanionAgentCesToolSpecArgs{
/// 					CesTool:                 tool1.ID(),
/// 					ConfirmationRequirement: pulumi.String("NOT_REQUIRED"),
/// 					ProactiveEnabled:        pulumi.Bool(true),
/// 					ReactiveEnabled:         pulumi.Bool(false),
/// 					ParameterOverrides: diagflow.CompanionAgentCesToolSpecParameterOverrideArray{
/// 						&diagflow.CompanionAgentCesToolSpecParameterOverrideArgs{
/// 							ParameterName:       pulumi.String("order_id"),
/// 							ContextReferenceKey: pulumi.String("order_context"),
/// 							FieldPath:           pulumi.String("order.id"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ToolsetTools: diagflow.CompanionAgentToolsetToolArray{
/// 				&diagflow.CompanionAgentToolsetToolArgs{
/// 					Toolset:                 toolset1.ID(),
/// 					OperationId:             pulumi.String("getOrder"),
/// 					ConfirmationRequirement: pulumi.String("NOT_REQUIRED"),
/// 					ProactiveEnabled:        pulumi.Bool(false),
/// 					ReactiveEnabled:         pulumi.Bool(true),
/// 					ParameterOverrides: diagflow.CompanionAgentToolsetToolParameterOverrideArray{
/// 						&diagflow.CompanionAgentToolsetToolParameterOverrideArgs{
/// 							ParameterName:       pulumi.String("order_id"),
/// 							ContextReferenceKey: pulumi.String("order_context"),
/// 							FieldPath:           pulumi.String("order.id"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "app" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "us"
///   app_id       = "ces-app"
///   display_name = "ces-app"
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_tool" "tool_1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location       = "us"
///   app            = gcp_ces_app.app.name
///   tool_id        = "ces-tool-1"
///   execution_type = "SYNCHRONOUS"
///   python_function = {
///     name        = "lookup_order"
///     python_code = "def lookup_order(order_id: str) -> str: return order_id"
///   }
/// }
/// resource "gcp_ces_toolset" "toolset_1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location       = "us"
///   app            = gcp_ces_app.app.name
///   toolset_id     = "ces-toolset-1"
///   display_name   = "ces-toolset-1"
///   execution_type = "SYNCHRONOUS"
///   open_api_toolset = {
///     open_api_schema = <<-EOT
/// openapi: 3.0.0
/// info:
///   title: Order API
///   version: 1.0.0
/// servers:
///   - url: https://api.example.com/v1
/// paths:
///   /orders:
///     get:
///       operationId: getOrder
///       parameters:
///         - name: order_id
///           in: query
///           required: true
///           schema:
///             type: string
///       responses:
///         '200':
///           description: OK
/// EOT
///
///   }
/// }
/// resource "gcp_diagflow_companion_agent" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location           = "us"
///   companion_agent_id = "companion-tools"
///   display_name       = "companion-tools"
///   description        = "Companion Agent with CES tools"
///   ces_tool_specs {
///     ces_tool                 = gcp_ces_tool.tool_1.id
///     confirmation_requirement = "NOT_REQUIRED"
///     proactive_enabled        = true
///     reactive_enabled         = false
///     parameter_overrides {
///       parameter_name        = "order_id"
///       context_reference_key = "order_context"
///       field_path            = "order.id"
///     }
///   }
///   toolset_tools {
///     toolset                  = gcp_ces_toolset.toolset_1.id
///     operation_id             = "getOrder"
///     confirmation_requirement = "NOT_REQUIRED"
///     proactive_enabled        = false
///     reactive_enabled         = true
///     parameter_overrides {
///       parameter_name        = "order_id"
///       context_reference_key = "order_context"
///       field_path            = "order.id"
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Tool;
/// import com.pulumi.gcp.ces.ToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolPythonFunctionArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetArgs;
/// import com.pulumi.gcp.diagflow.CompanionAgent;
/// import com.pulumi.gcp.diagflow.CompanionAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CompanionAgentCesToolSpecArgs;
/// import com.pulumi.gcp.diagflow.inputs.CompanionAgentCesToolSpecParameterOverrideArgs;
/// import com.pulumi.gcp.diagflow.inputs.CompanionAgentToolsetToolArgs;
/// import com.pulumi.gcp.diagflow.inputs.CompanionAgentToolsetToolParameterOverrideArgs;
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
///         var app = new App("app", AppArgs.builder()
///             .location("us")
///             .appId("ces-app")
///             .displayName("ces-app")
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var tool1 = new Tool("tool1", ToolArgs.builder()
///             .location("us")
///             .app(app.name())
///             .toolId("ces-tool-1")
///             .executionType("SYNCHRONOUS")
///             .pythonFunction(ToolPythonFunctionArgs.builder()
///                 .name("lookup_order")
///                 .pythonCode("def lookup_order(order_id: str) -> str: return order_id")
///                 .build())
///             .build());
///
///         var toolset1 = new Toolset("toolset1", ToolsetArgs.builder()
///             .location("us")
///             .app(app.name())
///             .toolsetId("ces-toolset-1")
///             .displayName("ces-toolset-1")
///             .executionType("SYNCHRONOUS")
///             .openApiToolset(ToolsetOpenApiToolsetArgs.builder()
///                 .openApiSchema("""
/// openapi: 3.0.0
/// info:
///   title: Order API
///   version: 1.0.0
/// servers:
///   - url: https://api.example.com/v1
/// paths:
///   /orders:
///     get:
///       operationId: getOrder
///       parameters:
///         - name: order_id
///           in: query
///           required: true
///           schema:
///             type: string
///       responses:
///         '200':
///           description: OK
///                 """)
///                 .build())
///             .build());
///
///         var default_ = new CompanionAgent("default", CompanionAgentArgs.builder()
///             .location("us")
///             .companionAgentId("companion-tools")
///             .displayName("companion-tools")
///             .description("Companion Agent with CES tools")
///             .cesToolSpecs(CompanionAgentCesToolSpecArgs.builder()
///                 .cesTool(tool1.id())
///                 .confirmationRequirement("NOT_REQUIRED")
///                 .proactiveEnabled(true)
///                 .reactiveEnabled(false)
///                 .parameterOverrides(CompanionAgentCesToolSpecParameterOverrideArgs.builder()
///                     .parameterName("order_id")
///                     .contextReferenceKey("order_context")
///                     .fieldPath("order.id")
///                     .build())
///                 .build())
///             .toolsetTools(CompanionAgentToolsetToolArgs.builder()
///                 .toolset(toolset1.id())
///                 .operationId("getOrder")
///                 .confirmationRequirement("NOT_REQUIRED")
///                 .proactiveEnabled(false)
///                 .reactiveEnabled(true)
///                 .parameterOverrides(CompanionAgentToolsetToolParameterOverrideArgs.builder()
///                     .parameterName("order_id")
///                     .contextReferenceKey("order_context")
///                     .fieldPath("order.id")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   app:
///     type: gcp:ces:App
///     properties:
///       location: us
///       appId: ces-app
///       displayName: ces-app
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   tool1:
///     type: gcp:ces:Tool
///     name: tool_1
///     properties:
///       location: us
///       app: ${app.name}
///       toolId: ces-tool-1
///       executionType: SYNCHRONOUS
///       pythonFunction:
///         name: lookup_order
///         pythonCode: 'def lookup_order(order_id: str) -> str: return order_id'
///   toolset1:
///     type: gcp:ces:Toolset
///     name: toolset_1
///     properties:
///       location: us
///       app: ${app.name}
///       toolsetId: ces-toolset-1
///       displayName: ces-toolset-1
///       executionType: SYNCHRONOUS
///       openApiToolset:
///         openApiSchema: |
///           openapi: 3.0.0
///           info:
///             title: Order API
///             version: 1.0.0
///           servers:
///             - url: https://api.example.com/v1
///           paths:
///             /orders:
///               get:
///                 operationId: getOrder
///                 parameters:
///                   - name: order_id
///                     in: query
///                     required: true
///                     schema:
///                       type: string
///                 responses:
///                   '200':
///                     description: OK
///   default:
///     type: gcp:diagflow:CompanionAgent
///     properties:
///       location: us
///       companionAgentId: companion-tools
///       displayName: companion-tools
///       description: Companion Agent with CES tools
///       cesToolSpecs:
///         - cesTool: ${tool1.id}
///           confirmationRequirement: NOT_REQUIRED
///           proactiveEnabled: true
///           reactiveEnabled: false
///           parameterOverrides:
///             - parameterName: order_id
///               contextReferenceKey: order_context
///               fieldPath: order.id
///       toolsetTools:
///         - toolset: ${toolset1.id}
///           operationId: getOrder
///           confirmationRequirement: NOT_REQUIRED
///           proactiveEnabled: false
///           reactiveEnabled: true
///           parameterOverrides:
///             - parameterName: order_id
///               contextReferenceKey: order_context
///               fieldPath: order.id
/// ```
///
///
/// ## Import
///
/// CompanionAgent can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/companionAgents/{{companion_agent_id}}`
/// * `{{project}}/{{location}}/{{companion_agent_id}}`
/// * `{{location}}/{{companion_agent_id}}`
///
///
/// When using the `pulumi import` command, CompanionAgent can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/companionAgent:CompanionAgent default projects/{{project}}/locations/{{location}}/companionAgents/{{companion_agent_id}}
/// $ pulumi import gcp:diagflow/companionAgent:CompanionAgent default {{project}}/{{location}}/{{companion_agent_id}}
/// $ pulumi import gcp:diagflow/companionAgent:CompanionAgent default {{location}}/{{companion_agent_id}}
/// ```
class CompanionAgent extends pulumi.CustomResource {
  /// List of CES tool specs that the companion agent can choose from.
  /// Structure is documented below.
  late final pulumi.Output<List<CompanionAgentCesToolSpec>?> cesToolSpecs;
  /// The ID to use for the companion agent, which will become the final component of the companion agent's resource name.
  late final pulumi.Output<String> companionAgentId;
  /// Creation time of this companion agent.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description for the companion agent.
  late final pulumi.Output<String?> description;
  /// Display name for the companion agent.
  late final pulumi.Output<String?> displayName;
  /// The location of the companion agent.
  late final pulumi.Output<String> location;
  /// The unique identifier of the companion agent.
  /// Format: `projects/{project}/locations/{location}/companionAgents/{companion_agent}`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// List of skill configs for the companion agent.
  /// At most one skill config of each type (for example, at most one `guidanceSkillConfig`) may be configured.
  /// Structure is documented below.
  late final pulumi.Output<List<CompanionAgentSkillConfig>?> skillConfigs;
  /// List of CES toolset specs that the companion agent can choose from.
  /// Structure is documented below.
  late final pulumi.Output<List<CompanionAgentToolsetTool>?> toolsetTools;
  /// Update time of this companion agent.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CompanionAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CompanionAgent]. {@macro pulumi_diagflow_companion_agent_companion_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CompanionAgent(
    String name, {
    CompanionAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/companionAgent:CompanionAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    cesToolSpecs = registerOutput<List<CompanionAgentCesToolSpec>?>('cesToolSpecs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompanionAgentCesToolSpec>(guardedValue, (value) => CompanionAgentCesToolSpec.fromMap((value as Map).cast<String, dynamic>())); });
    companionAgentId = registerOutput<String>('companionAgentId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    skillConfigs = registerOutput<List<CompanionAgentSkillConfig>?>('skillConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompanionAgentSkillConfig>(guardedValue, (value) => CompanionAgentSkillConfig.fromMap((value as Map).cast<String, dynamic>())); });
    toolsetTools = registerOutput<List<CompanionAgentToolsetTool>?>('toolsetTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompanionAgentToolsetTool>(guardedValue, (value) => CompanionAgentToolsetTool.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [CompanionAgent] resource's state with the given [name] and [id].
  static CompanionAgent get(
    String name,
    pulumi.Input<String> id, {
    CompanionAgentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CompanionAgent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CompanionAgent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/companionAgent:CompanionAgent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cesToolSpecs = registerOutput<List<CompanionAgentCesToolSpec>?>('cesToolSpecs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompanionAgentCesToolSpec>(guardedValue, (value) => CompanionAgentCesToolSpec.fromMap((value as Map).cast<String, dynamic>())); });
    companionAgentId = registerOutput<String>('companionAgentId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    skillConfigs = registerOutput<List<CompanionAgentSkillConfig>?>('skillConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompanionAgentSkillConfig>(guardedValue, (value) => CompanionAgentSkillConfig.fromMap((value as Map).cast<String, dynamic>())); });
    toolsetTools = registerOutput<List<CompanionAgentToolsetTool>?>('toolsetTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompanionAgentToolsetTool>(guardedValue, (value) => CompanionAgentToolsetTool.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [CompanionAgent] resource.
  CompanionAgent.reference(String urn)
    : super(
        'gcp:diagflow/companionAgent:CompanionAgent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cesToolSpecs = registerOutput<List<CompanionAgentCesToolSpec>?>('cesToolSpecs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompanionAgentCesToolSpec>(guardedValue, (value) => CompanionAgentCesToolSpec.fromMap((value as Map).cast<String, dynamic>())); });
    companionAgentId = registerOutput<String>('companionAgentId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    skillConfigs = registerOutput<List<CompanionAgentSkillConfig>?>('skillConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompanionAgentSkillConfig>(guardedValue, (value) => CompanionAgentSkillConfig.fromMap((value as Map).cast<String, dynamic>())); });
    toolsetTools = registerOutput<List<CompanionAgentToolsetTool>?>('toolsetTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompanionAgentToolsetTool>(guardedValue, (value) => CompanionAgentToolsetTool.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }
}
