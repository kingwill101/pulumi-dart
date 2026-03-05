import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_args.dart';
import 'agent_model_settings.dart';
import 'agent_remote_dialogflow_agent.dart';
import 'agent_state.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces Agent Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForAgent = new gcp.ces.App("ces_app_for_agent", {
///     appId: "app-id",
///     location: "us",
///     description: "App used as parent for CES Agent example",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolForAgent = new gcp.ces.Tool("ces_tool_for_agent", {
///     location: "us",
///     app: cesAppForAgent.appId,
///     toolId: "tool-1",
///     executionType: "SYNCHRONOUS",
///     pythonFunction: {
///         name: "example_function",
///         pythonCode: "def example_function() -> int: return 0",
///     },
/// });
/// const cesToolsetForAgent = new gcp.ces.Toolset("ces_toolset_for_agent", {
///     toolsetId: "toolset-id",
///     location: "us",
///     app: cesAppForAgent.appId,
///     displayName: "Basic toolset display name",
///     openApiToolset: {
///         openApiSchema: `openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// `,
///         ignoreUnknownFields: false,
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example",
///                 cert: "ZXhhbXBsZQ==",
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         apiAuthentication: {
///             serviceAgentIdTokenAuthConfig: {},
///         },
///     },
/// });
/// const cesChildAgent = new gcp.ces.Agent("ces_child_agent", {
///     agentId: "child-agent-id",
///     location: "us",
///     app: cesAppForAgent.appId,
///     displayName: "child agent",
///     instruction: "You are a helpful assistant for this example.",
///     modelSettings: {
///         model: "gemini-1.5-flash",
///         temperature: 0.5,
///     },
///     llmAgent: {},
/// });
/// const cesGuardrailForAgent = new gcp.ces.Guardrail("ces_guardrail_for_agent", {
///     guardrailId: "guardrail-id",
///     location: cesAppForAgent.location,
///     app: cesAppForAgent.appId,
///     displayName: "Example guardrail",
///     description: "Guardrail description",
///     action: {
///         respondImmediately: {
///             responses: [{
///                 text: "Text",
///                 disabled: false,
///             }],
///         },
///     },
///     enabled: true,
///     modelSafety: {
///         safetySettings: [{
///             category: "HARM_CATEGORY_HATE_SPEECH",
///             threshold: "BLOCK_NONE",
///         }],
///     },
/// });
/// const cesAgentBasic = new gcp.ces.Agent("ces_agent_basic", {
///     agentId: "agent-id",
///     location: "us",
///     app: cesAppForAgent.appId,
///     displayName: "my-agent",
///     description: "test agent",
///     instruction: "You are a helpful assistant for this example.",
///     modelSettings: {
///         model: "gemini-1.5-flash",
///         temperature: 0.5,
///     },
///     afterAgentCallbacks: [{
///         description: "Example callback",
///         disabled: true,
///         pythonCode: `def callback(context):
///     return {'override': False}`,
///     }],
///     beforeAgentCallbacks: [{
///         description: "Example callback",
///         disabled: false,
///         pythonCode: `def callback(context):
///     return {'override': False}`,
///     }],
///     afterModelCallbacks: [{
///         description: "Example callback",
///         disabled: true,
///         pythonCode: `def callback(context):
///     return {'override': False}`,
///     }],
///     beforeModelCallbacks: [{
///         description: "Example callback",
///         disabled: true,
///         pythonCode: `def callback(context):
///     return {'override': False}`,
///     }],
///     afterToolCallbacks: [{
///         description: "Example callback",
///         disabled: true,
///         pythonCode: `def callback(context):
///     return {'override': False}`,
///     }],
///     beforeToolCallbacks: [{
///         description: "Example callback",
///         disabled: true,
///         pythonCode: `def callback(context):
///     return {'override': False}`,
///     }],
///     tools: [cesToolForAgent.id],
///     guardrails: [cesGuardrailForAgent.id],
///     toolsets: [{
///         toolset: cesToolsetForAgent.id,
///         toolIds: ["testtoolid"],
///     }],
///     childAgents: [pulumi.all([cesAppForAgent.project, cesAppForAgent.appId, cesChildAgent.agentId]).apply(([project, appId, agentId]) => `projects/${project}/locations/us/apps/${appId}/agents/${agentId}`)],
///     llmAgent: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_agent = gcp.ces.App("ces_app_for_agent",
///     app_id="app-id",
///     location="us",
///     description="App used as parent for CES Agent example",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_tool_for_agent = gcp.ces.Tool("ces_tool_for_agent",
///     location="us",
///     app=ces_app_for_agent.app_id,
///     tool_id="tool-1",
///     execution_type="SYNCHRONOUS",
///     python_function={
///         "name": "example_function",
///         "python_code": "def example_function() -> int: return 0",
///     })
/// ces_toolset_for_agent = gcp.ces.Toolset("ces_toolset_for_agent",
///     toolset_id="toolset-id",
///     location="us",
///     app=ces_app_for_agent.app_id,
///     display_name="Basic toolset display name",
///     open_api_toolset={
///         "open_api_schema": """openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// """,
///         "ignore_unknown_fields": False,
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example",
///                 "cert": "ZXhhbXBsZQ==",
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         "api_authentication": {
///             "service_agent_id_token_auth_config": {},
///         },
///     })
/// ces_child_agent = gcp.ces.Agent("ces_child_agent",
///     agent_id="child-agent-id",
///     location="us",
///     app=ces_app_for_agent.app_id,
///     display_name="child agent",
///     instruction="You are a helpful assistant for this example.",
///     model_settings={
///         "model": "gemini-1.5-flash",
///         "temperature": 0.5,
///     },
///     llm_agent={})
/// ces_guardrail_for_agent = gcp.ces.Guardrail("ces_guardrail_for_agent",
///     guardrail_id="guardrail-id",
///     location=ces_app_for_agent.location,
///     app=ces_app_for_agent.app_id,
///     display_name="Example guardrail",
///     description="Guardrail description",
///     action={
///         "respond_immediately": {
///             "responses": [{
///                 "text": "Text",
///                 "disabled": False,
///             }],
///         },
///     },
///     enabled=True,
///     model_safety={
///         "safety_settings": [{
///             "category": "HARM_CATEGORY_HATE_SPEECH",
///             "threshold": "BLOCK_NONE",
///         }],
///     })
/// ces_agent_basic = gcp.ces.Agent("ces_agent_basic",
///     agent_id="agent-id",
///     location="us",
///     app=ces_app_for_agent.app_id,
///     display_name="my-agent",
///     description="test agent",
///     instruction="You are a helpful assistant for this example.",
///     model_settings={
///         "model": "gemini-1.5-flash",
///         "temperature": 0.5,
///     },
///     after_agent_callbacks=[{
///         "description": "Example callback",
///         "disabled": True,
///         "python_code": """def callback(context):
///     return {'override': False}""",
///     }],
///     before_agent_callbacks=[{
///         "description": "Example callback",
///         "disabled": False,
///         "python_code": """def callback(context):
///     return {'override': False}""",
///     }],
///     after_model_callbacks=[{
///         "description": "Example callback",
///         "disabled": True,
///         "python_code": """def callback(context):
///     return {'override': False}""",
///     }],
///     before_model_callbacks=[{
///         "description": "Example callback",
///         "disabled": True,
///         "python_code": """def callback(context):
///     return {'override': False}""",
///     }],
///     after_tool_callbacks=[{
///         "description": "Example callback",
///         "disabled": True,
///         "python_code": """def callback(context):
///     return {'override': False}""",
///     }],
///     before_tool_callbacks=[{
///         "description": "Example callback",
///         "disabled": True,
///         "python_code": """def callback(context):
///     return {'override': False}""",
///     }],
///     tools=[ces_tool_for_agent.id],
///     guardrails=[ces_guardrail_for_agent.id],
///     toolsets=[{
///         "toolset": ces_toolset_for_agent.id,
///         "tool_ids": ["testtoolid"],
///     }],
///     child_agents=[pulumi.Output.all(
///         project=ces_app_for_agent.project,
///         app_id=ces_app_for_agent.app_id,
///         agent_id=ces_child_agent.agent_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/agents/{resolved_outputs['agent_id']}")
/// ],
///     llm_agent={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cesAppForAgent = new Gcp.Ces.App("ces_app_for_agent", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "App used as parent for CES Agent example",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesToolForAgent = new Gcp.Ces.Tool("ces_tool_for_agent", new()
///     {
///         Location = "us",
///         App = cesAppForAgent.AppId,
///         ToolId = "tool-1",
///         ExecutionType = "SYNCHRONOUS",
///         PythonFunction = new Gcp.Ces.Inputs.ToolPythonFunctionArgs
///         {
///             Name = "example_function",
///             PythonCode = "def example_function() -> int: return 0",
///         },
///     });
///
///     var cesToolsetForAgent = new Gcp.Ces.Toolset("ces_toolset_for_agent", new()
///     {
///         ToolsetId = "toolset-id",
///         Location = "us",
///         App = cesAppForAgent.AppId,
///         DisplayName = "Basic toolset display name",
///         OpenApiToolset = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetArgs
///         {
///             OpenApiSchema = @"openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// ",
///             IgnoreUnknownFields = false,
///             TlsConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Ces.Inputs.ToolsetOpenApiToolsetTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example",
///                         Cert = "ZXhhbXBsZQ==",
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs
///             {
///                 Service = "projects/example/locations/us/namespaces/namespace/services/service",
///             },
///             ApiAuthentication = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetApiAuthenticationArgs
///             {
///                 ServiceAgentIdTokenAuthConfig = null,
///             },
///         },
///     });
///
///     var cesChildAgent = new Gcp.Ces.Agent("ces_child_agent", new()
///     {
///         AgentId = "child-agent-id",
///         Location = "us",
///         App = cesAppForAgent.AppId,
///         DisplayName = "child agent",
///         Instruction = "You are a helpful assistant for this example.",
///         ModelSettings = new Gcp.Ces.Inputs.AgentModelSettingsArgs
///         {
///             Model = "gemini-1.5-flash",
///             Temperature = 0.5,
///         },
///         LlmAgent = null,
///     });
///
///     var cesGuardrailForAgent = new Gcp.Ces.Guardrail("ces_guardrail_for_agent", new()
///     {
///         GuardrailId = "guardrail-id",
///         Location = cesAppForAgent.Location,
///         App = cesAppForAgent.AppId,
///         DisplayName = "Example guardrail",
///         Description = "Guardrail description",
///         Action = new Gcp.Ces.Inputs.GuardrailActionArgs
///         {
///             RespondImmediately = new Gcp.Ces.Inputs.GuardrailActionRespondImmediatelyArgs
///             {
///                 Responses = new[]
///                 {
///                     new Gcp.Ces.Inputs.GuardrailActionRespondImmediatelyResponseArgs
///                     {
///                         Text = "Text",
///                         Disabled = false,
///                     },
///                 },
///             },
///         },
///         Enabled = true,
///         ModelSafety = new Gcp.Ces.Inputs.GuardrailModelSafetyArgs
///         {
///             SafetySettings = new[]
///             {
///                 new Gcp.Ces.Inputs.GuardrailModelSafetySafetySettingArgs
///                 {
///                     Category = "HARM_CATEGORY_HATE_SPEECH",
///                     Threshold = "BLOCK_NONE",
///                 },
///             },
///         },
///     });
///
///     var cesAgentBasic = new Gcp.Ces.Agent("ces_agent_basic", new()
///     {
///         AgentId = "agent-id",
///         Location = "us",
///         App = cesAppForAgent.AppId,
///         DisplayName = "my-agent",
///         Description = "test agent",
///         Instruction = "You are a helpful assistant for this example.",
///         ModelSettings = new Gcp.Ces.Inputs.AgentModelSettingsArgs
///         {
///             Model = "gemini-1.5-flash",
///             Temperature = 0.5,
///         },
///         AfterAgentCallbacks = new[]
///         {
///             new Gcp.Ces.Inputs.AgentAfterAgentCallbackArgs
///             {
///                 Description = "Example callback",
///                 Disabled = true,
///                 PythonCode = @"def callback(context):
///     return {'override': False}",
///             },
///         },
///         BeforeAgentCallbacks = new[]
///         {
///             new Gcp.Ces.Inputs.AgentBeforeAgentCallbackArgs
///             {
///                 Description = "Example callback",
///                 Disabled = false,
///                 PythonCode = @"def callback(context):
///     return {'override': False}",
///             },
///         },
///         AfterModelCallbacks = new[]
///         {
///             new Gcp.Ces.Inputs.AgentAfterModelCallbackArgs
///             {
///                 Description = "Example callback",
///                 Disabled = true,
///                 PythonCode = @"def callback(context):
///     return {'override': False}",
///             },
///         },
///         BeforeModelCallbacks = new[]
///         {
///             new Gcp.Ces.Inputs.AgentBeforeModelCallbackArgs
///             {
///                 Description = "Example callback",
///                 Disabled = true,
///                 PythonCode = @"def callback(context):
///     return {'override': False}",
///             },
///         },
///         AfterToolCallbacks = new[]
///         {
///             new Gcp.Ces.Inputs.AgentAfterToolCallbackArgs
///             {
///                 Description = "Example callback",
///                 Disabled = true,
///                 PythonCode = @"def callback(context):
///     return {'override': False}",
///             },
///         },
///         BeforeToolCallbacks = new[]
///         {
///             new Gcp.Ces.Inputs.AgentBeforeToolCallbackArgs
///             {
///                 Description = "Example callback",
///                 Disabled = true,
///                 PythonCode = @"def callback(context):
///     return {'override': False}",
///             },
///         },
///         Tools = new[]
///         {
///             cesToolForAgent.Id,
///         },
///         Guardrails = new[]
///         {
///             cesGuardrailForAgent.Id,
///         },
///         Toolsets = new[]
///         {
///             new Gcp.Ces.Inputs.AgentToolsetArgs
///             {
///                 Toolset = cesToolsetForAgent.Id,
///                 ToolIds = new[]
///                 {
///                     "testtoolid",
///                 },
///             },
///         },
///         ChildAgents = new[]
///         {
///             Output.Tuple(cesAppForAgent.Project, cesAppForAgent.AppId, cesChildAgent.AgentId).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var appId = values.Item2;
///                 var agentId = values.Item3;
///                 return $"projects/{project}/locations/us/apps/{appId}/agents/{agentId}";
///             }),
///         },
///         LlmAgent = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cesAppForAgent, err := ces.NewApp(ctx, "ces_app_for_agent", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("App used as parent for CES Agent example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cesToolForAgent, err := ces.NewTool(ctx, "ces_tool_for_agent", &ces.ToolArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           cesAppForAgent.AppId,
/// 			ToolId:        pulumi.String("tool-1"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			PythonFunction: &ces.ToolPythonFunctionArgs{
/// 				Name:       pulumi.String("example_function"),
/// 				PythonCode: pulumi.String("def example_function() -> int: return 0"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cesToolsetForAgent, err := ces.NewToolset(ctx, "ces_toolset_for_agent", &ces.ToolsetArgs{
/// 			ToolsetId:   pulumi.String("toolset-id"),
/// 			Location:    pulumi.String("us"),
/// 			App:         cesAppForAgent.AppId,
/// 			DisplayName: pulumi.String("Basic toolset display name"),
/// 			OpenApiToolset: &ces.ToolsetOpenApiToolsetArgs{
/// 				OpenApiSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// `),
/// 				IgnoreUnknownFields: pulumi.Bool(false),
/// 				TlsConfig: &ces.ToolsetOpenApiToolsetTlsConfigArgs{
/// 					CaCerts: ces.ToolsetOpenApiToolsetTlsConfigCaCertArray{
/// 						&ces.ToolsetOpenApiToolsetTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example"),
/// 							Cert:        pulumi.String("ZXhhbXBsZQ=="),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &ces.ToolsetOpenApiToolsetServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/example/locations/us/namespaces/namespace/services/service"),
/// 				},
/// 				ApiAuthentication: &ces.ToolsetOpenApiToolsetApiAuthenticationArgs{
/// 					ServiceAgentIdTokenAuthConfig: &ces.ToolsetOpenApiToolsetApiAuthenticationServiceAgentIdTokenAuthConfigArgs{},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cesChildAgent, err := ces.NewAgent(ctx, "ces_child_agent", &ces.AgentArgs{
/// 			AgentId:     pulumi.String("child-agent-id"),
/// 			Location:    pulumi.String("us"),
/// 			App:         cesAppForAgent.AppId,
/// 			DisplayName: pulumi.String("child agent"),
/// 			Instruction: pulumi.String("You are a helpful assistant for this example."),
/// 			ModelSettings: &ces.AgentModelSettingsArgs{
/// 				Model:       pulumi.String("gemini-1.5-flash"),
/// 				Temperature: pulumi.Float64(0.5),
/// 			},
/// 			LlmAgent: &ces.AgentLlmAgentArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cesGuardrailForAgent, err := ces.NewGuardrail(ctx, "ces_guardrail_for_agent", &ces.GuardrailArgs{
/// 			GuardrailId: pulumi.String("guardrail-id"),
/// 			Location:    cesAppForAgent.Location,
/// 			App:         cesAppForAgent.AppId,
/// 			DisplayName: pulumi.String("Example guardrail"),
/// 			Description: pulumi.String("Guardrail description"),
/// 			Action: &ces.GuardrailActionArgs{
/// 				RespondImmediately: &ces.GuardrailActionRespondImmediatelyArgs{
/// 					Responses: ces.GuardrailActionRespondImmediatelyResponseArray{
/// 						&ces.GuardrailActionRespondImmediatelyResponseArgs{
/// 							Text:     pulumi.String("Text"),
/// 							Disabled: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Enabled: pulumi.Bool(true),
/// 			ModelSafety: &ces.GuardrailModelSafetyArgs{
/// 				SafetySettings: ces.GuardrailModelSafetySafetySettingArray{
/// 					&ces.GuardrailModelSafetySafetySettingArgs{
/// 						Category:  pulumi.String("HARM_CATEGORY_HATE_SPEECH"),
/// 						Threshold: pulumi.String("BLOCK_NONE"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewAgent(ctx, "ces_agent_basic", &ces.AgentArgs{
/// 			AgentId:     pulumi.String("agent-id"),
/// 			Location:    pulumi.String("us"),
/// 			App:         cesAppForAgent.AppId,
/// 			DisplayName: pulumi.String("my-agent"),
/// 			Description: pulumi.String("test agent"),
/// 			Instruction: pulumi.String("You are a helpful assistant for this example."),
/// 			ModelSettings: &ces.AgentModelSettingsArgs{
/// 				Model:       pulumi.String("gemini-1.5-flash"),
/// 				Temperature: pulumi.Float64(0.5),
/// 			},
/// 			AfterAgentCallbacks: ces.AgentAfterAgentCallbackArray{
/// 				&ces.AgentAfterAgentCallbackArgs{
/// 					Description: pulumi.String("Example callback"),
/// 					Disabled:    pulumi.Bool(true),
/// 					PythonCode:  pulumi.String("def callback(context):\n    return {'override': False}"),
/// 				},
/// 			},
/// 			BeforeAgentCallbacks: ces.AgentBeforeAgentCallbackArray{
/// 				&ces.AgentBeforeAgentCallbackArgs{
/// 					Description: pulumi.String("Example callback"),
/// 					Disabled:    pulumi.Bool(false),
/// 					PythonCode:  pulumi.String("def callback(context):\n    return {'override': False}"),
/// 				},
/// 			},
/// 			AfterModelCallbacks: ces.AgentAfterModelCallbackArray{
/// 				&ces.AgentAfterModelCallbackArgs{
/// 					Description: pulumi.String("Example callback"),
/// 					Disabled:    pulumi.Bool(true),
/// 					PythonCode:  pulumi.String("def callback(context):\n    return {'override': False}"),
/// 				},
/// 			},
/// 			BeforeModelCallbacks: ces.AgentBeforeModelCallbackArray{
/// 				&ces.AgentBeforeModelCallbackArgs{
/// 					Description: pulumi.String("Example callback"),
/// 					Disabled:    pulumi.Bool(true),
/// 					PythonCode:  pulumi.String("def callback(context):\n    return {'override': False}"),
/// 				},
/// 			},
/// 			AfterToolCallbacks: ces.AgentAfterToolCallbackArray{
/// 				&ces.AgentAfterToolCallbackArgs{
/// 					Description: pulumi.String("Example callback"),
/// 					Disabled:    pulumi.Bool(true),
/// 					PythonCode:  pulumi.String("def callback(context):\n    return {'override': False}"),
/// 				},
/// 			},
/// 			BeforeToolCallbacks: ces.AgentBeforeToolCallbackArray{
/// 				&ces.AgentBeforeToolCallbackArgs{
/// 					Description: pulumi.String("Example callback"),
/// 					Disabled:    pulumi.Bool(true),
/// 					PythonCode:  pulumi.String("def callback(context):\n    return {'override': False}"),
/// 				},
/// 			},
/// 			Tools: pulumi.StringArray{
/// 				cesToolForAgent.ID(),
/// 			},
/// 			Guardrails: pulumi.StringArray{
/// 				cesGuardrailForAgent.ID(),
/// 			},
/// 			Toolsets: ces.AgentToolsetArray{
/// 				&ces.AgentToolsetArgs{
/// 					Toolset: cesToolsetForAgent.ID(),
/// 					ToolIds: pulumi.StringArray{
/// 						pulumi.String("testtoolid"),
/// 					},
/// 				},
/// 			},
/// 			ChildAgents: pulumi.StringArray{
/// 				pulumi.All(cesAppForAgent.Project, cesAppForAgent.AppId, cesChildAgent.AgentId).ApplyT(func(_args []interface{}) (string, error) {
/// 					project := _args[0].(string)
/// 					appId := _args[1].(string)
/// 					agentId := _args[2].(*string)
/// 					return fmt.Sprintf("projects/%v/locations/us/apps/%v/agents/%v", project, appId, agentId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			LlmAgent: &ces.AgentLlmAgentArgs{},
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Tool;
/// import com.pulumi.gcp.ces.ToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolPythonFunctionArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationServiceAgentIdTokenAuthConfigArgs;
/// import com.pulumi.gcp.ces.Agent;
/// import com.pulumi.gcp.ces.AgentArgs;
/// import com.pulumi.gcp.ces.inputs.AgentModelSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AgentLlmAgentArgs;
/// import com.pulumi.gcp.ces.Guardrail;
/// import com.pulumi.gcp.ces.GuardrailArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailActionArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailActionRespondImmediatelyArgs;
/// import com.pulumi.gcp.ces.inputs.GuardrailModelSafetyArgs;
/// import com.pulumi.gcp.ces.inputs.AgentAfterAgentCallbackArgs;
/// import com.pulumi.gcp.ces.inputs.AgentBeforeAgentCallbackArgs;
/// import com.pulumi.gcp.ces.inputs.AgentAfterModelCallbackArgs;
/// import com.pulumi.gcp.ces.inputs.AgentBeforeModelCallbackArgs;
/// import com.pulumi.gcp.ces.inputs.AgentAfterToolCallbackArgs;
/// import com.pulumi.gcp.ces.inputs.AgentBeforeToolCallbackArgs;
/// import com.pulumi.gcp.ces.inputs.AgentToolsetArgs;
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
///         var cesAppForAgent = new App("cesAppForAgent", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("App used as parent for CES Agent example")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesToolForAgent = new Tool("cesToolForAgent", ToolArgs.builder()
///             .location("us")
///             .app(cesAppForAgent.appId())
///             .toolId("tool-1")
///             .executionType("SYNCHRONOUS")
///             .pythonFunction(ToolPythonFunctionArgs.builder()
///                 .name("example_function")
///                 .pythonCode("def example_function() -> int: return 0")
///                 .build())
///             .build());
///
///         var cesToolsetForAgent = new Toolset("cesToolsetForAgent", ToolsetArgs.builder()
///             .toolsetId("toolset-id")
///             .location("us")
///             .app(cesAppForAgent.appId())
///             .displayName("Basic toolset display name")
///             .openApiToolset(ToolsetOpenApiToolsetArgs.builder()
///                 .openApiSchema("""
/// openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
///                 """)
///                 .ignoreUnknownFields(false)
///                 .tlsConfig(ToolsetOpenApiToolsetTlsConfigArgs.builder()
///                     .caCerts(ToolsetOpenApiToolsetTlsConfigCaCertArgs.builder()
///                         .displayName("example")
///                         .cert("ZXhhbXBsZQ==")
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(ToolsetOpenApiToolsetServiceDirectoryConfigArgs.builder()
///                     .service("projects/example/locations/us/namespaces/namespace/services/service")
///                     .build())
///                 .apiAuthentication(ToolsetOpenApiToolsetApiAuthenticationArgs.builder()
///                     .serviceAgentIdTokenAuthConfig(ToolsetOpenApiToolsetApiAuthenticationServiceAgentIdTokenAuthConfigArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var cesChildAgent = new Agent("cesChildAgent", AgentArgs.builder()
///             .agentId("child-agent-id")
///             .location("us")
///             .app(cesAppForAgent.appId())
///             .displayName("child agent")
///             .instruction("You are a helpful assistant for this example.")
///             .modelSettings(AgentModelSettingsArgs.builder()
///                 .model("gemini-1.5-flash")
///                 .temperature(0.5)
///                 .build())
///             .llmAgent(AgentLlmAgentArgs.builder()
///                 .build())
///             .build());
///
///         var cesGuardrailForAgent = new Guardrail("cesGuardrailForAgent", GuardrailArgs.builder()
///             .guardrailId("guardrail-id")
///             .location(cesAppForAgent.location())
///             .app(cesAppForAgent.appId())
///             .displayName("Example guardrail")
///             .description("Guardrail description")
///             .action(GuardrailActionArgs.builder()
///                 .respondImmediately(GuardrailActionRespondImmediatelyArgs.builder()
///                     .responses(GuardrailActionRespondImmediatelyResponseArgs.builder()
///                         .text("Text")
///                         .disabled(false)
///                         .build())
///                     .build())
///                 .build())
///             .enabled(true)
///             .modelSafety(GuardrailModelSafetyArgs.builder()
///                 .safetySettings(GuardrailModelSafetySafetySettingArgs.builder()
///                     .category("HARM_CATEGORY_HATE_SPEECH")
///                     .threshold("BLOCK_NONE")
///                     .build())
///                 .build())
///             .build());
///
///         var cesAgentBasic = new Agent("cesAgentBasic", AgentArgs.builder()
///             .agentId("agent-id")
///             .location("us")
///             .app(cesAppForAgent.appId())
///             .displayName("my-agent")
///             .description("test agent")
///             .instruction("You are a helpful assistant for this example.")
///             .modelSettings(AgentModelSettingsArgs.builder()
///                 .model("gemini-1.5-flash")
///                 .temperature(0.5)
///                 .build())
///             .afterAgentCallbacks(AgentAfterAgentCallbackArgs.builder()
///                 .description("Example callback")
///                 .disabled(true)
///                 .pythonCode("""
/// def callback(context):
///     return {'override': False}                """)
///                 .build())
///             .beforeAgentCallbacks(AgentBeforeAgentCallbackArgs.builder()
///                 .description("Example callback")
///                 .disabled(false)
///                 .pythonCode("""
/// def callback(context):
///     return {'override': False}                """)
///                 .build())
///             .afterModelCallbacks(AgentAfterModelCallbackArgs.builder()
///                 .description("Example callback")
///                 .disabled(true)
///                 .pythonCode("""
/// def callback(context):
///     return {'override': False}                """)
///                 .build())
///             .beforeModelCallbacks(AgentBeforeModelCallbackArgs.builder()
///                 .description("Example callback")
///                 .disabled(true)
///                 .pythonCode("""
/// def callback(context):
///     return {'override': False}                """)
///                 .build())
///             .afterToolCallbacks(AgentAfterToolCallbackArgs.builder()
///                 .description("Example callback")
///                 .disabled(true)
///                 .pythonCode("""
/// def callback(context):
///     return {'override': False}                """)
///                 .build())
///             .beforeToolCallbacks(AgentBeforeToolCallbackArgs.builder()
///                 .description("Example callback")
///                 .disabled(true)
///                 .pythonCode("""
/// def callback(context):
///     return {'override': False}                """)
///                 .build())
///             .tools(cesToolForAgent.id())
///             .guardrails(cesGuardrailForAgent.id())
///             .toolsets(AgentToolsetArgs.builder()
///                 .toolset(cesToolsetForAgent.id())
///                 .toolIds("testtoolid")
///                 .build())
///             .childAgents(Output.tuple(cesAppForAgent.project(), cesAppForAgent.appId(), cesChildAgent.agentId()).applyValue(values -> {
///                 var project = values.t1;
///                 var appId = values.t2;
///                 var agentId = values.t3;
///                 return String.format("projects/%s/locations/us/apps/%s/agents/%s", project,appId,agentId);
///             }))
///             .llmAgent(AgentLlmAgentArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppForAgent:
///     type: gcp:ces:App
///     name: ces_app_for_agent
///     properties:
///       appId: app-id
///       location: us
///       description: App used as parent for CES Agent example
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesToolForAgent:
///     type: gcp:ces:Tool
///     name: ces_tool_for_agent
///     properties:
///       location: us
///       app: ${cesAppForAgent.appId}
///       toolId: tool-1
///       executionType: SYNCHRONOUS
///       pythonFunction:
///         name: example_function
///         pythonCode: 'def example_function() -> int: return 0'
///   cesToolsetForAgent:
///     type: gcp:ces:Toolset
///     name: ces_toolset_for_agent
///     properties:
///       toolsetId: toolset-id
///       location: us
///       app: ${cesAppForAgent.appId}
///       displayName: Basic toolset display name
///       openApiToolset:
///         openApiSchema: |
///           openapi: 3.0.0
///           info:
///             title: My Sample API
///             version: 1.0.0
///             description: A simple API example
///           servers:
///             - url: https://api.example.com/v1
///           paths: {}
///         ignoreUnknownFields: false
///         tlsConfig:
///           caCerts:
///             - displayName: example
///               cert: ZXhhbXBsZQ==
///         serviceDirectoryConfig:
///           service: projects/example/locations/us/namespaces/namespace/services/service
///         apiAuthentication:
///           serviceAgentIdTokenAuthConfig: {}
///   cesChildAgent:
///     type: gcp:ces:Agent
///     name: ces_child_agent
///     properties:
///       agentId: child-agent-id
///       location: us
///       app: ${cesAppForAgent.appId}
///       displayName: child agent
///       instruction: You are a helpful assistant for this example.
///       modelSettings:
///         model: gemini-1.5-flash
///         temperature: 0.5
///       llmAgent: {}
///   cesGuardrailForAgent:
///     type: gcp:ces:Guardrail
///     name: ces_guardrail_for_agent
///     properties:
///       guardrailId: guardrail-id
///       location: ${cesAppForAgent.location}
///       app: ${cesAppForAgent.appId}
///       displayName: Example guardrail
///       description: Guardrail description
///       action:
///         respondImmediately:
///           responses:
///             - text: Text
///               disabled: false
///       enabled: true
///       modelSafety:
///         safetySettings:
///           - category: HARM_CATEGORY_HATE_SPEECH
///             threshold: BLOCK_NONE
///   cesAgentBasic:
///     type: gcp:ces:Agent
///     name: ces_agent_basic
///     properties:
///       agentId: agent-id
///       location: us
///       app: ${cesAppForAgent.appId}
///       displayName: my-agent
///       description: test agent
///       instruction: You are a helpful assistant for this example.
///       modelSettings:
///         model: gemini-1.5-flash
///         temperature: 0.5
///       afterAgentCallbacks:
///         - description: Example callback
///           disabled: true
///           pythonCode: |-
///             def callback(context):
///                 return {'override': False}
///       beforeAgentCallbacks:
///         - description: Example callback
///           disabled: false
///           pythonCode: |-
///             def callback(context):
///                 return {'override': False}
///       afterModelCallbacks:
///         - description: Example callback
///           disabled: true
///           pythonCode: |-
///             def callback(context):
///                 return {'override': False}
///       beforeModelCallbacks:
///         - description: Example callback
///           disabled: true
///           pythonCode: |-
///             def callback(context):
///                 return {'override': False}
///       afterToolCallbacks:
///         - description: Example callback
///           disabled: true
///           pythonCode: |-
///             def callback(context):
///                 return {'override': False}
///       beforeToolCallbacks:
///         - description: Example callback
///           disabled: true
///           pythonCode: |-
///             def callback(context):
///                 return {'override': False}
///       tools:
///         - ${cesToolForAgent.id}
///       guardrails:
///         - ${cesGuardrailForAgent.id}
///       toolsets:
///         - toolset: ${cesToolsetForAgent.id}
///           toolIds:
///             - testtoolid
///       childAgents:
///         - projects/${cesAppForAgent.project}/locations/us/apps/${cesAppForAgent.appId}/agents/${cesChildAgent.agentId}
///       llmAgent: {}
/// ```
///
/// ### Ces Agent Remote Dialogflow Agent
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForAgent = new gcp.ces.App("ces_app_for_agent", {
///     appId: "app-id",
///     location: "us",
///     description: "App used as parent for CES Agent example",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesAgentRemoteDialogflowAgent = new gcp.ces.Agent("ces_agent_remote_dialogflow_agent", {
///     agentId: "agent-id",
///     location: "us",
///     app: cesAppForAgent.appId,
///     displayName: "my-agent",
///     modelSettings: {
///         model: "gemini-1.5-flash",
///         temperature: 0.5,
///     },
///     remoteDialogflowAgent: {
///         agent: "projects/example/locations/us/agents/fake-agent",
///         flowId: "fake-flow",
///         environmentId: "fake-env",
///         inputVariableMapping: {
///             example: "1",
///         },
///         outputVariableMapping: {
///             example: "1",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_agent = gcp.ces.App("ces_app_for_agent",
///     app_id="app-id",
///     location="us",
///     description="App used as parent for CES Agent example",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_agent_remote_dialogflow_agent = gcp.ces.Agent("ces_agent_remote_dialogflow_agent",
///     agent_id="agent-id",
///     location="us",
///     app=ces_app_for_agent.app_id,
///     display_name="my-agent",
///     model_settings={
///         "model": "gemini-1.5-flash",
///         "temperature": 0.5,
///     },
///     remote_dialogflow_agent={
///         "agent": "projects/example/locations/us/agents/fake-agent",
///         "flow_id": "fake-flow",
///         "environment_id": "fake-env",
///         "input_variable_mapping": {
///             "example": "1",
///         },
///         "output_variable_mapping": {
///             "example": "1",
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
///     var cesAppForAgent = new Gcp.Ces.App("ces_app_for_agent", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "App used as parent for CES Agent example",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesAgentRemoteDialogflowAgent = new Gcp.Ces.Agent("ces_agent_remote_dialogflow_agent", new()
///     {
///         AgentId = "agent-id",
///         Location = "us",
///         App = cesAppForAgent.AppId,
///         DisplayName = "my-agent",
///         ModelSettings = new Gcp.Ces.Inputs.AgentModelSettingsArgs
///         {
///             Model = "gemini-1.5-flash",
///             Temperature = 0.5,
///         },
///         RemoteDialogflowAgent = new Gcp.Ces.Inputs.AgentRemoteDialogflowAgentArgs
///         {
///             Agent = "projects/example/locations/us/agents/fake-agent",
///             FlowId = "fake-flow",
///             EnvironmentId = "fake-env",
///             InputVariableMapping =
///             {
///                 { "example", "1" },
///             },
///             OutputVariableMapping =
///             {
///                 { "example", "1" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cesAppForAgent, err := ces.NewApp(ctx, "ces_app_for_agent", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("App used as parent for CES Agent example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewAgent(ctx, "ces_agent_remote_dialogflow_agent", &ces.AgentArgs{
/// 			AgentId:     pulumi.String("agent-id"),
/// 			Location:    pulumi.String("us"),
/// 			App:         cesAppForAgent.AppId,
/// 			DisplayName: pulumi.String("my-agent"),
/// 			ModelSettings: &ces.AgentModelSettingsArgs{
/// 				Model:       pulumi.String("gemini-1.5-flash"),
/// 				Temperature: pulumi.Float64(0.5),
/// 			},
/// 			RemoteDialogflowAgent: &ces.AgentRemoteDialogflowAgentArgs{
/// 				Agent:         pulumi.String("projects/example/locations/us/agents/fake-agent"),
/// 				FlowId:        pulumi.String("fake-flow"),
/// 				EnvironmentId: pulumi.String("fake-env"),
/// 				InputVariableMapping: pulumi.StringMap{
/// 					"example": pulumi.String("1"),
/// 				},
/// 				OutputVariableMapping: pulumi.StringMap{
/// 					"example": pulumi.String("1"),
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Agent;
/// import com.pulumi.gcp.ces.AgentArgs;
/// import com.pulumi.gcp.ces.inputs.AgentModelSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AgentRemoteDialogflowAgentArgs;
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
///         var cesAppForAgent = new App("cesAppForAgent", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("App used as parent for CES Agent example")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesAgentRemoteDialogflowAgent = new Agent("cesAgentRemoteDialogflowAgent", AgentArgs.builder()
///             .agentId("agent-id")
///             .location("us")
///             .app(cesAppForAgent.appId())
///             .displayName("my-agent")
///             .modelSettings(AgentModelSettingsArgs.builder()
///                 .model("gemini-1.5-flash")
///                 .temperature(0.5)
///                 .build())
///             .remoteDialogflowAgent(AgentRemoteDialogflowAgentArgs.builder()
///                 .agent("projects/example/locations/us/agents/fake-agent")
///                 .flowId("fake-flow")
///                 .environmentId("fake-env")
///                 .inputVariableMapping(Map.of("example", "1"))
///                 .outputVariableMapping(Map.of("example", "1"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppForAgent:
///     type: gcp:ces:App
///     name: ces_app_for_agent
///     properties:
///       appId: app-id
///       location: us
///       description: App used as parent for CES Agent example
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesAgentRemoteDialogflowAgent:
///     type: gcp:ces:Agent
///     name: ces_agent_remote_dialogflow_agent
///     properties:
///       agentId: agent-id
///       location: us
///       app: ${cesAppForAgent.appId}
///       displayName: my-agent
///       modelSettings:
///         model: gemini-1.5-flash
///         temperature: 0.5
///       remoteDialogflowAgent:
///         agent: projects/example/locations/us/agents/fake-agent
///         flowId: fake-flow
///         environmentId: fake-env
///         inputVariableMapping:
///           example: 1
///         outputVariableMapping:
///           example: 1
/// ```
///
///
/// ## Import
///
/// Agent can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/agents/{{name}}`
///
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
///
/// * `{{location}}/{{app}}/{{name}}`
///
/// When using the `pulumi import` command, Agent can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/agent:Agent default projects/{{project}}/locations/{{location}}/apps/{{app}}/agents/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/agent:Agent default {{project}}/{{location}}/{{app}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/agent:Agent default {{location}}/{{app}}/{{name}}
/// ```
class Agent extends pulumi.CustomResource {
  /// The callbacks to execute after the agent is called.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> afterAgentCallbacks;

  /// The callbacks to execute after the model is called. If there are multiple
  /// calls to the model, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> afterModelCallbacks;

  /// The callbacks to execute after the tool is invoked. If there are multiple
  /// tool invocations, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> afterToolCallbacks;

  /// The ID to use for the agent, which will become the final component of
  /// the agent's resource name. If not provided, a unique ID will be
  /// automatically assigned for the agent.
  late final pulumi.Output<String?> agentId;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> app;

  /// The callbacks to execute before the agent is called.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> beforeAgentCallbacks;

  /// The callbacks to execute before the model is called. If there are multiple
  /// calls to the model, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> beforeModelCallbacks;

  /// The callbacks to execute before the tool is invoked. If there are multiple
  /// tool invocations, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> beforeToolCallbacks;

  /// List of child agents in the agent tree.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  late final pulumi.Output<List<String>?> childAgents;

  /// Timestamp when the agent was created.
  late final pulumi.Output<String> createTime;

  /// Human-readable description of the agent.
  late final pulumi.Output<String?> description;

  /// Display name of the agent.
  late final pulumi.Output<String> displayName;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;

  /// If the agent is generated by the LLM assistant, this field contains a
  /// descriptive summary of the generation.
  late final pulumi.Output<String> generatedSummary;

  /// List of guardrails for the agent.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  late final pulumi.Output<List<String>?> guardrails;

  /// Instructions for the LLM model to guide the agent's behavior.
  late final pulumi.Output<String?> instruction;

  /// Default agent type. The agent uses instructions and callbacks specified in
  /// the agent to perform the task using a large language model.
  late final pulumi.Output<Map<String, dynamic>?> llmAgent;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  late final pulumi.Output<AgentModelSettings?> modelSettings;

  /// Identifier. The unique identifier of the agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The agent which will transfer execution to an existing remote
  /// [Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-conversational-agents)
  /// agent flow. The corresponding Dialogflow agent will process subsequent user
  /// queries until the session ends or flow ends and the control is transferred
  /// back to the parent CES agent.
  /// Structure is documented below.
  late final pulumi.Output<AgentRemoteDialogflowAgent?> remoteDialogflowAgent;

  /// List of available tools for the agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  late final pulumi.Output<List<String>?> tools;

  /// List of toolsets for the agent.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> toolsets;

  /// Timestamp when the agent was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Agent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Agent]. {@macro pulumi_ces_agent_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Agent(String name, {AgentArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:ces/agent:Agent',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    afterAgentCallbacks = registerOutput<List<Map<String, dynamic>>?>(
      'afterAgentCallbacks',
    );
    afterModelCallbacks = registerOutput<List<Map<String, dynamic>>?>(
      'afterModelCallbacks',
    );
    afterToolCallbacks = registerOutput<List<Map<String, dynamic>>?>(
      'afterToolCallbacks',
    );
    agentId = registerOutput<String?>('agentId');
    app = registerOutput<String>('app');
    beforeAgentCallbacks = registerOutput<List<Map<String, dynamic>>?>(
      'beforeAgentCallbacks',
    );
    beforeModelCallbacks = registerOutput<List<Map<String, dynamic>>?>(
      'beforeModelCallbacks',
    );
    beforeToolCallbacks = registerOutput<List<Map<String, dynamic>>?>(
      'beforeToolCallbacks',
    );
    childAgents = registerOutput<List<String>?>('childAgents');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    generatedSummary = registerOutput<String>('generatedSummary');
    guardrails = registerOutput<List<String>?>('guardrails');
    instruction = registerOutput<String?>('instruction');
    llmAgent = registerOutput<Map<String, dynamic>?>('llmAgent');
    location = registerOutput<String>('location');
    modelSettings = registerOutput<AgentModelSettings?>(
      'modelSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AgentModelSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    remoteDialogflowAgent = registerOutput<AgentRemoteDialogflowAgent?>(
      'remoteDialogflowAgent',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AgentRemoteDialogflowAgent.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tools = registerOutput<List<String>?>('tools');
    toolsets = registerOutput<List<Map<String, dynamic>>?>('toolsets');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Agent] resource's state with the given [name] and [id].
  static Agent get(String name, pulumi.Input<String> id, {AgentState? state}) {
    return Agent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Agent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:ces/agent:Agent',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    afterAgentCallbacks = registerOutput<List<Map<String, dynamic>>?>(
      'afterAgentCallbacks',
    );
    afterModelCallbacks = registerOutput<List<Map<String, dynamic>>?>(
      'afterModelCallbacks',
    );
    afterToolCallbacks = registerOutput<List<Map<String, dynamic>>?>(
      'afterToolCallbacks',
    );
    agentId = registerOutput<String?>('agentId');
    app = registerOutput<String>('app');
    beforeAgentCallbacks = registerOutput<List<Map<String, dynamic>>?>(
      'beforeAgentCallbacks',
    );
    beforeModelCallbacks = registerOutput<List<Map<String, dynamic>>?>(
      'beforeModelCallbacks',
    );
    beforeToolCallbacks = registerOutput<List<Map<String, dynamic>>?>(
      'beforeToolCallbacks',
    );
    childAgents = registerOutput<List<String>?>('childAgents');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    generatedSummary = registerOutput<String>('generatedSummary');
    guardrails = registerOutput<List<String>?>('guardrails');
    instruction = registerOutput<String?>('instruction');
    llmAgent = registerOutput<Map<String, dynamic>?>('llmAgent');
    location = registerOutput<String>('location');
    modelSettings = registerOutput<AgentModelSettings?>(
      'modelSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AgentModelSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    remoteDialogflowAgent = registerOutput<AgentRemoteDialogflowAgent?>(
      'remoteDialogflowAgent',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AgentRemoteDialogflowAgent.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tools = registerOutput<List<String>?>('tools');
    toolsets = registerOutput<List<Map<String, dynamic>>?>('toolsets');
    updateTime = registerOutput<String>('updateTime');
  }
}
