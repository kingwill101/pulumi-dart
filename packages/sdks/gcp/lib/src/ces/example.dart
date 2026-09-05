import 'package:pulumi/pulumi.dart' as pulumi;
import 'example_args.dart';
import 'example_message.dart';
import 'example_state.dart';

/// An example represents a sample conversation between the user and the agent(s).
///
///
///
/// ## Example Usage
///
/// ### Ces Example Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const my_app = new gcp.ces.App("my-app", {
///     location: "us",
///     displayName: "my-app",
///     appId: "app-id",
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesTool = new gcp.ces.Tool("ces_tool", {
///     location: "us",
///     app: my_app.appId,
///     toolId: "tool-1",
///     executionType: "SYNCHRONOUS",
///     pythonFunction: {
///         name: "example_function",
///         pythonCode: "def example_function() -> int: return 0",
///     },
/// });
/// const cesToolset = new gcp.ces.Toolset("ces_toolset", {
///     toolsetId: "toolset-id",
///     location: "us",
///     app: my_app.appId,
///     displayName: "Basic toolset display name",
///     openApiToolset: {
///         openApiSchema: `openapi: 3.0.0
/// info:
///     title: My Sample API
///     version: 1.0.0
///     description: A simple API example
/// servers:
///     - url: https://api.example.com/v1
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
/// const cesBaseAgent = new gcp.ces.Agent("ces_base_agent", {
///     agentId: "base-agent-id",
///     location: "us",
///     app: my_app.appId,
///     displayName: "base agent",
///     instruction: "You are a helpful assistant for this example.",
///     modelSettings: {
///         model: "gemini-3.0-flash-001",
///         temperature: 0.5,
///     },
///     llmAgent: {},
/// });
/// const cesChildAgent = new gcp.ces.Agent("ces_child_agent", {
///     agentId: "child-agent-id",
///     location: "us",
///     app: my_app.appId,
///     displayName: "child agent",
///     instruction: "You are a helpful assistant for this example.",
///     modelSettings: {
///         model: "gemini-3.0-flash-001",
///         temperature: 0.5,
///     },
///     llmAgent: {},
/// });
/// const my_example = new gcp.ces.Example("my-example", {
///     location: "us",
///     displayName: "my-example",
///     app: my_app.name,
///     exampleId: "example-id",
///     description: "example description",
///     entryAgent: pulumi.interpolate`projects/${my_app.project}/locations/us/apps/${my_app.appId}/agents/${cesBaseAgent.agentId}`,
///     messages: [{
///         chunks: [
///             {
///                 agentTransfer: {
///                     targetAgent: pulumi.interpolate`projects/${my_app.project}/locations/us/apps/${my_app.appId}/agents/${cesChildAgent.agentId}`,
///                 },
///             },
///             {
///                 image: {
///                     mimeType: "image/png",
///                     data: std.base64encode({
///                         input: "This is some fake image binary data.",
///                     }).then(invoke => invoke.result),
///                 },
///             },
///             {
///                 text: "text_data",
///             },
///             {
///                 toolCall: {
///                     args: JSON.stringify({
///                         arg1: "val1",
///                         arg2: "val2",
///                     }),
///                     id: "tool_call_id",
///                     tool: pulumi.interpolate`projects/${my_app.project}/locations/us/apps/${my_app.appId}/tools/${cesTool.toolId}`,
///                 },
///             },
///             {
///                 toolCall: {
///                     args: JSON.stringify({
///                         arg1: "val1",
///                         arg2: "val2",
///                     }),
///                     id: "tool_call_id2",
///                     toolsetTool: {
///                         toolset: pulumi.interpolate`projects/${my_app.project}/locations/us/apps/${my_app.appId}/toolsets/${cesToolset.toolsetId}`,
///                         toolId: "example-id",
///                     },
///                 },
///             },
///             {
///                 toolResponse: {
///                     id: "tool_call_id",
///                     response: JSON.stringify({
///                         output: "example-output",
///                     }),
///                     tool: pulumi.interpolate`projects/${my_app.project}/locations/us/apps/${my_app.appId}/tools/${cesTool.toolId}`,
///                 },
///             },
///             {
///                 toolResponse: {
///                     id: "tool_call_id2",
///                     response: JSON.stringify({
///                         output: "example-output",
///                     }),
///                     toolsetTool: {
///                         toolset: pulumi.interpolate`projects/${my_app.project}/locations/us/apps/${my_app.appId}/toolsets/${cesToolset.toolsetId}`,
///                         toolId: "example-id",
///                     },
///                 },
///             },
///             {
///                 updatedVariables: JSON.stringify({
///                     var1: "val1",
///                     var2: "val2",
///                 }),
///             },
///         ],
///         role: "agent",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// my_app = gcp.ces.App("my-app",
///     location="us",
///     display_name="my-app",
///     app_id="app-id",
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_tool = gcp.ces.Tool("ces_tool",
///     location="us",
///     app=my_app.app_id,
///     tool_id="tool-1",
///     execution_type="SYNCHRONOUS",
///     python_function={
///         "name": "example_function",
///         "python_code": "def example_function() -> int: return 0",
///     })
/// ces_toolset = gcp.ces.Toolset("ces_toolset",
///     toolset_id="toolset-id",
///     location="us",
///     app=my_app.app_id,
///     display_name="Basic toolset display name",
///     open_api_toolset={
///         "open_api_schema": """openapi: 3.0.0
/// info:
///     title: My Sample API
///     version: 1.0.0
///     description: A simple API example
/// servers:
///     - url: https://api.example.com/v1
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
/// ces_base_agent = gcp.ces.Agent("ces_base_agent",
///     agent_id="base-agent-id",
///     location="us",
///     app=my_app.app_id,
///     display_name="base agent",
///     instruction="You are a helpful assistant for this example.",
///     model_settings={
///         "model": "gemini-3.0-flash-001",
///         "temperature": 0.5,
///     },
///     llm_agent={})
/// ces_child_agent = gcp.ces.Agent("ces_child_agent",
///     agent_id="child-agent-id",
///     location="us",
///     app=my_app.app_id,
///     display_name="child agent",
///     instruction="You are a helpful assistant for this example.",
///     model_settings={
///         "model": "gemini-3.0-flash-001",
///         "temperature": 0.5,
///     },
///     llm_agent={})
/// my_example = gcp.ces.Example("my-example",
///     location="us",
///     display_name="my-example",
///     app=my_app.name,
///     example_id="example-id",
///     description="example description",
///     entry_agent=pulumi.Output.all(
///         project=my_app.project,
///         app_id=my_app.app_id,
///         agent_id=ces_base_agent.agent_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/agents/{resolved_outputs['agent_id']}")
/// ,
///     messages=[{
///         "chunks": [
///             {
///                 "agent_transfer": {
///                     "target_agent": pulumi.Output.all(
///                         project=my_app.project,
///                         app_id=my_app.app_id,
///                         agent_id=ces_child_agent.agent_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/agents/{resolved_outputs['agent_id']}")
/// ,
///                 },
///             },
///             {
///                 "image": {
///                     "mime_type": "image/png",
///                     "data": std.base64encode(input="This is some fake image binary data.").result,
///                 },
///             },
///             {
///                 "text": "text_data",
///             },
///             {
///                 "tool_call": {
///                     "args": json.dumps({
///                         "arg1": "val1",
///                         "arg2": "val2",
///                     }),
///                     "id": "tool_call_id",
///                     "tool": pulumi.Output.all(
///                         project=my_app.project,
///                         app_id=my_app.app_id,
///                         tool_id=ces_tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                 },
///             },
///             {
///                 "tool_call": {
///                     "args": json.dumps({
///                         "arg1": "val1",
///                         "arg2": "val2",
///                     }),
///                     "id": "tool_call_id2",
///                     "toolset_tool": {
///                         "toolset": pulumi.Output.all(
///                             project=my_app.project,
///                             app_id=my_app.app_id,
///                             toolset_id=ces_toolset.toolset_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/toolsets/{resolved_outputs['toolset_id']}")
/// ,
///                         "tool_id": "example-id",
///                     },
///                 },
///             },
///             {
///                 "tool_response": {
///                     "id": "tool_call_id",
///                     "response": json.dumps({
///                         "output": "example-output",
///                     }),
///                     "tool": pulumi.Output.all(
///                         project=my_app.project,
///                         app_id=my_app.app_id,
///                         tool_id=ces_tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                 },
///             },
///             {
///                 "tool_response": {
///                     "id": "tool_call_id2",
///                     "response": json.dumps({
///                         "output": "example-output",
///                     }),
///                     "toolset_tool": {
///                         "toolset": pulumi.Output.all(
///                             project=my_app.project,
///                             app_id=my_app.app_id,
///                             toolset_id=ces_toolset.toolset_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/toolsets/{resolved_outputs['toolset_id']}")
/// ,
///                         "tool_id": "example-id",
///                     },
///                 },
///             },
///             {
///                 "updated_variables": json.dumps({
///                     "var1": "val1",
///                     "var2": "val2",
///                 }),
///             },
///         ],
///         "role": "agent",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_app = new Gcp.Ces.App("my-app", new()
///     {
///         Location = "us",
///         DisplayName = "my-app",
///         AppId = "app-id",
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesTool = new Gcp.Ces.Tool("ces_tool", new()
///     {
///         Location = "us",
///         App = my_app.AppId,
///         ToolId = "tool-1",
///         ExecutionType = "SYNCHRONOUS",
///         PythonFunction = new Gcp.Ces.Inputs.ToolPythonFunctionArgs
///         {
///             Name = "example_function",
///             PythonCode = "def example_function() -> int: return 0",
///         },
///     });
///
///     var cesToolset = new Gcp.Ces.Toolset("ces_toolset", new()
///     {
///         ToolsetId = "toolset-id",
///         Location = "us",
///         App = my_app.AppId,
///         DisplayName = "Basic toolset display name",
///         OpenApiToolset = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetArgs
///         {
///             OpenApiSchema = @"openapi: 3.0.0
/// info:
///     title: My Sample API
///     version: 1.0.0
///     description: A simple API example
/// servers:
///     - url: https://api.example.com/v1
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
///     var cesBaseAgent = new Gcp.Ces.Agent("ces_base_agent", new()
///     {
///         AgentId = "base-agent-id",
///         Location = "us",
///         App = my_app.AppId,
///         DisplayName = "base agent",
///         Instruction = "You are a helpful assistant for this example.",
///         ModelSettings = new Gcp.Ces.Inputs.AgentModelSettingsArgs
///         {
///             Model = "gemini-3.0-flash-001",
///             Temperature = 0.5,
///         },
///         LlmAgent = new() { },
///     });
///
///     var cesChildAgent = new Gcp.Ces.Agent("ces_child_agent", new()
///     {
///         AgentId = "child-agent-id",
///         Location = "us",
///         App = my_app.AppId,
///         DisplayName = "child agent",
///         Instruction = "You are a helpful assistant for this example.",
///         ModelSettings = new Gcp.Ces.Inputs.AgentModelSettingsArgs
///         {
///             Model = "gemini-3.0-flash-001",
///             Temperature = 0.5,
///         },
///         LlmAgent = new() { },
///     });
///
///     var my_example = new Gcp.Ces.Example("my-example", new()
///     {
///         Location = "us",
///         DisplayName = "my-example",
///         App = my_app.Name,
///         ExampleId = "example-id",
///         Description = "example description",
///         EntryAgent = Output.Tuple(my_app.Project, my_app.AppId, cesBaseAgent.AgentId).Apply(values =>
///         {
///             var project = values.Item1;
///             var appId = values.Item2;
///             var agentId = values.Item3;
///             return $"projects/{project}/locations/us/apps/{appId}/agents/{agentId}";
///         }),
///         Messages = new[]
///         {
///             new Gcp.Ces.Inputs.ExampleMessageArgs
///             {
///                 Chunks = new[]
///                 {
///                     new Gcp.Ces.Inputs.ExampleMessageChunkArgs
///                     {
///                         AgentTransfer = new Gcp.Ces.Inputs.ExampleMessageChunkAgentTransferArgs
///                         {
///                             TargetAgent = Output.Tuple(my_app.Project, my_app.AppId, cesChildAgent.AgentId).Apply(values =>
///                             {
///                                 var project = values.Item1;
///                                 var appId = values.Item2;
///                                 var agentId = values.Item3;
///                                 return $"projects/{project}/locations/us/apps/{appId}/agents/{agentId}";
///                             }),
///                         },
///                     },
///                     new Gcp.Ces.Inputs.ExampleMessageChunkArgs
///                     {
///                         Image = new Gcp.Ces.Inputs.ExampleMessageChunkImageArgs
///                         {
///                             MimeType = "image/png",
///                             Data = Std.Base64encode.Invoke(new()
///                             {
///                                 Input = "This is some fake image binary data.",
///                             }).Apply(invoke => invoke.Result),
///                         },
///                     },
///                     new Gcp.Ces.Inputs.ExampleMessageChunkArgs
///                     {
///                         Text = "text_data",
///                     },
///                     new Gcp.Ces.Inputs.ExampleMessageChunkArgs
///                     {
///                         ToolCall = new Gcp.Ces.Inputs.ExampleMessageChunkToolCallArgs
///                         {
///                             Args = JsonSerializer.Serialize(new Dictionary<string, object?>
///                             {
///                                 ["arg1"] = "val1",
///                                 ["arg2"] = "val2",
///                             }),
///                             Id = "tool_call_id",
///                             Tool = Output.Tuple(my_app.Project, my_app.AppId, cesTool.ToolId).Apply(values =>
///                             {
///                                 var project = values.Item1;
///                                 var appId = values.Item2;
///                                 var toolId = values.Item3;
///                                 return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                             }),
///                         },
///                     },
///                     new Gcp.Ces.Inputs.ExampleMessageChunkArgs
///                     {
///                         ToolCall = new Gcp.Ces.Inputs.ExampleMessageChunkToolCallArgs
///                         {
///                             Args = JsonSerializer.Serialize(new Dictionary<string, object?>
///                             {
///                                 ["arg1"] = "val1",
///                                 ["arg2"] = "val2",
///                             }),
///                             Id = "tool_call_id2",
///                             ToolsetTool = new Gcp.Ces.Inputs.ExampleMessageChunkToolCallToolsetToolArgs
///                             {
///                                 Toolset = Output.Tuple(my_app.Project, my_app.AppId, cesToolset.ToolsetId).Apply(values =>
///                                 {
///                                     var project = values.Item1;
///                                     var appId = values.Item2;
///                                     var toolsetId = values.Item3;
///                                     return $"projects/{project}/locations/us/apps/{appId}/toolsets/{toolsetId}";
///                                 }),
///                                 ToolId = "example-id",
///                             },
///                         },
///                     },
///                     new Gcp.Ces.Inputs.ExampleMessageChunkArgs
///                     {
///                         ToolResponse = new Gcp.Ces.Inputs.ExampleMessageChunkToolResponseArgs
///                         {
///                             Id = "tool_call_id",
///                             Response = JsonSerializer.Serialize(new Dictionary<string, object?>
///                             {
///                                 ["output"] = "example-output",
///                             }),
///                             Tool = Output.Tuple(my_app.Project, my_app.AppId, cesTool.ToolId).Apply(values =>
///                             {
///                                 var project = values.Item1;
///                                 var appId = values.Item2;
///                                 var toolId = values.Item3;
///                                 return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                             }),
///                         },
///                     },
///                     new Gcp.Ces.Inputs.ExampleMessageChunkArgs
///                     {
///                         ToolResponse = new Gcp.Ces.Inputs.ExampleMessageChunkToolResponseArgs
///                         {
///                             Id = "tool_call_id2",
///                             Response = JsonSerializer.Serialize(new Dictionary<string, object?>
///                             {
///                                 ["output"] = "example-output",
///                             }),
///                             ToolsetTool = new Gcp.Ces.Inputs.ExampleMessageChunkToolResponseToolsetToolArgs
///                             {
///                                 Toolset = Output.Tuple(my_app.Project, my_app.AppId, cesToolset.ToolsetId).Apply(values =>
///                                 {
///                                     var project = values.Item1;
///                                     var appId = values.Item2;
///                                     var toolsetId = values.Item3;
///                                     return $"projects/{project}/locations/us/apps/{appId}/toolsets/{toolsetId}";
///                                 }),
///                                 ToolId = "example-id",
///                             },
///                         },
///                     },
///                     new Gcp.Ces.Inputs.ExampleMessageChunkArgs
///                     {
///                         UpdatedVariables = JsonSerializer.Serialize(new Dictionary<string, object?>
///                         {
///                             ["var1"] = "val1",
///                             ["var2"] = "val2",
///                         }),
///                     },
///                 },
///                 Role = "agent",
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
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_app, err := ces.NewApp(ctx, "my-app", &ces.AppArgs{
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			AppId:       pulumi.String("app-id"),
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cesTool, err := ces.NewTool(ctx, "ces_tool", &ces.ToolArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           my_app.AppId,
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
/// 		cesToolset, err := ces.NewToolset(ctx, "ces_toolset", &ces.ToolsetArgs{
/// 			ToolsetId:   pulumi.String("toolset-id"),
/// 			Location:    pulumi.String("us"),
/// 			App:         my_app.AppId,
/// 			DisplayName: pulumi.String("Basic toolset display name"),
/// 			OpenApiToolset: &ces.ToolsetOpenApiToolsetArgs{
/// 				OpenApiSchema: pulumi.String(`openapi: 3.0.0
/// info:
///     title: My Sample API
///     version: 1.0.0
///     description: A simple API example
/// servers:
///     - url: https://api.example.com/v1
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
/// 		cesBaseAgent, err := ces.NewAgent(ctx, "ces_base_agent", &ces.AgentArgs{
/// 			AgentId:     pulumi.String("base-agent-id"),
/// 			Location:    pulumi.String("us"),
/// 			App:         my_app.AppId,
/// 			DisplayName: pulumi.String("base agent"),
/// 			Instruction: pulumi.String("You are a helpful assistant for this example."),
/// 			ModelSettings: &ces.AgentModelSettingsArgs{
/// 				Model:       pulumi.String("gemini-3.0-flash-001"),
/// 				Temperature: pulumi.Float64(0.5),
/// 			},
/// 			LlmAgent: &ces.AgentLlmAgentArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cesChildAgent, err := ces.NewAgent(ctx, "ces_child_agent", &ces.AgentArgs{
/// 			AgentId:     pulumi.String("child-agent-id"),
/// 			Location:    pulumi.String("us"),
/// 			App:         my_app.AppId,
/// 			DisplayName: pulumi.String("child agent"),
/// 			Instruction: pulumi.String("You are a helpful assistant for this example."),
/// 			ModelSettings: &ces.AgentModelSettingsArgs{
/// 				Model:       pulumi.String("gemini-3.0-flash-001"),
/// 				Temperature: pulumi.Float64(0.5),
/// 			},
/// 			LlmAgent: &ces.AgentLlmAgentArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"arg1": "val1",
/// 			"arg2": "val2",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]string{
/// 			"arg1": "val1",
/// 			"arg2": "val2",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		tmpJSON2, err := json.Marshal(map[string]string{
/// 			"output": "example-output",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json2 := string(tmpJSON2)
/// 		tmpJSON3, err := json.Marshal(map[string]string{
/// 			"output": "example-output",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json3 := string(tmpJSON3)
/// 		tmpJSON4, err := json.Marshal(map[string]string{
/// 			"var1": "val1",
/// 			"var2": "val2",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json4 := string(tmpJSON4)
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "This is some fake image binary data.",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewExample(ctx, "my-example", &ces.ExampleArgs{
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-example"),
/// 			App:         my_app.Name,
/// 			ExampleId:   pulumi.String("example-id"),
/// 			Description: pulumi.String("example description"),
/// 			EntryAgent: pulumi.All(my_app.Project, my_app.AppId, cesBaseAgent.AgentId).ApplyT(func(_args []interface{}) (string, error) {
/// 				project := _args[0].(string)
/// 				appId := _args[1].(string)
/// 				agentId := _args[2].(*string)
/// 				return fmt.Sprintf("projects/%v/locations/us/apps/%v/agents/%v", project, appId, agentId), nil
/// 			}).(pulumi.StringOutput),
/// 			Messages: ces.ExampleMessageArray{
/// 				&ces.ExampleMessageArgs{
/// 					Chunks: ces.ExampleMessageChunkArray{
/// 						&ces.ExampleMessageChunkArgs{
/// 							AgentTransfer: &ces.ExampleMessageChunkAgentTransferArgs{
/// 								TargetAgent: pulumi.All(my_app.Project, my_app.AppId, cesChildAgent.AgentId).ApplyT(func(_args []interface{}) (string, error) {
/// 									project := _args[0].(string)
/// 									appId := _args[1].(string)
/// 									agentId := _args[2].(*string)
/// 									return fmt.Sprintf("projects/%v/locations/us/apps/%v/agents/%v", project, appId, agentId), nil
/// 								}).(pulumi.StringOutput),
/// 							},
/// 						},
/// 						&ces.ExampleMessageChunkArgs{
/// 							Image: &ces.ExampleMessageChunkImageArgs{
/// 								MimeType: pulumi.String("image/png"),
/// 								Data:     pulumi.String(invokeBase64encode.Result),
/// 							},
/// 						},
/// 						&ces.ExampleMessageChunkArgs{
/// 							Text: pulumi.String("text_data"),
/// 						},
/// 						&ces.ExampleMessageChunkArgs{
/// 							ToolCall: &ces.ExampleMessageChunkToolCallArgs{
/// 								Args: pulumi.String(json0),
/// 								Id:   pulumi.String("tool_call_id"),
/// 								Tool: pulumi.All(my_app.Project, my_app.AppId, cesTool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 									project := _args[0].(string)
/// 									appId := _args[1].(string)
/// 									toolId := _args[2].(string)
/// 									return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 								}).(pulumi.StringOutput),
/// 							},
/// 						},
/// 						&ces.ExampleMessageChunkArgs{
/// 							ToolCall: &ces.ExampleMessageChunkToolCallArgs{
/// 								Args: pulumi.String(json1),
/// 								Id:   pulumi.String("tool_call_id2"),
/// 								ToolsetTool: &ces.ExampleMessageChunkToolCallToolsetToolArgs{
/// 									Toolset: pulumi.All(my_app.Project, my_app.AppId, cesToolset.ToolsetId).ApplyT(func(_args []interface{}) (string, error) {
/// 										project := _args[0].(string)
/// 										appId := _args[1].(string)
/// 										toolsetId := _args[2].(string)
/// 										return fmt.Sprintf("projects/%v/locations/us/apps/%v/toolsets/%v", project, appId, toolsetId), nil
/// 									}).(pulumi.StringOutput),
/// 									ToolId: pulumi.String("example-id"),
/// 								},
/// 							},
/// 						},
/// 						&ces.ExampleMessageChunkArgs{
/// 							ToolResponse: &ces.ExampleMessageChunkToolResponseArgs{
/// 								Id:       pulumi.String("tool_call_id"),
/// 								Response: pulumi.String(json2),
/// 								Tool: pulumi.All(my_app.Project, my_app.AppId, cesTool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 									project := _args[0].(string)
/// 									appId := _args[1].(string)
/// 									toolId := _args[2].(string)
/// 									return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 								}).(pulumi.StringOutput),
/// 							},
/// 						},
/// 						&ces.ExampleMessageChunkArgs{
/// 							ToolResponse: &ces.ExampleMessageChunkToolResponseArgs{
/// 								Id:       pulumi.String("tool_call_id2"),
/// 								Response: pulumi.String(json3),
/// 								ToolsetTool: &ces.ExampleMessageChunkToolResponseToolsetToolArgs{
/// 									Toolset: pulumi.All(my_app.Project, my_app.AppId, cesToolset.ToolsetId).ApplyT(func(_args []interface{}) (string, error) {
/// 										project := _args[0].(string)
/// 										appId := _args[1].(string)
/// 										toolsetId := _args[2].(string)
/// 										return fmt.Sprintf("projects/%v/locations/us/apps/%v/toolsets/%v", project, appId, toolsetId), nil
/// 									}).(pulumi.StringOutput),
/// 									ToolId: pulumi.String("example-id"),
/// 								},
/// 							},
/// 						},
/// 						&ces.ExampleMessageChunkArgs{
/// 							UpdatedVariables: pulumi.String(json4),
/// 						},
/// 					},
/// 					Role: pulumi.String("agent"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "my-app" {
///   location     = "us"
///   display_name = "my-app"
///   app_id       = "app-id"
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_tool" "ces_tool" {
///   location       = "us"
///   app            = gcp_ces_app.my-app.app_id
///   tool_id        = "tool-1"
///   execution_type = "SYNCHRONOUS"
///   python_function = {
///     name        = "example_function"
///     python_code = "def example_function() -> int: return 0"
///   }
/// }
/// resource "gcp_ces_toolset" "ces_toolset" {
///   toolset_id   = "toolset-id"
///   location     = "us"
///   app          = gcp_ces_app.my-app.app_id
///   display_name = "Basic toolset display name"
///   open_api_toolset = {
///     open_api_schema       = "openapi: 3.0.0\ninfo:\n    title: My Sample API\n    version: 1.0.0\n    description: A simple API example\nservers:\n    - url: https://api.example.com/v1\npaths: {}\n"
///     ignore_unknown_fields = false
///     tls_config = {
///       ca_certs = [{
///         "displayName" = "example"
///         "cert"        = "ZXhhbXBsZQ=="
///       }]
///     }
///     service_directory_config = {
///       service = "projects/example/locations/us/namespaces/namespace/services/service"
///     }
///     api_authentication = {
///       service_agent_id_token_auth_config = {}
///     }
///   }
/// }
/// resource "gcp_ces_agent" "ces_base_agent" {
///   agent_id     = "base-agent-id"
///   location     = "us"
///   app          = gcp_ces_app.my-app.app_id
///   display_name = "base agent"
///   instruction  = "You are a helpful assistant for this example."
///   model_settings = {
///     model       = "gemini-3.0-flash-001"
///     temperature = 0.5
///   }
///   llm_agent = {}
/// }
/// resource "gcp_ces_agent" "ces_child_agent" {
///   agent_id     = "child-agent-id"
///   location     = "us"
///   app          = gcp_ces_app.my-app.app_id
///   display_name = "child agent"
///   instruction  = "You are a helpful assistant for this example."
///   model_settings = {
///     model       = "gemini-3.0-flash-001"
///     temperature = 0.5
///   }
///   llm_agent = {}
/// }
/// resource "gcp_ces_example" "my-example" {
///   location     = "us"
///   display_name = "my-example"
///   app          = gcp_ces_app.my-app.name
///   example_id   = "example-id"
///   description  = "example description"
///   entry_agent  ="projects/${gcp_ces_app.my-app.project}/locations/us/apps/${gcp_ces_app.my-app.app_id}/agents/${gcp_ces_agent.ces_base_agent.agent_id}"
///   messages {
///     chunks {
///       agent_transfer = {
///         target_agent ="projects/${gcp_ces_app.my-app.project}/locations/us/apps/${gcp_ces_app.my-app.app_id}/agents/${gcp_ces_agent.ces_child_agent.agent_id}"
///       }
///     }
///     chunks {
///       image = {
///         mime_type = "image/png"
///         data      = base64encode("This is some fake image binary data.")
///       }
///     }
///     chunks {
///       text = "text_data"
///     }
///     chunks {
///       tool_call = {
///         args = jsonencode({
///           "arg1" = "val1"
///           "arg2" = "val2"
///         })
///         id   = "tool_call_id"
///         tool ="projects/${gcp_ces_app.my-app.project}/locations/us/apps/${gcp_ces_app.my-app.app_id}/tools/${gcp_ces_tool.ces_tool.tool_id}"
///       }
///     }
///     chunks {
///       tool_call = {
///         args = jsonencode({
///           "arg1" = "val1"
///           "arg2" = "val2"
///         })
///         id = "tool_call_id2"
///         toolset_tool = {
///           toolset ="projects/${gcp_ces_app.my-app.project}/locations/us/apps/${gcp_ces_app.my-app.app_id}/toolsets/${gcp_ces_toolset.ces_toolset.toolset_id}"
///           tool_id = "example-id"
///         }
///       }
///     }
///     chunks {
///       tool_response = {
///         id = "tool_call_id"
///         response = jsonencode({
///           "output" = "example-output"
///         })
///         tool ="projects/${gcp_ces_app.my-app.project}/locations/us/apps/${gcp_ces_app.my-app.app_id}/tools/${gcp_ces_tool.ces_tool.tool_id}"
///       }
///     }
///     chunks {
///       tool_response = {
///         id = "tool_call_id2"
///         response = jsonencode({
///           "output" = "example-output"
///         })
///         toolset_tool = {
///           toolset ="projects/${gcp_ces_app.my-app.project}/locations/us/apps/${gcp_ces_app.my-app.app_id}/toolsets/${gcp_ces_toolset.ces_toolset.toolset_id}"
///           tool_id = "example-id"
///         }
///       }
///     }
///     chunks {
///       updated_variables = jsonencode({
///         "var1" = "val1"
///         "var2" = "val2"
///       })
///     }
///     role = "agent"
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
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigCaCertArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationServiceAgentIdTokenAuthConfigArgs;
/// import com.pulumi.gcp.ces.Agent;
/// import com.pulumi.gcp.ces.AgentArgs;
/// import com.pulumi.gcp.ces.inputs.AgentModelSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AgentLlmAgentArgs;
/// import com.pulumi.gcp.ces.Example;
/// import com.pulumi.gcp.ces.ExampleArgs;
/// import com.pulumi.gcp.ces.inputs.ExampleMessageArgs;
/// import com.pulumi.gcp.ces.inputs.ExampleMessageChunkArgs;
/// import com.pulumi.gcp.ces.inputs.ExampleMessageChunkAgentTransferArgs;
/// import com.pulumi.gcp.ces.inputs.ExampleMessageChunkImageArgs;
/// import com.pulumi.gcp.ces.inputs.ExampleMessageChunkToolCallArgs;
/// import com.pulumi.gcp.ces.inputs.ExampleMessageChunkToolCallToolsetToolArgs;
/// import com.pulumi.gcp.ces.inputs.ExampleMessageChunkToolResponseArgs;
/// import com.pulumi.gcp.ces.inputs.ExampleMessageChunkToolResponseToolsetToolArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var my_app = new App("my-app", AppArgs.builder()
///             .location("us")
///             .displayName("my-app")
///             .appId("app-id")
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesTool = new Tool("cesTool", ToolArgs.builder()
///             .location("us")
///             .app(my_app.appId())
///             .toolId("tool-1")
///             .executionType("SYNCHRONOUS")
///             .pythonFunction(ToolPythonFunctionArgs.builder()
///                 .name("example_function")
///                 .pythonCode("def example_function() -> int: return 0")
///                 .build())
///             .build());
///
///         var cesToolset = new Toolset("cesToolset", ToolsetArgs.builder()
///             .toolsetId("toolset-id")
///             .location("us")
///             .app(my_app.appId())
///             .displayName("Basic toolset display name")
///             .openApiToolset(ToolsetOpenApiToolsetArgs.builder()
///                 .openApiSchema("""
/// openapi: 3.0.0
/// info:
///     title: My Sample API
///     version: 1.0.0
///     description: A simple API example
/// servers:
///     - url: https://api.example.com/v1
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
///         var cesBaseAgent = new Agent("cesBaseAgent", AgentArgs.builder()
///             .agentId("base-agent-id")
///             .location("us")
///             .app(my_app.appId())
///             .displayName("base agent")
///             .instruction("You are a helpful assistant for this example.")
///             .modelSettings(AgentModelSettingsArgs.builder()
///                 .model("gemini-3.0-flash-001")
///                 .temperature(0.5)
///                 .build())
///             .llmAgent(AgentLlmAgentArgs.builder()
///                 .build())
///             .build());
///
///         var cesChildAgent = new Agent("cesChildAgent", AgentArgs.builder()
///             .agentId("child-agent-id")
///             .location("us")
///             .app(my_app.appId())
///             .displayName("child agent")
///             .instruction("You are a helpful assistant for this example.")
///             .modelSettings(AgentModelSettingsArgs.builder()
///                 .model("gemini-3.0-flash-001")
///                 .temperature(0.5)
///                 .build())
///             .llmAgent(AgentLlmAgentArgs.builder()
///                 .build())
///             .build());
///
///         var my_example = new Example("my-example", ExampleArgs.builder()
///             .location("us")
///             .displayName("my-example")
///             .app(my_app.name())
///             .exampleId("example-id")
///             .description("example description")
///             .entryAgent(Output.tuple(my_app.project(), my_app.appId(), cesBaseAgent.agentId()).applyValue(values -> {
///                 var project = values.t1;
///                 var appId = values.t2;
///                 var agentId = values.t3;
///                 return String.format("projects/%s/locations/us/apps/%s/agents/%s", project,appId,agentId);
///             }))
///             .messages(ExampleMessageArgs.builder()
///                 .chunks(
///                     ExampleMessageChunkArgs.builder()
///                         .agentTransfer(ExampleMessageChunkAgentTransferArgs.builder()
///                             .targetAgent(Output.tuple(my_app.project(), my_app.appId(), cesChildAgent.agentId()).applyValue(values -> {
///                                 var project = values.t1;
///                                 var appId = values.t2;
///                                 var agentId = values.t3;
///                                 return String.format("projects/%s/locations/us/apps/%s/agents/%s", project,appId,agentId);
///                             }))
///                             .build())
///                         .build(),
///                     ExampleMessageChunkArgs.builder()
///                         .image(ExampleMessageChunkImageArgs.builder()
///                             .mimeType("image/png")
///                             .data(StdFunctions.base64encode(Base64encodeArgs.builder()
///                                 .input("This is some fake image binary data.")
///                                 .build()).result())
///                             .build())
///                         .build(),
///                     ExampleMessageChunkArgs.builder()
///                         .text("text_data")
///                         .build(),
///                     ExampleMessageChunkArgs.builder()
///                         .toolCall(ExampleMessageChunkToolCallArgs.builder()
///                             .args(serializeJson(
///                                 jsonObject(
///                                     jsonProperty("arg1", "val1"),
///                                     jsonProperty("arg2", "val2")
///                                 )))
///                             .id("tool_call_id")
///                             .tool(Output.tuple(my_app.project(), my_app.appId(), cesTool.toolId()).applyValue(values -> {
///                                 var project = values.t1;
///                                 var appId = values.t2;
///                                 var toolId = values.t3;
///                                 return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                             }))
///                             .build())
///                         .build(),
///                     ExampleMessageChunkArgs.builder()
///                         .toolCall(ExampleMessageChunkToolCallArgs.builder()
///                             .args(serializeJson(
///                                 jsonObject(
///                                     jsonProperty("arg1", "val1"),
///                                     jsonProperty("arg2", "val2")
///                                 )))
///                             .id("tool_call_id2")
///                             .toolsetTool(ExampleMessageChunkToolCallToolsetToolArgs.builder()
///                                 .toolset(Output.tuple(my_app.project(), my_app.appId(), cesToolset.toolsetId()).applyValue(values -> {
///                                     var project = values.t1;
///                                     var appId = values.t2;
///                                     var toolsetId = values.t3;
///                                     return String.format("projects/%s/locations/us/apps/%s/toolsets/%s", project,appId,toolsetId);
///                                 }))
///                                 .toolId("example-id")
///                                 .build())
///                             .build())
///                         .build(),
///                     ExampleMessageChunkArgs.builder()
///                         .toolResponse(ExampleMessageChunkToolResponseArgs.builder()
///                             .id("tool_call_id")
///                             .response(serializeJson(
///                                 jsonObject(
///                                     jsonProperty("output", "example-output")
///                                 )))
///                             .tool(Output.tuple(my_app.project(), my_app.appId(), cesTool.toolId()).applyValue(values -> {
///                                 var project = values.t1;
///                                 var appId = values.t2;
///                                 var toolId = values.t3;
///                                 return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                             }))
///                             .build())
///                         .build(),
///                     ExampleMessageChunkArgs.builder()
///                         .toolResponse(ExampleMessageChunkToolResponseArgs.builder()
///                             .id("tool_call_id2")
///                             .response(serializeJson(
///                                 jsonObject(
///                                     jsonProperty("output", "example-output")
///                                 )))
///                             .toolsetTool(ExampleMessageChunkToolResponseToolsetToolArgs.builder()
///                                 .toolset(Output.tuple(my_app.project(), my_app.appId(), cesToolset.toolsetId()).applyValue(values -> {
///                                     var project = values.t1;
///                                     var appId = values.t2;
///                                     var toolsetId = values.t3;
///                                     return String.format("projects/%s/locations/us/apps/%s/toolsets/%s", project,appId,toolsetId);
///                                 }))
///                                 .toolId("example-id")
///                                 .build())
///                             .build())
///                         .build(),
///                     ExampleMessageChunkArgs.builder()
///                         .updatedVariables(serializeJson(
///                             jsonObject(
///                                 jsonProperty("var1", "val1"),
///                                 jsonProperty("var2", "val2")
///                             )))
///                         .build())
///                 .role("agent")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-app:
///     type: gcp:ces:App
///     properties:
///       location: us
///       displayName: my-app
///       appId: app-id
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesTool:
///     type: gcp:ces:Tool
///     name: ces_tool
///     properties:
///       location: us
///       app: ${["my-app"].appId}
///       toolId: tool-1
///       executionType: SYNCHRONOUS
///       pythonFunction:
///         name: example_function
///         pythonCode: 'def example_function() -> int: return 0'
///   cesToolset:
///     type: gcp:ces:Toolset
///     name: ces_toolset
///     properties:
///       toolsetId: toolset-id
///       location: us
///       app: ${["my-app"].appId}
///       displayName: Basic toolset display name
///       openApiToolset:
///         openApiSchema: |
///           openapi: 3.0.0
///           info:
///               title: My Sample API
///               version: 1.0.0
///               description: A simple API example
///           servers:
///               - url: https://api.example.com/v1
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
///   cesBaseAgent:
///     type: gcp:ces:Agent
///     name: ces_base_agent
///     properties:
///       agentId: base-agent-id
///       location: us
///       app: ${["my-app"].appId}
///       displayName: base agent
///       instruction: You are a helpful assistant for this example.
///       modelSettings:
///         model: gemini-3.0-flash-001
///         temperature: 0.5
///       llmAgent: {}
///   cesChildAgent:
///     type: gcp:ces:Agent
///     name: ces_child_agent
///     properties:
///       agentId: child-agent-id
///       location: us
///       app: ${["my-app"].appId}
///       displayName: child agent
///       instruction: You are a helpful assistant for this example.
///       modelSettings:
///         model: gemini-3.0-flash-001
///         temperature: 0.5
///       llmAgent: {}
///   my-example:
///     type: gcp:ces:Example
///     properties:
///       location: us
///       displayName: my-example
///       app: ${["my-app"].name}
///       exampleId: example-id
///       description: example description
///       entryAgent: projects/${["my-app"].project}/locations/us/apps/${["my-app"].appId}/agents/${cesBaseAgent.agentId}
///       messages:
///         - chunks:
///             - agentTransfer:
///                 targetAgent: projects/${["my-app"].project}/locations/us/apps/${["my-app"].appId}/agents/${cesChildAgent.agentId}
///             - image:
///                 mimeType: image/png
///                 data:
///                   fn::invoke:
///                     function: std:base64encode
///                     arguments:
///                       input: This is some fake image binary data.
///                     return: result
///             - text: text_data
///             - toolCall:
///                 args:
///                   fn::toJSON:
///                     arg1: val1
///                     arg2: val2
///                 id: tool_call_id
///                 tool: projects/${["my-app"].project}/locations/us/apps/${["my-app"].appId}/tools/${cesTool.toolId}
///             - toolCall:
///                 args:
///                   fn::toJSON:
///                     arg1: val1
///                     arg2: val2
///                 id: tool_call_id2
///                 toolsetTool:
///                   toolset: projects/${["my-app"].project}/locations/us/apps/${["my-app"].appId}/toolsets/${cesToolset.toolsetId}
///                   toolId: example-id
///             - toolResponse:
///                 id: tool_call_id
///                 response:
///                   fn::toJSON:
///                     output: example-output
///                 tool: projects/${["my-app"].project}/locations/us/apps/${["my-app"].appId}/tools/${cesTool.toolId}
///             - toolResponse:
///                 id: tool_call_id2
///                 response:
///                   fn::toJSON:
///                     output: example-output
///                 toolsetTool:
///                   toolset: projects/${["my-app"].project}/locations/us/apps/${["my-app"].appId}/toolsets/${cesToolset.toolsetId}
///                   toolId: example-id
///             - updatedVariables:
///                 fn::toJSON:
///                   var1: val1
///                   var2: val2
///           role: agent
/// ```
///
///
/// ## Import
///
/// Example can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/examples/{{name}}`
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
/// * `{{location}}/{{app}}/{{name}}`
///
///
/// When using the `pulumi import` command, Example can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/example:Example default projects/{{project}}/locations/{{location}}/apps/{{app}}/examples/{{name}}
/// $ pulumi import gcp:ces/example:Example default {{project}}/{{location}}/{{app}}/{{name}}
/// $ pulumi import gcp:ces/example:Example default {{location}}/{{app}}/{{name}}
/// ```
class Example extends pulumi.CustomResource {
  /// Resource ID segment making up resource `name`, defining the app the example belongs to. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> app;
  /// Timestamp when the example was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Human-readable description of the example.
  late final pulumi.Output<String?> description;
  /// Display name of the example.
  late final pulumi.Output<String> displayName;
  /// The agent that initially handles the conversation. If not specified, the
  /// example represents a conversation that is handled by the root agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  late final pulumi.Output<String?> entryAgent;
  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;
  /// The ID to use for the example, which will become the final component of
  /// the example's resource name. In Terraform, this field is required.
  late final pulumi.Output<String> exampleId;
  /// The example may become invalid if referencing resources are deleted.
  /// Invalid examples will not be used as few-shot examples.
  late final pulumi.Output<bool> invalid;
  /// Resource ID segment making up resource `name`, defining what region the parent app is in. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The collection of messages that make up the conversation.
  /// Structure is documented below.
  late final pulumi.Output<List<ExampleMessage>?> messages;
  /// Identifier. The unique identifier of the example.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/examples/{example}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Timestamp when the example was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Example].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Example]. {@macro pulumi_ces_example_example_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Example(
    String name, {
    ExampleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/example:Example',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    app = registerOutput<String>('app');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    entryAgent = registerOutput<String?>('entryAgent');
    etag = registerOutput<String>('etag');
    exampleId = registerOutput<String>('exampleId');
    invalid = registerOutput<bool>('invalid');
    location = registerOutput<String>('location');
    messages = registerOutput<List<ExampleMessage>?>('messages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExampleMessage>(guardedValue, (value) => ExampleMessage.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Example] resource's state with the given [name] and [id].
  static Example get(
    String name,
    pulumi.Input<String> id, {
    ExampleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Example._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Example._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/example:Example',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    app = registerOutput<String>('app');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    entryAgent = registerOutput<String?>('entryAgent');
    etag = registerOutput<String>('etag');
    exampleId = registerOutput<String>('exampleId');
    invalid = registerOutput<bool>('invalid');
    location = registerOutput<String>('location');
    messages = registerOutput<List<ExampleMessage>?>('messages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExampleMessage>(guardedValue, (value) => ExampleMessage.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Example] resource.
  Example.reference(String urn)
    : super(
        'gcp:ces/example:Example',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    app = registerOutput<String>('app');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    entryAgent = registerOutput<String?>('entryAgent');
    etag = registerOutput<String>('etag');
    exampleId = registerOutput<String>('exampleId');
    invalid = registerOutput<bool>('invalid');
    location = registerOutput<String>('location');
    messages = registerOutput<List<ExampleMessage>?>('messages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExampleMessage>(guardedValue, (value) => ExampleMessage.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
