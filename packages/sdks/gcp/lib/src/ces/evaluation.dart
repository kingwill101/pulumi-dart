import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_args.dart';
import 'evaluation_golden.dart';
import 'evaluation_scenario.dart';
import 'evaluation_state.dart';

/// Customer Engagement Suite Evaluation
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about Evaluation, see:
///
/// * [API documentation](https://docs.cloud.google.com/customer-engagement-ai/conversational-agents/ps/reference/rest/v1beta/projects.locations.apps.evaluations)
///
/// ## Example Usage
///
/// ### Ces Evaluation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const app = new gcp.ces.App("app", {
///     appId: "app-id",
///     location: "us",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesEvaluationBasic = new gcp.ces.Evaluation("ces_evaluation_basic", {
///     evaluationId: "eval-basic",
///     displayName: "my-evaluation-basic",
///     location: "us",
///     app: app.appId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// app = gcp.ces.App("app",
///     app_id="app-id",
///     location="us",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_evaluation_basic = gcp.ces.Evaluation("ces_evaluation_basic",
///     evaluation_id="eval-basic",
///     display_name="my-evaluation-basic",
///     location="us",
///     app=app.app_id)
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
///         AppId = "app-id",
///         Location = "us",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesEvaluationBasic = new Gcp.Ces.Evaluation("ces_evaluation_basic", new()
///     {
///         EvaluationId = "eval-basic",
///         DisplayName = "my-evaluation-basic",
///         Location = "us",
///         App = app.AppId,
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
/// 		app, err := ces.NewApp(ctx, "app", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewEvaluation(ctx, "ces_evaluation_basic", &ces.EvaluationArgs{
/// 			EvaluationId: pulumi.String("eval-basic"),
/// 			DisplayName:  pulumi.String("my-evaluation-basic"),
/// 			Location:     pulumi.String("us"),
/// 			App:          app.AppId,
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
/// resource "gcp_ces_app" "app" {
///   app_id       = "app-id"
///   location     = "us"
///   display_name = "my-app"
///   language_settings = {
///     default_language_code = "en-US"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_evaluation" "ces_evaluation_basic" {
///   evaluation_id = "eval-basic"
///   display_name  = "my-evaluation-basic"
///   location      = "us"
///   app           = gcp_ces_app.app.app_id
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
/// import com.pulumi.gcp.ces.Evaluation;
/// import com.pulumi.gcp.ces.EvaluationArgs;
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
///             .appId("app-id")
///             .location("us")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesEvaluationBasic = new Evaluation("cesEvaluationBasic", EvaluationArgs.builder()
///             .evaluationId("eval-basic")
///             .displayName("my-evaluation-basic")
///             .location("us")
///             .app(app.appId())
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
///       appId: app-id
///       location: us
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesEvaluationBasic:
///     type: gcp:ces:Evaluation
///     name: ces_evaluation_basic
///     properties:
///       evaluationId: eval-basic
///       displayName: my-evaluation-basic
///       location: us
///       app: ${app.appId}
/// ```
///
/// ### Ces Evaluation Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const app = new gcp.ces.App("app", {
///     appId: "app-id-full",
///     location: "us",
///     displayName: "my-app-full",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const tool = new gcp.ces.Tool("tool", {
///     location: "us",
///     app: app.appId,
///     toolId: "tool-id-full",
///     executionType: "SYNCHRONOUS",
///     pythonFunction: {
///         name: "example_function",
///         pythonCode: "def example_function() -> int: return 0",
///     },
/// });
/// const cesEvaluationFull = new gcp.ces.Evaluation("ces_evaluation_full", {
///     evaluationId: "evaluation-id-full",
///     displayName: "my-evaluation-full",
///     location: "us",
///     app: app.appId,
///     description: "Full evaluation for testing",
///     tags: [
///         "test",
///         "full",
///     ],
///     golden: {
///         evaluationExpectations: [pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/evaluationExpectations/dummy-exp`],
///         turns: [{
///             steps: [
///                 {
///                     userInput: {
///                         text: "Hello",
///                         willContinue: true,
///                     },
///                 },
///                 {
///                     userInput: {
///                         variables: {
///                             key: "value",
///                         },
///                     },
///                 },
///                 {
///                     expectation: {
///                         note: "Expect tool call",
///                         toolCall: {
///                             id: "tool-call-id",
///                             tool: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}`,
///                             args: {
///                                 param: "value",
///                             },
///                         },
///                     },
///                 },
///                 {
///                     expectation: {
///                         note: "Expect agent response",
///                         agentResponse: {
///                             role: "agent",
///                             chunks: [
///                                 {
///                                     updatedVariables: {
///                                         key: "value",
///                                     },
///                                 },
///                                 {
///                                     agentTransfer: {
///                                         targetAgent: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/agents/dummy-agent`,
///                                     },
///                                 },
///                                 {
///                                     toolCall: {
///                                         id: "tool-call-id-3",
///                                         tool: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}`,
///                                     },
///                                 },
///                                 {
///                                     toolResponse: {
///                                         id: "tool-call-id-3",
///                                         response: {
///                                             result: "success",
///                                         },
///                                         tool: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}`,
///                                     },
///                                 },
///                             ],
///                         },
///                     },
///                 },
///                 {
///                     expectation: {
///                         note: "Expect toolset tool call",
///                         toolCall: {
///                             id: "tool-call-id-2",
///                             toolsetTool: {
///                                 toolset: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/toolsets/dummy-toolset`,
///                                 toolId: "dummy-tool",
///                             },
///                         },
///                     },
///                 },
///                 {
///                     agentTransfer: {
///                         targetAgent: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/agents/dummy-agent`,
///                     },
///                 },
///                 {
///                     expectation: {
///                         agentTransfer: {
///                             targetAgent: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/agents/dummy-agent`,
///                             displayName: "dummy-agent",
///                         },
///                     },
///                 },
///                 {
///                     expectation: {
///                         note: "Expect mock tool response",
///                         mockToolResponse: {
///                             id: "tool-call-id-4",
///                             response: {
///                                 result: "mocked",
///                             },
///                             tool: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}`,
///                         },
///                     },
///                 },
///                 {
///                     expectation: {
///                         note: "Expect tool response",
///                         toolResponse: {
///                             toolsetTool: {
///                                 toolset: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/toolsets/dummy-toolset`,
///                                 toolId: "dummy-tool",
///                             },
///                         },
///                     },
///                 },
///                 {
///                     expectation: {
///                         note: "Expect updated variables",
///                         updatedVariables: {
///                             notes: "Some notes",
///                         },
///                     },
///                 },
///                 {
///                     userInput: {
///                         toolResponses: {
///                             toolResponses: [{
///                                 id: "tool-call-id-5",
///                                 response: {
///                                     result: "user-provided",
///                                 },
///                                 tool: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}`,
///                             }],
///                         },
///                     },
///                 },
///                 {
///                     userInput: {
///                         event: {
///                             event: "my-event",
///                         },
///                     },
///                 },
///                 {
///                     userInput: {
///                         dtmf: "1234",
///                     },
///                 },
///                 {
///                     userInput: {
///                         audio: "c29tZSBhdWRpbyBkYXRh",
///                     },
///                 },
///                 {
///                     userInput: {
///                         blob: {
///                             mimeType: "text/plain",
///                             data: "c29tZSBibG9iIGRhdGE=",
///                         },
///                     },
///                 },
///                 {
///                     userInput: {
///                         image: {
///                             mimeType: "image/png",
///                             data: "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=",
///                         },
///                     },
///                 },
///                 {
///                     userInput: {
///                         toolResponses: {
///                             toolResponses: [{
///                                 id: "tool-call-id",
///                                 response: {
///                                     result: "success",
///                                 },
///                                 tool: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}`,
///                             }],
///                         },
///                     },
///                 },
///                 {
///                     expectation: {
///                         note: "Expect tool response",
///                         toolResponse: {
///                             id: "tool-call-id",
///                             response: {
///                                 result: "success",
///                             },
///                             tool: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}`,
///                         },
///                     },
///                 },
///                 {
///                     expectation: {
///                         note: "Expect agent response with chunks",
///                         agentResponse: {
///                             role: "agent",
///                             chunks: [
///                                 {
///                                     text: "Hello again",
///                                 },
///                                 {
///                                     text: "Hello again transcript",
///                                 },
///                                 {
///                                     blob: {
///                                         mimeType: "text/plain",
///                                         data: "c29tZSBibG9iIGRhdGE=",
///                                     },
///                                 },
///                                 {
///                                     image: {
///                                         mimeType: "image/png",
///                                         data: "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=",
///                                     },
///                                 },
///                                 {
///                                     toolCall: {
///                                         id: "tool-call-id-3",
///                                         tool: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}`,
///                                         args: {
///                                             param: "value",
///                                         },
///                                     },
///                                 },
///                             ],
///                         },
///                     },
///                 },
///             ],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// app = gcp.ces.App("app",
///     app_id="app-id-full",
///     location="us",
///     display_name="my-app-full",
///     language_settings={
///         "default_language_code": "en-US",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// tool = gcp.ces.Tool("tool",
///     location="us",
///     app=app.app_id,
///     tool_id="tool-id-full",
///     execution_type="SYNCHRONOUS",
///     python_function={
///         "name": "example_function",
///         "python_code": "def example_function() -> int: return 0",
///     })
/// ces_evaluation_full = gcp.ces.Evaluation("ces_evaluation_full",
///     evaluation_id="evaluation-id-full",
///     display_name="my-evaluation-full",
///     location="us",
///     app=app.app_id,
///     description="Full evaluation for testing",
///     tags=[
///         "test",
///         "full",
///     ],
///     golden={
///         "evaluation_expectations": [pulumi.Output.all(
///             project=app.project,
///             app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/evaluationExpectations/dummy-exp")
/// ],
///         "turns": [{
///             "steps": [
///                 {
///                     "user_input": {
///                         "text": "Hello",
///                         "will_continue": True,
///                     },
///                 },
///                 {
///                     "user_input": {
///                         "variables": {
///                             "key": "value",
///                         },
///                     },
///                 },
///                 {
///                     "expectation": {
///                         "note": "Expect tool call",
///                         "tool_call": {
///                             "id": "tool-call-id",
///                             "tool": pulumi.Output.all(
///                                 project=app.project,
///                                 app_id=app.app_id,
///                                 tool_id=tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                             "args": {
///                                 "param": "value",
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "expectation": {
///                         "note": "Expect agent response",
///                         "agent_response": {
///                             "role": "agent",
///                             "chunks": [
///                                 {
///                                     "updated_variables": {
///                                         "key": "value",
///                                     },
///                                 },
///                                 {
///                                     "agent_transfer": {
///                                         "target_agent": pulumi.Output.all(
///                                             project=app.project,
///                                             app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/agents/dummy-agent")
/// ,
///                                     },
///                                 },
///                                 {
///                                     "tool_call": {
///                                         "id": "tool-call-id-3",
///                                         "tool": pulumi.Output.all(
///                                             project=app.project,
///                                             app_id=app.app_id,
///                                             tool_id=tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                                     },
///                                 },
///                                 {
///                                     "tool_response": {
///                                         "id": "tool-call-id-3",
///                                         "response": {
///                                             "result": "success",
///                                         },
///                                         "tool": pulumi.Output.all(
///                                             project=app.project,
///                                             app_id=app.app_id,
///                                             tool_id=tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                                     },
///                                 },
///                             ],
///                         },
///                     },
///                 },
///                 {
///                     "expectation": {
///                         "note": "Expect toolset tool call",
///                         "tool_call": {
///                             "id": "tool-call-id-2",
///                             "toolset_tool": {
///                                 "toolset": pulumi.Output.all(
///                                     project=app.project,
///                                     app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/toolsets/dummy-toolset")
/// ,
///                                 "tool_id": "dummy-tool",
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "agent_transfer": {
///                         "target_agent": pulumi.Output.all(
///                             project=app.project,
///                             app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/agents/dummy-agent")
/// ,
///                     },
///                 },
///                 {
///                     "expectation": {
///                         "agent_transfer": {
///                             "target_agent": pulumi.Output.all(
///                                 project=app.project,
///                                 app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/agents/dummy-agent")
/// ,
///                             "display_name": "dummy-agent",
///                         },
///                     },
///                 },
///                 {
///                     "expectation": {
///                         "note": "Expect mock tool response",
///                         "mock_tool_response": {
///                             "id": "tool-call-id-4",
///                             "response": {
///                                 "result": "mocked",
///                             },
///                             "tool": pulumi.Output.all(
///                                 project=app.project,
///                                 app_id=app.app_id,
///                                 tool_id=tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                         },
///                     },
///                 },
///                 {
///                     "expectation": {
///                         "note": "Expect tool response",
///                         "tool_response": {
///                             "toolset_tool": {
///                                 "toolset": pulumi.Output.all(
///                                     project=app.project,
///                                     app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/toolsets/dummy-toolset")
/// ,
///                                 "tool_id": "dummy-tool",
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "expectation": {
///                         "note": "Expect updated variables",
///                         "updated_variables": {
///                             "notes": "Some notes",
///                         },
///                     },
///                 },
///                 {
///                     "user_input": {
///                         "tool_responses": {
///                             "tool_responses": [{
///                                 "id": "tool-call-id-5",
///                                 "response": {
///                                     "result": "user-provided",
///                                 },
///                                 "tool": pulumi.Output.all(
///                                     project=app.project,
///                                     app_id=app.app_id,
///                                     tool_id=tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                             }],
///                         },
///                     },
///                 },
///                 {
///                     "user_input": {
///                         "event": {
///                             "event": "my-event",
///                         },
///                     },
///                 },
///                 {
///                     "user_input": {
///                         "dtmf": "1234",
///                     },
///                 },
///                 {
///                     "user_input": {
///                         "audio": "c29tZSBhdWRpbyBkYXRh",
///                     },
///                 },
///                 {
///                     "user_input": {
///                         "blob": {
///                             "mime_type": "text/plain",
///                             "data": "c29tZSBibG9iIGRhdGE=",
///                         },
///                     },
///                 },
///                 {
///                     "user_input": {
///                         "image": {
///                             "mime_type": "image/png",
///                             "data": "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=",
///                         },
///                     },
///                 },
///                 {
///                     "user_input": {
///                         "tool_responses": {
///                             "tool_responses": [{
///                                 "id": "tool-call-id",
///                                 "response": {
///                                     "result": "success",
///                                 },
///                                 "tool": pulumi.Output.all(
///                                     project=app.project,
///                                     app_id=app.app_id,
///                                     tool_id=tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                             }],
///                         },
///                     },
///                 },
///                 {
///                     "expectation": {
///                         "note": "Expect tool response",
///                         "tool_response": {
///                             "id": "tool-call-id",
///                             "response": {
///                                 "result": "success",
///                             },
///                             "tool": pulumi.Output.all(
///                                 project=app.project,
///                                 app_id=app.app_id,
///                                 tool_id=tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                         },
///                     },
///                 },
///                 {
///                     "expectation": {
///                         "note": "Expect agent response with chunks",
///                         "agent_response": {
///                             "role": "agent",
///                             "chunks": [
///                                 {
///                                     "text": "Hello again",
///                                 },
///                                 {
///                                     "text": "Hello again transcript",
///                                 },
///                                 {
///                                     "blob": {
///                                         "mime_type": "text/plain",
///                                         "data": "c29tZSBibG9iIGRhdGE=",
///                                     },
///                                 },
///                                 {
///                                     "image": {
///                                         "mime_type": "image/png",
///                                         "data": "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=",
///                                     },
///                                 },
///                                 {
///                                     "tool_call": {
///                                         "id": "tool-call-id-3",
///                                         "tool": pulumi.Output.all(
///                                             project=app.project,
///                                             app_id=app.app_id,
///                                             tool_id=tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                                         "args": {
///                                             "param": "value",
///                                         },
///                                     },
///                                 },
///                             ],
///                         },
///                     },
///                 },
///             ],
///         }],
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
///     var app = new Gcp.Ces.App("app", new()
///     {
///         AppId = "app-id-full",
///         Location = "us",
///         DisplayName = "my-app-full",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var tool = new Gcp.Ces.Tool("tool", new()
///     {
///         Location = "us",
///         App = app.AppId,
///         ToolId = "tool-id-full",
///         ExecutionType = "SYNCHRONOUS",
///         PythonFunction = new Gcp.Ces.Inputs.ToolPythonFunctionArgs
///         {
///             Name = "example_function",
///             PythonCode = "def example_function() -> int: return 0",
///         },
///     });
///
///     var cesEvaluationFull = new Gcp.Ces.Evaluation("ces_evaluation_full", new()
///     {
///         EvaluationId = "evaluation-id-full",
///         DisplayName = "my-evaluation-full",
///         Location = "us",
///         App = app.AppId,
///         Description = "Full evaluation for testing",
///         Tags = new[]
///         {
///             "test",
///             "full",
///         },
///         Golden = new Gcp.Ces.Inputs.EvaluationGoldenArgs
///         {
///             EvaluationExpectations = new[]
///             {
///                 Output.Tuple(app.Project, app.AppId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var appId = values.Item2;
///                     return $"projects/{project}/locations/us/apps/{appId}/evaluationExpectations/dummy-exp";
///                 }),
///             },
///             Turns = new[]
///             {
///                 new Gcp.Ces.Inputs.EvaluationGoldenTurnArgs
///                 {
///                     Steps = new[]
///                     {
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             UserInput = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputArgs
///                             {
///                                 Text = "Hello",
///                                 WillContinue = true,
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             UserInput = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputArgs
///                             {
///                                 Variables =
///                                 {
///                                     { "key", "value" },
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             Expectation = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationArgs
///                             {
///                                 Note = "Expect tool call",
///                                 ToolCall = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationToolCallArgs
///                                 {
///                                     Id = "tool-call-id",
///                                     Tool = Output.Tuple(app.Project, app.AppId, tool.ToolId).Apply(values =>
///                                     {
///                                         var project = values.Item1;
///                                         var appId = values.Item2;
///                                         var toolId = values.Item3;
///                                         return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                                     }),
///                                     Args =
///                                     {
///                                         { "param", "value" },
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             Expectation = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationArgs
///                             {
///                                 Note = "Expect agent response",
///                                 AgentResponse = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseArgs
///                                 {
///                                     Role = "agent",
///                                     Chunks = new[]
///                                     {
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs
///                                         {
///                                             UpdatedVariables =
///                                             {
///                                                 { "key", "value" },
///                                             },
///                                         },
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs
///                                         {
///                                             AgentTransfer = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkAgentTransferArgs
///                                             {
///                                                 TargetAgent = Output.Tuple(app.Project, app.AppId).Apply(values =>
///                                                 {
///                                                     var project = values.Item1;
///                                                     var appId = values.Item2;
///                                                     return $"projects/{project}/locations/us/apps/{appId}/agents/dummy-agent";
///                                                 }),
///                                             },
///                                         },
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs
///                                         {
///                                             ToolCall = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallArgs
///                                             {
///                                                 Id = "tool-call-id-3",
///                                                 Tool = Output.Tuple(app.Project, app.AppId, tool.ToolId).Apply(values =>
///                                                 {
///                                                     var project = values.Item1;
///                                                     var appId = values.Item2;
///                                                     var toolId = values.Item3;
///                                                     return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                                                 }),
///                                             },
///                                         },
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs
///                                         {
///                                             ToolResponse = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponseArgs
///                                             {
///                                                 Id = "tool-call-id-3",
///                                                 Response =
///                                                 {
///                                                     { "result", "success" },
///                                                 },
///                                                 Tool = Output.Tuple(app.Project, app.AppId, tool.ToolId).Apply(values =>
///                                                 {
///                                                     var project = values.Item1;
///                                                     var appId = values.Item2;
///                                                     var toolId = values.Item3;
///                                                     return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                                                 }),
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             Expectation = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationArgs
///                             {
///                                 Note = "Expect toolset tool call",
///                                 ToolCall = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationToolCallArgs
///                                 {
///                                     Id = "tool-call-id-2",
///                                     ToolsetTool = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationToolCallToolsetToolArgs
///                                     {
///                                         Toolset = Output.Tuple(app.Project, app.AppId).Apply(values =>
///                                         {
///                                             var project = values.Item1;
///                                             var appId = values.Item2;
///                                             return $"projects/{project}/locations/us/apps/{appId}/toolsets/dummy-toolset";
///                                         }),
///                                         ToolId = "dummy-tool",
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             AgentTransfer = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepAgentTransferArgs
///                             {
///                                 TargetAgent = Output.Tuple(app.Project, app.AppId).Apply(values =>
///                                 {
///                                     var project = values.Item1;
///                                     var appId = values.Item2;
///                                     return $"projects/{project}/locations/us/apps/{appId}/agents/dummy-agent";
///                                 }),
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             Expectation = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationArgs
///                             {
///                                 AgentTransfer = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentTransferArgs
///                                 {
///                                     TargetAgent = Output.Tuple(app.Project, app.AppId).Apply(values =>
///                                     {
///                                         var project = values.Item1;
///                                         var appId = values.Item2;
///                                         return $"projects/{project}/locations/us/apps/{appId}/agents/dummy-agent";
///                                     }),
///                                     DisplayName = "dummy-agent",
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             Expectation = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationArgs
///                             {
///                                 Note = "Expect mock tool response",
///                                 MockToolResponse = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationMockToolResponseArgs
///                                 {
///                                     Id = "tool-call-id-4",
///                                     Response =
///                                     {
///                                         { "result", "mocked" },
///                                     },
///                                     Tool = Output.Tuple(app.Project, app.AppId, tool.ToolId).Apply(values =>
///                                     {
///                                         var project = values.Item1;
///                                         var appId = values.Item2;
///                                         var toolId = values.Item3;
///                                         return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                                     }),
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             Expectation = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationArgs
///                             {
///                                 Note = "Expect tool response",
///                                 ToolResponse = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationToolResponseArgs
///                                 {
///                                     ToolsetTool = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationToolResponseToolsetToolArgs
///                                     {
///                                         Toolset = Output.Tuple(app.Project, app.AppId).Apply(values =>
///                                         {
///                                             var project = values.Item1;
///                                             var appId = values.Item2;
///                                             return $"projects/{project}/locations/us/apps/{appId}/toolsets/dummy-toolset";
///                                         }),
///                                         ToolId = "dummy-tool",
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             Expectation = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationArgs
///                             {
///                                 Note = "Expect updated variables",
///                                 UpdatedVariables = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationUpdatedVariablesArgs
///                                 {
///                                     Notes = "Some notes",
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             UserInput = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputArgs
///                             {
///                                 ToolResponses = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputToolResponsesArgs
///                                 {
///                                     ToolResponses = new[]
///                                     {
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArgs
///                                         {
///                                             Id = "tool-call-id-5",
///                                             Response =
///                                             {
///                                                 { "result", "user-provided" },
///                                             },
///                                             Tool = Output.Tuple(app.Project, app.AppId, tool.ToolId).Apply(values =>
///                                             {
///                                                 var project = values.Item1;
///                                                 var appId = values.Item2;
///                                                 var toolId = values.Item3;
///                                                 return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                                             }),
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             UserInput = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputArgs
///                             {
///                                 Event = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputEventArgs
///                                 {
///                                     Event = "my-event",
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             UserInput = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputArgs
///                             {
///                                 Dtmf = "1234",
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             UserInput = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputArgs
///                             {
///                                 Audio = "c29tZSBhdWRpbyBkYXRh",
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             UserInput = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputArgs
///                             {
///                                 Blob = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputBlobArgs
///                                 {
///                                     MimeType = "text/plain",
///                                     Data = "c29tZSBibG9iIGRhdGE=",
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             UserInput = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputArgs
///                             {
///                                 Image = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputImageArgs
///                                 {
///                                     MimeType = "image/png",
///                                     Data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=",
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             UserInput = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputArgs
///                             {
///                                 ToolResponses = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputToolResponsesArgs
///                                 {
///                                     ToolResponses = new[]
///                                     {
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArgs
///                                         {
///                                             Id = "tool-call-id",
///                                             Response =
///                                             {
///                                                 { "result", "success" },
///                                             },
///                                             Tool = Output.Tuple(app.Project, app.AppId, tool.ToolId).Apply(values =>
///                                             {
///                                                 var project = values.Item1;
///                                                 var appId = values.Item2;
///                                                 var toolId = values.Item3;
///                                                 return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                                             }),
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             Expectation = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationArgs
///                             {
///                                 Note = "Expect tool response",
///                                 ToolResponse = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationToolResponseArgs
///                                 {
///                                     Id = "tool-call-id",
///                                     Response =
///                                     {
///                                         { "result", "success" },
///                                     },
///                                     Tool = Output.Tuple(app.Project, app.AppId, tool.ToolId).Apply(values =>
///                                     {
///                                         var project = values.Item1;
///                                         var appId = values.Item2;
///                                         var toolId = values.Item3;
///                                         return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                                     }),
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             Expectation = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationArgs
///                             {
///                                 Note = "Expect agent response with chunks",
///                                 AgentResponse = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseArgs
///                                 {
///                                     Role = "agent",
///                                     Chunks = new[]
///                                     {
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs
///                                         {
///                                             Text = "Hello again",
///                                         },
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs
///                                         {
///                                             Text = "Hello again transcript",
///                                         },
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs
///                                         {
///                                             Blob = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkBlobArgs
///                                             {
///                                                 MimeType = "text/plain",
///                                                 Data = "c29tZSBibG9iIGRhdGE=",
///                                             },
///                                         },
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs
///                                         {
///                                             Image = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkImageArgs
///                                             {
///                                                 MimeType = "image/png",
///                                                 Data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=",
///                                             },
///                                         },
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs
///                                         {
///                                             ToolCall = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallArgs
///                                             {
///                                                 Id = "tool-call-id-3",
///                                                 Tool = Output.Tuple(app.Project, app.AppId, tool.ToolId).Apply(values =>
///                                                 {
///                                                     var project = values.Item1;
///                                                     var appId = values.Item2;
///                                                     var toolId = values.Item3;
///                                                     return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                                                 }),
///                                                 Args =
///                                                 {
///                                                     { "param", "value" },
///                                                 },
///                                             },
///                                         },
///                                     },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		app, err := ces.NewApp(ctx, "app", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id-full"),
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-app-full"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tool, err := ces.NewTool(ctx, "tool", &ces.ToolArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           app.AppId,
/// 			ToolId:        pulumi.String("tool-id-full"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			PythonFunction: &ces.ToolPythonFunctionArgs{
/// 				Name:       pulumi.String("example_function"),
/// 				PythonCode: pulumi.String("def example_function() -> int: return 0"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewEvaluation(ctx, "ces_evaluation_full", &ces.EvaluationArgs{
/// 			EvaluationId: pulumi.String("evaluation-id-full"),
/// 			DisplayName:  pulumi.String("my-evaluation-full"),
/// 			Location:     pulumi.String("us"),
/// 			App:          app.AppId,
/// 			Description:  pulumi.String("Full evaluation for testing"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("test"),
/// 				pulumi.String("full"),
/// 			},
/// 			Golden: &ces.EvaluationGoldenArgs{
/// 				EvaluationExpectations: pulumi.StringArray{
/// 					pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						appId := _args[1].(string)
/// 						return fmt.Sprintf("projects/%v/locations/us/apps/%v/evaluationExpectations/dummy-exp", project, appId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				Turns: ces.EvaluationGoldenTurnArray{
/// 					&ces.EvaluationGoldenTurnArgs{
/// 						Steps: ces.EvaluationGoldenTurnStepArray{
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								UserInput: &ces.EvaluationGoldenTurnStepUserInputArgs{
/// 									Text:         pulumi.String("Hello"),
/// 									WillContinue: pulumi.Bool(true),
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								UserInput: &ces.EvaluationGoldenTurnStepUserInputArgs{
/// 									Variables: pulumi.StringMap{
/// 										"key": pulumi.String("value"),
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								Expectation: &ces.EvaluationGoldenTurnStepExpectationArgs{
/// 									Note: pulumi.String("Expect tool call"),
/// 									ToolCall: &ces.EvaluationGoldenTurnStepExpectationToolCallArgs{
/// 										Id: pulumi.String("tool-call-id"),
/// 										Tool: pulumi.All(app.Project, app.AppId, tool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 											project := _args[0].(string)
/// 											appId := _args[1].(string)
/// 											toolId := _args[2].(string)
/// 											return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 										}).(pulumi.StringOutput),
/// 										Args: pulumi.StringMap{
/// 											"param": pulumi.String("value"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								Expectation: &ces.EvaluationGoldenTurnStepExpectationArgs{
/// 									Note: pulumi.String("Expect agent response"),
/// 									AgentResponse: &ces.EvaluationGoldenTurnStepExpectationAgentResponseArgs{
/// 										Role: pulumi.String("agent"),
/// 										Chunks: ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArray{
/// 											&ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs{
/// 												UpdatedVariables: pulumi.StringMap{
/// 													"key": pulumi.String("value"),
/// 												},
/// 											},
/// 											&ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs{
/// 												AgentTransfer: &ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkAgentTransferArgs{
/// 													TargetAgent: pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 														project := _args[0].(string)
/// 														appId := _args[1].(string)
/// 														return fmt.Sprintf("projects/%v/locations/us/apps/%v/agents/dummy-agent", project, appId), nil
/// 													}).(pulumi.StringOutput),
/// 												},
/// 											},
/// 											&ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs{
/// 												ToolCall: &ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallArgs{
/// 													Id: pulumi.String("tool-call-id-3"),
/// 													Tool: pulumi.All(app.Project, app.AppId, tool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 														project := _args[0].(string)
/// 														appId := _args[1].(string)
/// 														toolId := _args[2].(string)
/// 														return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 													}).(pulumi.StringOutput),
/// 												},
/// 											},
/// 											&ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs{
/// 												ToolResponse: &ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponseArgs{
/// 													Id: pulumi.String("tool-call-id-3"),
/// 													Response: pulumi.StringMap{
/// 														"result": pulumi.String("success"),
/// 													},
/// 													Tool: pulumi.All(app.Project, app.AppId, tool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 														project := _args[0].(string)
/// 														appId := _args[1].(string)
/// 														toolId := _args[2].(string)
/// 														return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 													}).(pulumi.StringOutput),
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								Expectation: &ces.EvaluationGoldenTurnStepExpectationArgs{
/// 									Note: pulumi.String("Expect toolset tool call"),
/// 									ToolCall: &ces.EvaluationGoldenTurnStepExpectationToolCallArgs{
/// 										Id: pulumi.String("tool-call-id-2"),
/// 										ToolsetTool: &ces.EvaluationGoldenTurnStepExpectationToolCallToolsetToolArgs{
/// 											Toolset: pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 												project := _args[0].(string)
/// 												appId := _args[1].(string)
/// 												return fmt.Sprintf("projects/%v/locations/us/apps/%v/toolsets/dummy-toolset", project, appId), nil
/// 											}).(pulumi.StringOutput),
/// 											ToolId: pulumi.String("dummy-tool"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								AgentTransfer: &ces.EvaluationGoldenTurnStepAgentTransferArgs{
/// 									TargetAgent: pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 										project := _args[0].(string)
/// 										appId := _args[1].(string)
/// 										return fmt.Sprintf("projects/%v/locations/us/apps/%v/agents/dummy-agent", project, appId), nil
/// 									}).(pulumi.StringOutput),
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								Expectation: &ces.EvaluationGoldenTurnStepExpectationArgs{
/// 									AgentTransfer: &ces.EvaluationGoldenTurnStepExpectationAgentTransferArgs{
/// 										TargetAgent: pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 											project := _args[0].(string)
/// 											appId := _args[1].(string)
/// 											return fmt.Sprintf("projects/%v/locations/us/apps/%v/agents/dummy-agent", project, appId), nil
/// 										}).(pulumi.StringOutput),
/// 										DisplayName: pulumi.String("dummy-agent"),
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								Expectation: &ces.EvaluationGoldenTurnStepExpectationArgs{
/// 									Note: pulumi.String("Expect mock tool response"),
/// 									MockToolResponse: &ces.EvaluationGoldenTurnStepExpectationMockToolResponseArgs{
/// 										Id: pulumi.String("tool-call-id-4"),
/// 										Response: pulumi.StringMap{
/// 											"result": pulumi.String("mocked"),
/// 										},
/// 										Tool: pulumi.All(app.Project, app.AppId, tool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 											project := _args[0].(string)
/// 											appId := _args[1].(string)
/// 											toolId := _args[2].(string)
/// 											return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 										}).(pulumi.StringOutput),
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								Expectation: &ces.EvaluationGoldenTurnStepExpectationArgs{
/// 									Note: pulumi.String("Expect tool response"),
/// 									ToolResponse: &ces.EvaluationGoldenTurnStepExpectationToolResponseArgs{
/// 										ToolsetTool: &ces.EvaluationGoldenTurnStepExpectationToolResponseToolsetToolArgs{
/// 											Toolset: pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 												project := _args[0].(string)
/// 												appId := _args[1].(string)
/// 												return fmt.Sprintf("projects/%v/locations/us/apps/%v/toolsets/dummy-toolset", project, appId), nil
/// 											}).(pulumi.StringOutput),
/// 											ToolId: pulumi.String("dummy-tool"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								Expectation: &ces.EvaluationGoldenTurnStepExpectationArgs{
/// 									Note: pulumi.String("Expect updated variables"),
/// 									UpdatedVariables: &ces.EvaluationGoldenTurnStepExpectationUpdatedVariablesArgs{
/// 										Notes: pulumi.String("Some notes"),
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								UserInput: &ces.EvaluationGoldenTurnStepUserInputArgs{
/// 									ToolResponses: &ces.EvaluationGoldenTurnStepUserInputToolResponsesArgs{
/// 										ToolResponses: ces.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArray{
/// 											&ces.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArgs{
/// 												Id: pulumi.String("tool-call-id-5"),
/// 												Response: pulumi.StringMap{
/// 													"result": pulumi.String("user-provided"),
/// 												},
/// 												Tool: pulumi.All(app.Project, app.AppId, tool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 													project := _args[0].(string)
/// 													appId := _args[1].(string)
/// 													toolId := _args[2].(string)
/// 													return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 												}).(pulumi.StringOutput),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								UserInput: &ces.EvaluationGoldenTurnStepUserInputArgs{
/// 									Event: &ces.EvaluationGoldenTurnStepUserInputEventArgs{
/// 										Event: pulumi.String("my-event"),
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								UserInput: &ces.EvaluationGoldenTurnStepUserInputArgs{
/// 									Dtmf: pulumi.String("1234"),
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								UserInput: &ces.EvaluationGoldenTurnStepUserInputArgs{
/// 									Audio: pulumi.String("c29tZSBhdWRpbyBkYXRh"),
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								UserInput: &ces.EvaluationGoldenTurnStepUserInputArgs{
/// 									Blob: &ces.EvaluationGoldenTurnStepUserInputBlobArgs{
/// 										MimeType: pulumi.String("text/plain"),
/// 										Data:     pulumi.String("c29tZSBibG9iIGRhdGE="),
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								UserInput: &ces.EvaluationGoldenTurnStepUserInputArgs{
/// 									Image: &ces.EvaluationGoldenTurnStepUserInputImageArgs{
/// 										MimeType: pulumi.String("image/png"),
/// 										Data:     pulumi.String("iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII="),
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								UserInput: &ces.EvaluationGoldenTurnStepUserInputArgs{
/// 									ToolResponses: &ces.EvaluationGoldenTurnStepUserInputToolResponsesArgs{
/// 										ToolResponses: ces.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArray{
/// 											&ces.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArgs{
/// 												Id: pulumi.String("tool-call-id"),
/// 												Response: pulumi.StringMap{
/// 													"result": pulumi.String("success"),
/// 												},
/// 												Tool: pulumi.All(app.Project, app.AppId, tool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 													project := _args[0].(string)
/// 													appId := _args[1].(string)
/// 													toolId := _args[2].(string)
/// 													return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 												}).(pulumi.StringOutput),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								Expectation: &ces.EvaluationGoldenTurnStepExpectationArgs{
/// 									Note: pulumi.String("Expect tool response"),
/// 									ToolResponse: &ces.EvaluationGoldenTurnStepExpectationToolResponseArgs{
/// 										Id: pulumi.String("tool-call-id"),
/// 										Response: pulumi.StringMap{
/// 											"result": pulumi.String("success"),
/// 										},
/// 										Tool: pulumi.All(app.Project, app.AppId, tool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 											project := _args[0].(string)
/// 											appId := _args[1].(string)
/// 											toolId := _args[2].(string)
/// 											return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 										}).(pulumi.StringOutput),
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								Expectation: &ces.EvaluationGoldenTurnStepExpectationArgs{
/// 									Note: pulumi.String("Expect agent response with chunks"),
/// 									AgentResponse: &ces.EvaluationGoldenTurnStepExpectationAgentResponseArgs{
/// 										Role: pulumi.String("agent"),
/// 										Chunks: ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArray{
/// 											&ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs{
/// 												Text: pulumi.String("Hello again"),
/// 											},
/// 											&ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs{
/// 												Text: pulumi.String("Hello again transcript"),
/// 											},
/// 											&ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs{
/// 												Blob: &ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkBlobArgs{
/// 													MimeType: pulumi.String("text/plain"),
/// 													Data:     pulumi.String("c29tZSBibG9iIGRhdGE="),
/// 												},
/// 											},
/// 											&ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs{
/// 												Image: &ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkImageArgs{
/// 													MimeType: pulumi.String("image/png"),
/// 													Data:     pulumi.String("iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII="),
/// 												},
/// 											},
/// 											&ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs{
/// 												ToolCall: &ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallArgs{
/// 													Id: pulumi.String("tool-call-id-3"),
/// 													Tool: pulumi.All(app.Project, app.AppId, tool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 														project := _args[0].(string)
/// 														appId := _args[1].(string)
/// 														toolId := _args[2].(string)
/// 														return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 													}).(pulumi.StringOutput),
/// 													Args: pulumi.StringMap{
/// 														"param": pulumi.String("value"),
/// 													},
/// 												},
/// 											},
/// 										},
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "app" {
///   app_id       = "app-id-full"
///   location     = "us"
///   display_name = "my-app-full"
///   language_settings = {
///     default_language_code = "en-US"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_tool" "tool" {
///   location       = "us"
///   app            = gcp_ces_app.app.app_id
///   tool_id        = "tool-id-full"
///   execution_type = "SYNCHRONOUS"
///   python_function = {
///     name        = "example_function"
///     python_code = "def example_function() -> int: return 0"
///   }
/// }
/// resource "gcp_ces_evaluation" "ces_evaluation_full" {
///   evaluation_id = "evaluation-id-full"
///   display_name  = "my-evaluation-full"
///   location      = "us"
///   app           = gcp_ces_app.app.app_id
///   description   = "Full evaluation for testing"
///   tags          = ["test", "full"]
///   golden = {
///     evaluation_expectations = ["projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/evaluationExpectations/dummy-exp"]
///     turns = [{
///       "steps" = [{
///         "userInput" = {
///           "text"         = "Hello"
///           "willContinue" = true
///         }
///         }, {
///         "userInput" = {
///           "variables" = {
///             "key" = "value"
///           }
///         }
///         }, {
///         "expectation" = {
///           "note" = "Expect tool call"
///           "toolCall" = {
///             "id"   = "tool-call-id"
///             "tool" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/tools/${gcp_ces_tool.tool.tool_id}"
///             "args" = {
///               "param" = "value"
///             }
///           }
///         }
///         }, {
///         "expectation" = {
///           "note" = "Expect agent response"
///           "agentResponse" = {
///             "role" = "agent"
///             "chunks" = [{
///               "updatedVariables" = {
///                 "key" = "value"
///               }
///               }, {
///               "agentTransfer" = {
///                 "targetAgent" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/agents/dummy-agent"
///               }
///               }, {
///               "toolCall" = {
///                 "id"   = "tool-call-id-3"
///                 "tool" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/tools/${gcp_ces_tool.tool.tool_id}"
///               }
///               }, {
///               "toolResponse" = {
///                 "id" = "tool-call-id-3"
///                 "response" = {
///                   "result" = "success"
///                 }
///                 "tool" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/tools/${gcp_ces_tool.tool.tool_id}"
///               }
///             }]
///           }
///         }
///         }, {
///         "expectation" = {
///           "note" = "Expect toolset tool call"
///           "toolCall" = {
///             "id" = "tool-call-id-2"
///             "toolsetTool" = {
///               "toolset" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/toolsets/dummy-toolset"
///               "toolId"  = "dummy-tool"
///             }
///           }
///         }
///         }, {
///         "agentTransfer" = {
///           "targetAgent" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/agents/dummy-agent"
///         }
///         }, {
///         "expectation" = {
///           "agentTransfer" = {
///             "targetAgent" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/agents/dummy-agent"
///             "displayName" = "dummy-agent"
///           }
///         }
///         }, {
///         "expectation" = {
///           "note" = "Expect mock tool response"
///           "mockToolResponse" = {
///             "id" = "tool-call-id-4"
///             "response" = {
///               "result" = "mocked"
///             }
///             "tool" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/tools/${gcp_ces_tool.tool.tool_id}"
///           }
///         }
///         }, {
///         "expectation" = {
///           "note" = "Expect tool response"
///           "toolResponse" = {
///             "toolsetTool" = {
///               "toolset" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/toolsets/dummy-toolset"
///               "toolId"  = "dummy-tool"
///             }
///           }
///         }
///         }, {
///         "expectation" = {
///           "note" = "Expect updated variables"
///           "updatedVariables" = {
///             "notes" = "Some notes"
///           }
///         }
///         }, {
///         "userInput" = {
///           "toolResponses" = {
///             "toolResponses" = [{
///               "id" = "tool-call-id-5"
///               "response" = {
///                 "result" = "user-provided"
///               }
///               "tool" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/tools/${gcp_ces_tool.tool.tool_id}"
///             }]
///           }
///         }
///         }, {
///         "userInput" = {
///           "event" = {
///             "event" = "my-event"
///           }
///         }
///         }, {
///         "userInput" = {
///           "dtmf" = "1234"
///         }
///         }, {
///         "userInput" = {
///           "audio" = "c29tZSBhdWRpbyBkYXRh"
///         }
///         }, {
///         "userInput" = {
///           "blob" = {
///             "mimeType" = "text/plain"
///             "data"     = "c29tZSBibG9iIGRhdGE="
///           }
///         }
///         }, {
///         "userInput" = {
///           "image" = {
///             "mimeType" = "image/png"
///             "data"     = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII="
///           }
///         }
///         }, {
///         "userInput" = {
///           "toolResponses" = {
///             "toolResponses" = [{
///               "id" = "tool-call-id"
///               "response" = {
///                 "result" = "success"
///               }
///               "tool" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/tools/${gcp_ces_tool.tool.tool_id}"
///             }]
///           }
///         }
///         }, {
///         "expectation" = {
///           "note" = "Expect tool response"
///           "toolResponse" = {
///             "id" = "tool-call-id"
///             "response" = {
///               "result" = "success"
///             }
///             "tool" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/tools/${gcp_ces_tool.tool.tool_id}"
///           }
///         }
///         }, {
///         "expectation" = {
///           "note" = "Expect agent response with chunks"
///           "agentResponse" = {
///             "role" = "agent"
///             "chunks" = [{
///               "text" = "Hello again"
///               }, {
///               "text" = "Hello again transcript"
///               }, {
///               "blob" = {
///                 "mimeType" = "text/plain"
///                 "data"     = "c29tZSBibG9iIGRhdGE="
///               }
///               }, {
///               "image" = {
///                 "mimeType" = "image/png"
///                 "data"     = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII="
///               }
///               }, {
///               "toolCall" = {
///                 "id"   = "tool-call-id-3"
///                 "tool" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/tools/${gcp_ces_tool.tool.tool_id}"
///                 "args" = {
///                   "param" = "value"
///                 }
///               }
///             }]
///           }
///         }
///       }]
///     }]
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
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Tool;
/// import com.pulumi.gcp.ces.ToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolPythonFunctionArgs;
/// import com.pulumi.gcp.ces.Evaluation;
/// import com.pulumi.gcp.ces.EvaluationArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepUserInputArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationToolCallArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkAgentTransferArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationToolCallToolsetToolArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepAgentTransferArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentTransferArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationMockToolResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationToolResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationToolResponseToolsetToolArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationUpdatedVariablesArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepUserInputToolResponsesArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepUserInputEventArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepUserInputBlobArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepUserInputImageArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkBlobArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkImageArgs;
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
///             .appId("app-id-full")
///             .location("us")
///             .displayName("my-app-full")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var tool = new Tool("tool", ToolArgs.builder()
///             .location("us")
///             .app(app.appId())
///             .toolId("tool-id-full")
///             .executionType("SYNCHRONOUS")
///             .pythonFunction(ToolPythonFunctionArgs.builder()
///                 .name("example_function")
///                 .pythonCode("def example_function() -> int: return 0")
///                 .build())
///             .build());
///
///         var cesEvaluationFull = new Evaluation("cesEvaluationFull", EvaluationArgs.builder()
///             .evaluationId("evaluation-id-full")
///             .displayName("my-evaluation-full")
///             .location("us")
///             .app(app.appId())
///             .description("Full evaluation for testing")
///             .tags(
///                 "test",
///                 "full")
///             .golden(EvaluationGoldenArgs.builder()
///                 .evaluationExpectations(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                     var project = values.t1;
///                     var appId = values.t2;
///                     return String.format("projects/%s/locations/us/apps/%s/evaluationExpectations/dummy-exp", project,appId);
///                 }))
///                 .turns(EvaluationGoldenTurnArgs.builder()
///                     .steps(
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .userInput(EvaluationGoldenTurnStepUserInputArgs.builder()
///                                 .text("Hello")
///                                 .willContinue(true)
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .userInput(EvaluationGoldenTurnStepUserInputArgs.builder()
///                                 .variables(Map.of("key", "value"))
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .expectation(EvaluationGoldenTurnStepExpectationArgs.builder()
///                                 .note("Expect tool call")
///                                 .toolCall(EvaluationGoldenTurnStepExpectationToolCallArgs.builder()
///                                     .id("tool-call-id")
///                                     .tool(Output.tuple(app.project(), app.appId(), tool.toolId()).applyValue(values -> {
///                                         var project = values.t1;
///                                         var appId = values.t2;
///                                         var toolId = values.t3;
///                                         return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                                     }))
///                                     .args(Map.of("param", "value"))
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .expectation(EvaluationGoldenTurnStepExpectationArgs.builder()
///                                 .note("Expect agent response")
///                                 .agentResponse(EvaluationGoldenTurnStepExpectationAgentResponseArgs.builder()
///                                     .role("agent")
///                                     .chunks(
///                                         EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs.builder()
///                                             .updatedVariables(Map.of("key", "value"))
///                                             .build(),
///                                         EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs.builder()
///                                             .agentTransfer(EvaluationGoldenTurnStepExpectationAgentResponseChunkAgentTransferArgs.builder()
///                                                 .targetAgent(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                                                     var project = values.t1;
///                                                     var appId = values.t2;
///                                                     return String.format("projects/%s/locations/us/apps/%s/agents/dummy-agent", project,appId);
///                                                 }))
///                                                 .build())
///                                             .build(),
///                                         EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs.builder()
///                                             .toolCall(EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallArgs.builder()
///                                                 .id("tool-call-id-3")
///                                                 .tool(Output.tuple(app.project(), app.appId(), tool.toolId()).applyValue(values -> {
///                                                     var project = values.t1;
///                                                     var appId = values.t2;
///                                                     var toolId = values.t3;
///                                                     return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                                                 }))
///                                                 .build())
///                                             .build(),
///                                         EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs.builder()
///                                             .toolResponse(EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponseArgs.builder()
///                                                 .id("tool-call-id-3")
///                                                 .response(Map.of("result", "success"))
///                                                 .tool(Output.tuple(app.project(), app.appId(), tool.toolId()).applyValue(values -> {
///                                                     var project = values.t1;
///                                                     var appId = values.t2;
///                                                     var toolId = values.t3;
///                                                     return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                                                 }))
///                                                 .build())
///                                             .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .expectation(EvaluationGoldenTurnStepExpectationArgs.builder()
///                                 .note("Expect toolset tool call")
///                                 .toolCall(EvaluationGoldenTurnStepExpectationToolCallArgs.builder()
///                                     .id("tool-call-id-2")
///                                     .toolsetTool(EvaluationGoldenTurnStepExpectationToolCallToolsetToolArgs.builder()
///                                         .toolset(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                                             var project = values.t1;
///                                             var appId = values.t2;
///                                             return String.format("projects/%s/locations/us/apps/%s/toolsets/dummy-toolset", project,appId);
///                                         }))
///                                         .toolId("dummy-tool")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .agentTransfer(EvaluationGoldenTurnStepAgentTransferArgs.builder()
///                                 .targetAgent(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                                     var project = values.t1;
///                                     var appId = values.t2;
///                                     return String.format("projects/%s/locations/us/apps/%s/agents/dummy-agent", project,appId);
///                                 }))
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .expectation(EvaluationGoldenTurnStepExpectationArgs.builder()
///                                 .agentTransfer(EvaluationGoldenTurnStepExpectationAgentTransferArgs.builder()
///                                     .targetAgent(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                                         var project = values.t1;
///                                         var appId = values.t2;
///                                         return String.format("projects/%s/locations/us/apps/%s/agents/dummy-agent", project,appId);
///                                     }))
///                                     .displayName("dummy-agent")
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .expectation(EvaluationGoldenTurnStepExpectationArgs.builder()
///                                 .note("Expect mock tool response")
///                                 .mockToolResponse(EvaluationGoldenTurnStepExpectationMockToolResponseArgs.builder()
///                                     .id("tool-call-id-4")
///                                     .response(Map.of("result", "mocked"))
///                                     .tool(Output.tuple(app.project(), app.appId(), tool.toolId()).applyValue(values -> {
///                                         var project = values.t1;
///                                         var appId = values.t2;
///                                         var toolId = values.t3;
///                                         return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                                     }))
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .expectation(EvaluationGoldenTurnStepExpectationArgs.builder()
///                                 .note("Expect tool response")
///                                 .toolResponse(EvaluationGoldenTurnStepExpectationToolResponseArgs.builder()
///                                     .toolsetTool(EvaluationGoldenTurnStepExpectationToolResponseToolsetToolArgs.builder()
///                                         .toolset(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                                             var project = values.t1;
///                                             var appId = values.t2;
///                                             return String.format("projects/%s/locations/us/apps/%s/toolsets/dummy-toolset", project,appId);
///                                         }))
///                                         .toolId("dummy-tool")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .expectation(EvaluationGoldenTurnStepExpectationArgs.builder()
///                                 .note("Expect updated variables")
///                                 .updatedVariables(EvaluationGoldenTurnStepExpectationUpdatedVariablesArgs.builder()
///                                     .notes("Some notes")
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .userInput(EvaluationGoldenTurnStepUserInputArgs.builder()
///                                 .toolResponses(EvaluationGoldenTurnStepUserInputToolResponsesArgs.builder()
///                                     .toolResponses(EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArgs.builder()
///                                         .id("tool-call-id-5")
///                                         .response(Map.of("result", "user-provided"))
///                                         .tool(Output.tuple(app.project(), app.appId(), tool.toolId()).applyValue(values -> {
///                                             var project = values.t1;
///                                             var appId = values.t2;
///                                             var toolId = values.t3;
///                                             return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                                         }))
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .userInput(EvaluationGoldenTurnStepUserInputArgs.builder()
///                                 .event(EvaluationGoldenTurnStepUserInputEventArgs.builder()
///                                     .event("my-event")
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .userInput(EvaluationGoldenTurnStepUserInputArgs.builder()
///                                 .dtmf("1234")
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .userInput(EvaluationGoldenTurnStepUserInputArgs.builder()
///                                 .audio("c29tZSBhdWRpbyBkYXRh")
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .userInput(EvaluationGoldenTurnStepUserInputArgs.builder()
///                                 .blob(EvaluationGoldenTurnStepUserInputBlobArgs.builder()
///                                     .mimeType("text/plain")
///                                     .data("c29tZSBibG9iIGRhdGE=")
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .userInput(EvaluationGoldenTurnStepUserInputArgs.builder()
///                                 .image(EvaluationGoldenTurnStepUserInputImageArgs.builder()
///                                     .mimeType("image/png")
///                                     .data("iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=")
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .userInput(EvaluationGoldenTurnStepUserInputArgs.builder()
///                                 .toolResponses(EvaluationGoldenTurnStepUserInputToolResponsesArgs.builder()
///                                     .toolResponses(EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArgs.builder()
///                                         .id("tool-call-id")
///                                         .response(Map.of("result", "success"))
///                                         .tool(Output.tuple(app.project(), app.appId(), tool.toolId()).applyValue(values -> {
///                                             var project = values.t1;
///                                             var appId = values.t2;
///                                             var toolId = values.t3;
///                                             return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                                         }))
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .expectation(EvaluationGoldenTurnStepExpectationArgs.builder()
///                                 .note("Expect tool response")
///                                 .toolResponse(EvaluationGoldenTurnStepExpectationToolResponseArgs.builder()
///                                     .id("tool-call-id")
///                                     .response(Map.of("result", "success"))
///                                     .tool(Output.tuple(app.project(), app.appId(), tool.toolId()).applyValue(values -> {
///                                         var project = values.t1;
///                                         var appId = values.t2;
///                                         var toolId = values.t3;
///                                         return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                                     }))
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .expectation(EvaluationGoldenTurnStepExpectationArgs.builder()
///                                 .note("Expect agent response with chunks")
///                                 .agentResponse(EvaluationGoldenTurnStepExpectationAgentResponseArgs.builder()
///                                     .role("agent")
///                                     .chunks(
///                                         EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs.builder()
///                                             .text("Hello again")
///                                             .build(),
///                                         EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs.builder()
///                                             .text("Hello again transcript")
///                                             .build(),
///                                         EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs.builder()
///                                             .blob(EvaluationGoldenTurnStepExpectationAgentResponseChunkBlobArgs.builder()
///                                                 .mimeType("text/plain")
///                                                 .data("c29tZSBibG9iIGRhdGE=")
///                                                 .build())
///                                             .build(),
///                                         EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs.builder()
///                                             .image(EvaluationGoldenTurnStepExpectationAgentResponseChunkImageArgs.builder()
///                                                 .mimeType("image/png")
///                                                 .data("iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=")
///                                                 .build())
///                                             .build(),
///                                         EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs.builder()
///                                             .toolCall(EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallArgs.builder()
///                                                 .id("tool-call-id-3")
///                                                 .tool(Output.tuple(app.project(), app.appId(), tool.toolId()).applyValue(values -> {
///                                                     var project = values.t1;
///                                                     var appId = values.t2;
///                                                     var toolId = values.t3;
///                                                     return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                                                 }))
///                                                 .args(Map.of("param", "value"))
///                                                 .build())
///                                             .build())
///                                     .build())
///                                 .build())
///                             .build())
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
///       appId: app-id-full
///       location: us
///       displayName: my-app-full
///       languageSettings:
///         defaultLanguageCode: en-US
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   tool:
///     type: gcp:ces:Tool
///     properties:
///       location: us
///       app: ${app.appId}
///       toolId: tool-id-full
///       executionType: SYNCHRONOUS
///       pythonFunction:
///         name: example_function
///         pythonCode: 'def example_function() -> int: return 0'
///   cesEvaluationFull:
///     type: gcp:ces:Evaluation
///     name: ces_evaluation_full
///     properties:
///       evaluationId: evaluation-id-full
///       displayName: my-evaluation-full
///       location: us
///       app: ${app.appId}
///       description: Full evaluation for testing
///       tags:
///         - test
///         - full
///       golden:
///         evaluationExpectations:
///           - projects/${app.project}/locations/us/apps/${app.appId}/evaluationExpectations/dummy-exp
///         turns:
///           - steps:
///               - userInput:
///                   text: Hello
///                   willContinue: true
///               - userInput:
///                   variables:
///                     key: value
///               - expectation:
///                   note: Expect tool call
///                   toolCall:
///                     id: tool-call-id
///                     tool: projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}
///                     args:
///                       param: value
///               - expectation:
///                   note: Expect agent response
///                   agentResponse:
///                     role: agent
///                     chunks:
///                       - updatedVariables:
///                           key: value
///                       - agentTransfer:
///                           targetAgent: projects/${app.project}/locations/us/apps/${app.appId}/agents/dummy-agent
///                       - toolCall:
///                           id: tool-call-id-3
///                           tool: projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}
///                       - toolResponse:
///                           id: tool-call-id-3
///                           response:
///                             result: success
///                           tool: projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}
///               - expectation:
///                   note: Expect toolset tool call
///                   toolCall:
///                     id: tool-call-id-2
///                     toolsetTool:
///                       toolset: projects/${app.project}/locations/us/apps/${app.appId}/toolsets/dummy-toolset
///                       toolId: dummy-tool
///               - agentTransfer:
///                   targetAgent: projects/${app.project}/locations/us/apps/${app.appId}/agents/dummy-agent
///               - expectation:
///                   agentTransfer:
///                     targetAgent: projects/${app.project}/locations/us/apps/${app.appId}/agents/dummy-agent
///                     displayName: dummy-agent
///               - expectation:
///                   note: Expect mock tool response
///                   mockToolResponse:
///                     id: tool-call-id-4
///                     response:
///                       result: mocked
///                     tool: projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}
///               - expectation:
///                   note: Expect tool response
///                   toolResponse:
///                     toolsetTool:
///                       toolset: projects/${app.project}/locations/us/apps/${app.appId}/toolsets/dummy-toolset
///                       toolId: dummy-tool
///               - expectation:
///                   note: Expect updated variables
///                   updatedVariables:
///                     notes: Some notes
///               - userInput:
///                   toolResponses:
///                     toolResponses:
///                       - id: tool-call-id-5
///                         response:
///                           result: user-provided
///                         tool: projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}
///               - userInput:
///                   event:
///                     event: my-event
///               - userInput:
///                   dtmf: '1234'
///               - userInput:
///                   audio: c29tZSBhdWRpbyBkYXRh
///               - userInput:
///                   blob:
///                     mimeType: text/plain
///                     data: c29tZSBibG9iIGRhdGE=
///               - userInput:
///                   image:
///                     mimeType: image/png
///                     data: iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=
///               - userInput:
///                   toolResponses:
///                     toolResponses:
///                       - id: tool-call-id
///                         response:
///                           result: success
///                         tool: projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}
///               - expectation:
///                   note: Expect tool response
///                   toolResponse:
///                     id: tool-call-id
///                     response:
///                       result: success
///                     tool: projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}
///               - expectation:
///                   note: Expect agent response with chunks
///                   agentResponse:
///                     role: agent
///                     chunks:
///                       - text: Hello again
///                       - text: Hello again transcript
///                       - blob:
///                           mimeType: text/plain
///                           data: c29tZSBibG9iIGRhdGE=
///                       - image:
///                           mimeType: image/png
///                           data: iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=
///                       - toolCall:
///                           id: tool-call-id-3
///                           tool: projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}
///                           args:
///                             param: value
/// ```
///
/// ### Ces Evaluation Toolset
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const app = new gcp.ces.App("app", {
///     appId: "app-id-toolset",
///     location: "us",
///     displayName: "my-app-toolset",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesEvaluationToolset = new gcp.ces.Evaluation("ces_evaluation_toolset", {
///     evaluationId: "eval-toolset",
///     displayName: "my-evaluation-toolset",
///     location: "us",
///     app: app.appId,
///     golden: {
///         turns: [{
///             steps: [
///                 {
///                     expectation: {
///                         note: "Expect agent response with toolset tool call",
///                         agentResponse: {
///                             role: "agent",
///                             chunks: [{
///                                 toolCall: {
///                                     id: "tool-call-id",
///                                     toolsetTool: {
///                                         toolset: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/toolsets/dummy-toolset`,
///                                         toolId: "dummy-tool",
///                                     },
///                                 },
///                             }],
///                         },
///                     },
///                 },
///                 {
///                     expectation: {
///                         note: "Expect agent response with toolset tool response",
///                         agentResponse: {
///                             role: "agent",
///                             chunks: [{
///                                 toolResponse: {
///                                     id: "tool-call-id",
///                                     response: {
///                                         result: "success",
///                                     },
///                                     toolsetTool: {
///                                         toolset: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/toolsets/dummy-toolset`,
///                                         toolId: "dummy-tool",
///                                     },
///                                 },
///                             }],
///                         },
///                     },
///                 },
///                 {
///                     expectation: {
///                         note: "Expect mock tool response with toolset tool",
///                         mockToolResponse: {
///                             id: "tool-call-id-2",
///                             response: {
///                                 result: "mocked",
///                             },
///                             toolsetTool: {
///                                 toolset: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/toolsets/dummy-toolset`,
///                                 toolId: "dummy-tool",
///                             },
///                         },
///                     },
///                 },
///                 {
///                     userInput: {
///                         toolResponses: {
///                             toolResponses: [{
///                                 id: "tool-call-id-3",
///                                 response: {
///                                     result: "user-provided",
///                                 },
///                                 toolsetTool: {
///                                     toolset: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/toolsets/dummy-toolset`,
///                                     toolId: "dummy-tool",
///                                 },
///                             }],
///                         },
///                     },
///                 },
///             ],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// app = gcp.ces.App("app",
///     app_id="app-id-toolset",
///     location="us",
///     display_name="my-app-toolset",
///     language_settings={
///         "default_language_code": "en-US",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_evaluation_toolset = gcp.ces.Evaluation("ces_evaluation_toolset",
///     evaluation_id="eval-toolset",
///     display_name="my-evaluation-toolset",
///     location="us",
///     app=app.app_id,
///     golden={
///         "turns": [{
///             "steps": [
///                 {
///                     "expectation": {
///                         "note": "Expect agent response with toolset tool call",
///                         "agent_response": {
///                             "role": "agent",
///                             "chunks": [{
///                                 "tool_call": {
///                                     "id": "tool-call-id",
///                                     "toolset_tool": {
///                                         "toolset": pulumi.Output.all(
///                                             project=app.project,
///                                             app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/toolsets/dummy-toolset")
/// ,
///                                         "tool_id": "dummy-tool",
///                                     },
///                                 },
///                             }],
///                         },
///                     },
///                 },
///                 {
///                     "expectation": {
///                         "note": "Expect agent response with toolset tool response",
///                         "agent_response": {
///                             "role": "agent",
///                             "chunks": [{
///                                 "tool_response": {
///                                     "id": "tool-call-id",
///                                     "response": {
///                                         "result": "success",
///                                     },
///                                     "toolset_tool": {
///                                         "toolset": pulumi.Output.all(
///                                             project=app.project,
///                                             app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/toolsets/dummy-toolset")
/// ,
///                                         "tool_id": "dummy-tool",
///                                     },
///                                 },
///                             }],
///                         },
///                     },
///                 },
///                 {
///                     "expectation": {
///                         "note": "Expect mock tool response with toolset tool",
///                         "mock_tool_response": {
///                             "id": "tool-call-id-2",
///                             "response": {
///                                 "result": "mocked",
///                             },
///                             "toolset_tool": {
///                                 "toolset": pulumi.Output.all(
///                                     project=app.project,
///                                     app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/toolsets/dummy-toolset")
/// ,
///                                 "tool_id": "dummy-tool",
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "user_input": {
///                         "tool_responses": {
///                             "tool_responses": [{
///                                 "id": "tool-call-id-3",
///                                 "response": {
///                                     "result": "user-provided",
///                                 },
///                                 "toolset_tool": {
///                                     "toolset": pulumi.Output.all(
///                                         project=app.project,
///                                         app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/toolsets/dummy-toolset")
/// ,
///                                     "tool_id": "dummy-tool",
///                                 },
///                             }],
///                         },
///                     },
///                 },
///             ],
///         }],
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
///     var app = new Gcp.Ces.App("app", new()
///     {
///         AppId = "app-id-toolset",
///         Location = "us",
///         DisplayName = "my-app-toolset",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesEvaluationToolset = new Gcp.Ces.Evaluation("ces_evaluation_toolset", new()
///     {
///         EvaluationId = "eval-toolset",
///         DisplayName = "my-evaluation-toolset",
///         Location = "us",
///         App = app.AppId,
///         Golden = new Gcp.Ces.Inputs.EvaluationGoldenArgs
///         {
///             Turns = new[]
///             {
///                 new Gcp.Ces.Inputs.EvaluationGoldenTurnArgs
///                 {
///                     Steps = new[]
///                     {
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             Expectation = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationArgs
///                             {
///                                 Note = "Expect agent response with toolset tool call",
///                                 AgentResponse = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseArgs
///                                 {
///                                     Role = "agent",
///                                     Chunks = new[]
///                                     {
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs
///                                         {
///                                             ToolCall = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallArgs
///                                             {
///                                                 Id = "tool-call-id",
///                                                 ToolsetTool = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallToolsetToolArgs
///                                                 {
///                                                     Toolset = Output.Tuple(app.Project, app.AppId).Apply(values =>
///                                                     {
///                                                         var project = values.Item1;
///                                                         var appId = values.Item2;
///                                                         return $"projects/{project}/locations/us/apps/{appId}/toolsets/dummy-toolset";
///                                                     }),
///                                                     ToolId = "dummy-tool",
///                                                 },
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             Expectation = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationArgs
///                             {
///                                 Note = "Expect agent response with toolset tool response",
///                                 AgentResponse = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseArgs
///                                 {
///                                     Role = "agent",
///                                     Chunks = new[]
///                                     {
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs
///                                         {
///                                             ToolResponse = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponseArgs
///                                             {
///                                                 Id = "tool-call-id",
///                                                 Response =
///                                                 {
///                                                     { "result", "success" },
///                                                 },
///                                                 ToolsetTool = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponseToolsetToolArgs
///                                                 {
///                                                     Toolset = Output.Tuple(app.Project, app.AppId).Apply(values =>
///                                                     {
///                                                         var project = values.Item1;
///                                                         var appId = values.Item2;
///                                                         return $"projects/{project}/locations/us/apps/{appId}/toolsets/dummy-toolset";
///                                                     }),
///                                                     ToolId = "dummy-tool",
///                                                 },
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             Expectation = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationArgs
///                             {
///                                 Note = "Expect mock tool response with toolset tool",
///                                 MockToolResponse = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationMockToolResponseArgs
///                                 {
///                                     Id = "tool-call-id-2",
///                                     Response =
///                                     {
///                                         { "result", "mocked" },
///                                     },
///                                     ToolsetTool = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepExpectationMockToolResponseToolsetToolArgs
///                                     {
///                                         Toolset = Output.Tuple(app.Project, app.AppId).Apply(values =>
///                                         {
///                                             var project = values.Item1;
///                                             var appId = values.Item2;
///                                             return $"projects/{project}/locations/us/apps/{appId}/toolsets/dummy-toolset";
///                                         }),
///                                         ToolId = "dummy-tool",
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepArgs
///                         {
///                             UserInput = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputArgs
///                             {
///                                 ToolResponses = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputToolResponsesArgs
///                                 {
///                                     ToolResponses = new[]
///                                     {
///                                         new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArgs
///                                         {
///                                             Id = "tool-call-id-3",
///                                             Response =
///                                             {
///                                                 { "result", "user-provided" },
///                                             },
///                                             ToolsetTool = new Gcp.Ces.Inputs.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseToolsetToolArgs
///                                             {
///                                                 Toolset = Output.Tuple(app.Project, app.AppId).Apply(values =>
///                                                 {
///                                                     var project = values.Item1;
///                                                     var appId = values.Item2;
///                                                     return $"projects/{project}/locations/us/apps/{appId}/toolsets/dummy-toolset";
///                                                 }),
///                                                 ToolId = "dummy-tool",
///                                             },
///                                         },
///                                     },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		app, err := ces.NewApp(ctx, "app", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id-toolset"),
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-app-toolset"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewEvaluation(ctx, "ces_evaluation_toolset", &ces.EvaluationArgs{
/// 			EvaluationId: pulumi.String("eval-toolset"),
/// 			DisplayName:  pulumi.String("my-evaluation-toolset"),
/// 			Location:     pulumi.String("us"),
/// 			App:          app.AppId,
/// 			Golden: &ces.EvaluationGoldenArgs{
/// 				Turns: ces.EvaluationGoldenTurnArray{
/// 					&ces.EvaluationGoldenTurnArgs{
/// 						Steps: ces.EvaluationGoldenTurnStepArray{
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								Expectation: &ces.EvaluationGoldenTurnStepExpectationArgs{
/// 									Note: pulumi.String("Expect agent response with toolset tool call"),
/// 									AgentResponse: &ces.EvaluationGoldenTurnStepExpectationAgentResponseArgs{
/// 										Role: pulumi.String("agent"),
/// 										Chunks: ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArray{
/// 											&ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs{
/// 												ToolCall: &ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallArgs{
/// 													Id: pulumi.String("tool-call-id"),
/// 													ToolsetTool: &ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallToolsetToolArgs{
/// 														Toolset: pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 															project := _args[0].(string)
/// 															appId := _args[1].(string)
/// 															return fmt.Sprintf("projects/%v/locations/us/apps/%v/toolsets/dummy-toolset", project, appId), nil
/// 														}).(pulumi.StringOutput),
/// 														ToolId: pulumi.String("dummy-tool"),
/// 													},
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								Expectation: &ces.EvaluationGoldenTurnStepExpectationArgs{
/// 									Note: pulumi.String("Expect agent response with toolset tool response"),
/// 									AgentResponse: &ces.EvaluationGoldenTurnStepExpectationAgentResponseArgs{
/// 										Role: pulumi.String("agent"),
/// 										Chunks: ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArray{
/// 											&ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs{
/// 												ToolResponse: &ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponseArgs{
/// 													Id: pulumi.String("tool-call-id"),
/// 													Response: pulumi.StringMap{
/// 														"result": pulumi.String("success"),
/// 													},
/// 													ToolsetTool: &ces.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponseToolsetToolArgs{
/// 														Toolset: pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 															project := _args[0].(string)
/// 															appId := _args[1].(string)
/// 															return fmt.Sprintf("projects/%v/locations/us/apps/%v/toolsets/dummy-toolset", project, appId), nil
/// 														}).(pulumi.StringOutput),
/// 														ToolId: pulumi.String("dummy-tool"),
/// 													},
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								Expectation: &ces.EvaluationGoldenTurnStepExpectationArgs{
/// 									Note: pulumi.String("Expect mock tool response with toolset tool"),
/// 									MockToolResponse: &ces.EvaluationGoldenTurnStepExpectationMockToolResponseArgs{
/// 										Id: pulumi.String("tool-call-id-2"),
/// 										Response: pulumi.StringMap{
/// 											"result": pulumi.String("mocked"),
/// 										},
/// 										ToolsetTool: &ces.EvaluationGoldenTurnStepExpectationMockToolResponseToolsetToolArgs{
/// 											Toolset: pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 												project := _args[0].(string)
/// 												appId := _args[1].(string)
/// 												return fmt.Sprintf("projects/%v/locations/us/apps/%v/toolsets/dummy-toolset", project, appId), nil
/// 											}).(pulumi.StringOutput),
/// 											ToolId: pulumi.String("dummy-tool"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&ces.EvaluationGoldenTurnStepArgs{
/// 								UserInput: &ces.EvaluationGoldenTurnStepUserInputArgs{
/// 									ToolResponses: &ces.EvaluationGoldenTurnStepUserInputToolResponsesArgs{
/// 										ToolResponses: ces.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArray{
/// 											&ces.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArgs{
/// 												Id: pulumi.String("tool-call-id-3"),
/// 												Response: pulumi.StringMap{
/// 													"result": pulumi.String("user-provided"),
/// 												},
/// 												ToolsetTool: &ces.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseToolsetToolArgs{
/// 													Toolset: pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 														project := _args[0].(string)
/// 														appId := _args[1].(string)
/// 														return fmt.Sprintf("projects/%v/locations/us/apps/%v/toolsets/dummy-toolset", project, appId), nil
/// 													}).(pulumi.StringOutput),
/// 													ToolId: pulumi.String("dummy-tool"),
/// 												},
/// 											},
/// 										},
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "app" {
///   app_id       = "app-id-toolset"
///   location     = "us"
///   display_name = "my-app-toolset"
///   language_settings = {
///     default_language_code = "en-US"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_evaluation" "ces_evaluation_toolset" {
///   evaluation_id = "eval-toolset"
///   display_name  = "my-evaluation-toolset"
///   location      = "us"
///   app           = gcp_ces_app.app.app_id
///   golden = {
///     turns = [{
///       "steps" = [{
///         "expectation" = {
///           "note" = "Expect agent response with toolset tool call"
///           "agentResponse" = {
///             "role" = "agent"
///             "chunks" = [{
///               "toolCall" = {
///                 "id" = "tool-call-id"
///                 "toolsetTool" = {
///                   "toolset" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/toolsets/dummy-toolset"
///                   "toolId"  = "dummy-tool"
///                 }
///               }
///             }]
///           }
///         }
///         }, {
///         "expectation" = {
///           "note" = "Expect agent response with toolset tool response"
///           "agentResponse" = {
///             "role" = "agent"
///             "chunks" = [{
///               "toolResponse" = {
///                 "id" = "tool-call-id"
///                 "response" = {
///                   "result" = "success"
///                 }
///                 "toolsetTool" = {
///                   "toolset" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/toolsets/dummy-toolset"
///                   "toolId"  = "dummy-tool"
///                 }
///               }
///             }]
///           }
///         }
///         }, {
///         "expectation" = {
///           "note" = "Expect mock tool response with toolset tool"
///           "mockToolResponse" = {
///             "id" = "tool-call-id-2"
///             "response" = {
///               "result" = "mocked"
///             }
///             "toolsetTool" = {
///               "toolset" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/toolsets/dummy-toolset"
///               "toolId"  = "dummy-tool"
///             }
///           }
///         }
///         }, {
///         "userInput" = {
///           "toolResponses" = {
///             "toolResponses" = [{
///               "id" = "tool-call-id-3"
///               "response" = {
///                 "result" = "user-provided"
///               }
///               "toolsetTool" = {
///                 "toolset" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/toolsets/dummy-toolset"
///                 "toolId"  = "dummy-tool"
///               }
///             }]
///           }
///         }
///       }]
///     }]
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
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Evaluation;
/// import com.pulumi.gcp.ces.EvaluationArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallToolsetToolArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponseToolsetToolArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationMockToolResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepExpectationMockToolResponseToolsetToolArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepUserInputArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepUserInputToolResponsesArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationGoldenTurnStepUserInputToolResponsesToolResponseToolsetToolArgs;
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
///             .appId("app-id-toolset")
///             .location("us")
///             .displayName("my-app-toolset")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesEvaluationToolset = new Evaluation("cesEvaluationToolset", EvaluationArgs.builder()
///             .evaluationId("eval-toolset")
///             .displayName("my-evaluation-toolset")
///             .location("us")
///             .app(app.appId())
///             .golden(EvaluationGoldenArgs.builder()
///                 .turns(EvaluationGoldenTurnArgs.builder()
///                     .steps(
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .expectation(EvaluationGoldenTurnStepExpectationArgs.builder()
///                                 .note("Expect agent response with toolset tool call")
///                                 .agentResponse(EvaluationGoldenTurnStepExpectationAgentResponseArgs.builder()
///                                     .role("agent")
///                                     .chunks(EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs.builder()
///                                         .toolCall(EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallArgs.builder()
///                                             .id("tool-call-id")
///                                             .toolsetTool(EvaluationGoldenTurnStepExpectationAgentResponseChunkToolCallToolsetToolArgs.builder()
///                                                 .toolset(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                                                     var project = values.t1;
///                                                     var appId = values.t2;
///                                                     return String.format("projects/%s/locations/us/apps/%s/toolsets/dummy-toolset", project,appId);
///                                                 }))
///                                                 .toolId("dummy-tool")
///                                                 .build())
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .expectation(EvaluationGoldenTurnStepExpectationArgs.builder()
///                                 .note("Expect agent response with toolset tool response")
///                                 .agentResponse(EvaluationGoldenTurnStepExpectationAgentResponseArgs.builder()
///                                     .role("agent")
///                                     .chunks(EvaluationGoldenTurnStepExpectationAgentResponseChunkArgs.builder()
///                                         .toolResponse(EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponseArgs.builder()
///                                             .id("tool-call-id")
///                                             .response(Map.of("result", "success"))
///                                             .toolsetTool(EvaluationGoldenTurnStepExpectationAgentResponseChunkToolResponseToolsetToolArgs.builder()
///                                                 .toolset(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                                                     var project = values.t1;
///                                                     var appId = values.t2;
///                                                     return String.format("projects/%s/locations/us/apps/%s/toolsets/dummy-toolset", project,appId);
///                                                 }))
///                                                 .toolId("dummy-tool")
///                                                 .build())
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .expectation(EvaluationGoldenTurnStepExpectationArgs.builder()
///                                 .note("Expect mock tool response with toolset tool")
///                                 .mockToolResponse(EvaluationGoldenTurnStepExpectationMockToolResponseArgs.builder()
///                                     .id("tool-call-id-2")
///                                     .response(Map.of("result", "mocked"))
///                                     .toolsetTool(EvaluationGoldenTurnStepExpectationMockToolResponseToolsetToolArgs.builder()
///                                         .toolset(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                                             var project = values.t1;
///                                             var appId = values.t2;
///                                             return String.format("projects/%s/locations/us/apps/%s/toolsets/dummy-toolset", project,appId);
///                                         }))
///                                         .toolId("dummy-tool")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         EvaluationGoldenTurnStepArgs.builder()
///                             .userInput(EvaluationGoldenTurnStepUserInputArgs.builder()
///                                 .toolResponses(EvaluationGoldenTurnStepUserInputToolResponsesArgs.builder()
///                                     .toolResponses(EvaluationGoldenTurnStepUserInputToolResponsesToolResponseArgs.builder()
///                                         .id("tool-call-id-3")
///                                         .response(Map.of("result", "user-provided"))
///                                         .toolsetTool(EvaluationGoldenTurnStepUserInputToolResponsesToolResponseToolsetToolArgs.builder()
///                                             .toolset(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                                                 var project = values.t1;
///                                                 var appId = values.t2;
///                                                 return String.format("projects/%s/locations/us/apps/%s/toolsets/dummy-toolset", project,appId);
///                                             }))
///                                             .toolId("dummy-tool")
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
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
///       appId: app-id-toolset
///       location: us
///       displayName: my-app-toolset
///       languageSettings:
///         defaultLanguageCode: en-US
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesEvaluationToolset:
///     type: gcp:ces:Evaluation
///     name: ces_evaluation_toolset
///     properties:
///       evaluationId: eval-toolset
///       displayName: my-evaluation-toolset
///       location: us
///       app: ${app.appId}
///       golden:
///         turns:
///           - steps:
///               - expectation:
///                   note: Expect agent response with toolset tool call
///                   agentResponse:
///                     role: agent
///                     chunks:
///                       - toolCall:
///                           id: tool-call-id
///                           toolsetTool:
///                             toolset: projects/${app.project}/locations/us/apps/${app.appId}/toolsets/dummy-toolset
///                             toolId: dummy-tool
///               - expectation:
///                   note: Expect agent response with toolset tool response
///                   agentResponse:
///                     role: agent
///                     chunks:
///                       - toolResponse:
///                           id: tool-call-id
///                           response:
///                             result: success
///                           toolsetTool:
///                             toolset: projects/${app.project}/locations/us/apps/${app.appId}/toolsets/dummy-toolset
///                             toolId: dummy-tool
///               - expectation:
///                   note: Expect mock tool response with toolset tool
///                   mockToolResponse:
///                     id: tool-call-id-2
///                     response:
///                       result: mocked
///                     toolsetTool:
///                       toolset: projects/${app.project}/locations/us/apps/${app.appId}/toolsets/dummy-toolset
///                       toolId: dummy-tool
///               - userInput:
///                   toolResponses:
///                     toolResponses:
///                       - id: tool-call-id-3
///                         response:
///                           result: user-provided
///                         toolsetTool:
///                           toolset: projects/${app.project}/locations/us/apps/${app.appId}/toolsets/dummy-toolset
///                           toolId: dummy-tool
/// ```
///
/// ### Ces Evaluation Scenario Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const app = new gcp.ces.App("app", {
///     appId: "app-id-scenario",
///     location: "us",
///     displayName: "my-app-scenario",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const tool = new gcp.ces.Tool("tool", {
///     location: "us",
///     app: app.appId,
///     toolId: "tool-id-scenario",
///     executionType: "SYNCHRONOUS",
///     pythonFunction: {
///         name: "example_function",
///         pythonCode: "def example_function() -> int: return 0",
///     },
/// });
/// const cesEvaluationScenarioFull = new gcp.ces.Evaluation("ces_evaluation_scenario_full", {
///     evaluationId: "eval-scenario-full",
///     displayName: "my-evaluation-scenario-full",
///     location: "us",
///     app: app.appId,
///     description: "Full evaluation for testing scenario",
///     tags: [
///         "test",
///         "full",
///         "scenario",
///     ],
///     scenario: {
///         task: "Test task",
///         maxTurns: 5,
///         rubrics: [pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/rubrics/dummy-rubric`],
///         userGoalBehavior: "USER_GOAL_SATISFIED",
///         taskCompletionBehavior: "TASK_SATISFIED",
///         variableOverrides: {
///             key: "value",
///         },
///         evaluationExpectations: [pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/evaluationExpectations/dummy-exp`],
///         userFacts: [{
///             name: "user_name",
///             value: "John Doe",
///         }],
///         scenarioExpectations: [
///             {
///                 toolExpectation: {
///                     expectedToolCall: {
///                         id: "tool-call-id",
///                         tool: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}`,
///                         args: {
///                             param: "value",
///                         },
///                     },
///                     mockToolResponse: {
///                         id: "tool-call-id",
///                         response: {
///                             result: "mocked",
///                         },
///                         tool: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}`,
///                     },
///                 },
///             },
///             {
///                 agentResponse: {
///                     role: "agent",
///                     chunks: [
///                         {
///                             text: "Hello",
///                         },
///                         {
///                             updatedVariables: {
///                                 key: "value",
///                             },
///                         },
///                         {
///                             blob: {
///                                 mimeType: "text/plain",
///                                 data: "c29tZSBibG9iIGRhdGE=",
///                             },
///                         },
///                         {
///                             image: {
///                                 mimeType: "image/png",
///                                 data: "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=",
///                             },
///                         },
///                         {
///                             toolCall: {
///                                 id: "tool-call-id-3",
///                                 tool: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}`,
///                                 args: {
///                                     param: "value",
///                                 },
///                             },
///                         },
///                         {
///                             toolResponse: {
///                                 id: "tool-call-id-3",
///                                 response: {
///                                     result: "success",
///                                 },
///                                 tool: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}`,
///                             },
///                         },
///                         {
///                             agentTransfer: {
///                                 targetAgent: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/agents/dummy-agent`,
///                             },
///                         },
///                     ],
///                 },
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// app = gcp.ces.App("app",
///     app_id="app-id-scenario",
///     location="us",
///     display_name="my-app-scenario",
///     language_settings={
///         "default_language_code": "en-US",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// tool = gcp.ces.Tool("tool",
///     location="us",
///     app=app.app_id,
///     tool_id="tool-id-scenario",
///     execution_type="SYNCHRONOUS",
///     python_function={
///         "name": "example_function",
///         "python_code": "def example_function() -> int: return 0",
///     })
/// ces_evaluation_scenario_full = gcp.ces.Evaluation("ces_evaluation_scenario_full",
///     evaluation_id="eval-scenario-full",
///     display_name="my-evaluation-scenario-full",
///     location="us",
///     app=app.app_id,
///     description="Full evaluation for testing scenario",
///     tags=[
///         "test",
///         "full",
///         "scenario",
///     ],
///     scenario={
///         "task": "Test task",
///         "max_turns": 5,
///         "rubrics": [pulumi.Output.all(
///             project=app.project,
///             app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/rubrics/dummy-rubric")
/// ],
///         "user_goal_behavior": "USER_GOAL_SATISFIED",
///         "task_completion_behavior": "TASK_SATISFIED",
///         "variable_overrides": {
///             "key": "value",
///         },
///         "evaluation_expectations": [pulumi.Output.all(
///             project=app.project,
///             app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/evaluationExpectations/dummy-exp")
/// ],
///         "user_facts": [{
///             "name": "user_name",
///             "value": "John Doe",
///         }],
///         "scenario_expectations": [
///             {
///                 "tool_expectation": {
///                     "expected_tool_call": {
///                         "id": "tool-call-id",
///                         "tool": pulumi.Output.all(
///                             project=app.project,
///                             app_id=app.app_id,
///                             tool_id=tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                         "args": {
///                             "param": "value",
///                         },
///                     },
///                     "mock_tool_response": {
///                         "id": "tool-call-id",
///                         "response": {
///                             "result": "mocked",
///                         },
///                         "tool": pulumi.Output.all(
///                             project=app.project,
///                             app_id=app.app_id,
///                             tool_id=tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                     },
///                 },
///             },
///             {
///                 "agent_response": {
///                     "role": "agent",
///                     "chunks": [
///                         {
///                             "text": "Hello",
///                         },
///                         {
///                             "updated_variables": {
///                                 "key": "value",
///                             },
///                         },
///                         {
///                             "blob": {
///                                 "mime_type": "text/plain",
///                                 "data": "c29tZSBibG9iIGRhdGE=",
///                             },
///                         },
///                         {
///                             "image": {
///                                 "mime_type": "image/png",
///                                 "data": "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=",
///                             },
///                         },
///                         {
///                             "tool_call": {
///                                 "id": "tool-call-id-3",
///                                 "tool": pulumi.Output.all(
///                                     project=app.project,
///                                     app_id=app.app_id,
///                                     tool_id=tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                                 "args": {
///                                     "param": "value",
///                                 },
///                             },
///                         },
///                         {
///                             "tool_response": {
///                                 "id": "tool-call-id-3",
///                                 "response": {
///                                     "result": "success",
///                                 },
///                                 "tool": pulumi.Output.all(
///                                     project=app.project,
///                                     app_id=app.app_id,
///                                     tool_id=tool.tool_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/tools/{resolved_outputs['tool_id']}")
/// ,
///                             },
///                         },
///                         {
///                             "agent_transfer": {
///                                 "target_agent": pulumi.Output.all(
///                                     project=app.project,
///                                     app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/agents/dummy-agent")
/// ,
///                             },
///                         },
///                     ],
///                 },
///             },
///         ],
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
///     var app = new Gcp.Ces.App("app", new()
///     {
///         AppId = "app-id-scenario",
///         Location = "us",
///         DisplayName = "my-app-scenario",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var tool = new Gcp.Ces.Tool("tool", new()
///     {
///         Location = "us",
///         App = app.AppId,
///         ToolId = "tool-id-scenario",
///         ExecutionType = "SYNCHRONOUS",
///         PythonFunction = new Gcp.Ces.Inputs.ToolPythonFunctionArgs
///         {
///             Name = "example_function",
///             PythonCode = "def example_function() -> int: return 0",
///         },
///     });
///
///     var cesEvaluationScenarioFull = new Gcp.Ces.Evaluation("ces_evaluation_scenario_full", new()
///     {
///         EvaluationId = "eval-scenario-full",
///         DisplayName = "my-evaluation-scenario-full",
///         Location = "us",
///         App = app.AppId,
///         Description = "Full evaluation for testing scenario",
///         Tags = new[]
///         {
///             "test",
///             "full",
///             "scenario",
///         },
///         Scenario = new Gcp.Ces.Inputs.EvaluationScenarioArgs
///         {
///             Task = "Test task",
///             MaxTurns = 5,
///             Rubrics = new[]
///             {
///                 Output.Tuple(app.Project, app.AppId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var appId = values.Item2;
///                     return $"projects/{project}/locations/us/apps/{appId}/rubrics/dummy-rubric";
///                 }),
///             },
///             UserGoalBehavior = "USER_GOAL_SATISFIED",
///             TaskCompletionBehavior = "TASK_SATISFIED",
///             VariableOverrides =
///             {
///                 { "key", "value" },
///             },
///             EvaluationExpectations = new[]
///             {
///                 Output.Tuple(app.Project, app.AppId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var appId = values.Item2;
///                     return $"projects/{project}/locations/us/apps/{appId}/evaluationExpectations/dummy-exp";
///                 }),
///             },
///             UserFacts = new[]
///             {
///                 new Gcp.Ces.Inputs.EvaluationScenarioUserFactArgs
///                 {
///                     Name = "user_name",
///                     Value = "John Doe",
///                 },
///             },
///             ScenarioExpectations = new[]
///             {
///                 new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationArgs
///                 {
///                     ToolExpectation = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationToolExpectationArgs
///                     {
///                         ExpectedToolCall = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallArgs
///                         {
///                             Id = "tool-call-id",
///                             Tool = Output.Tuple(app.Project, app.AppId, tool.ToolId).Apply(values =>
///                             {
///                                 var project = values.Item1;
///                                 var appId = values.Item2;
///                                 var toolId = values.Item3;
///                                 return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                             }),
///                             Args =
///                             {
///                                 { "param", "value" },
///                             },
///                         },
///                         MockToolResponse = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseArgs
///                         {
///                             Id = "tool-call-id",
///                             Response =
///                             {
///                                 { "result", "mocked" },
///                             },
///                             Tool = Output.Tuple(app.Project, app.AppId, tool.ToolId).Apply(values =>
///                             {
///                                 var project = values.Item1;
///                                 var appId = values.Item2;
///                                 var toolId = values.Item3;
///                                 return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                             }),
///                         },
///                     },
///                 },
///                 new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationArgs
///                 {
///                     AgentResponse = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseArgs
///                     {
///                         Role = "agent",
///                         Chunks = new[]
///                         {
///                             new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs
///                             {
///                                 Text = "Hello",
///                             },
///                             new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs
///                             {
///                                 UpdatedVariables =
///                                 {
///                                     { "key", "value" },
///                                 },
///                             },
///                             new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs
///                             {
///                                 Blob = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkBlobArgs
///                                 {
///                                     MimeType = "text/plain",
///                                     Data = "c29tZSBibG9iIGRhdGE=",
///                                 },
///                             },
///                             new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs
///                             {
///                                 Image = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkImageArgs
///                                 {
///                                     MimeType = "image/png",
///                                     Data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=",
///                                 },
///                             },
///                             new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs
///                             {
///                                 ToolCall = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkToolCallArgs
///                                 {
///                                     Id = "tool-call-id-3",
///                                     Tool = Output.Tuple(app.Project, app.AppId, tool.ToolId).Apply(values =>
///                                     {
///                                         var project = values.Item1;
///                                         var appId = values.Item2;
///                                         var toolId = values.Item3;
///                                         return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                                     }),
///                                     Args =
///                                     {
///                                         { "param", "value" },
///                                     },
///                                 },
///                             },
///                             new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs
///                             {
///                                 ToolResponse = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseArgs
///                                 {
///                                     Id = "tool-call-id-3",
///                                     Response =
///                                     {
///                                         { "result", "success" },
///                                     },
///                                     Tool = Output.Tuple(app.Project, app.AppId, tool.ToolId).Apply(values =>
///                                     {
///                                         var project = values.Item1;
///                                         var appId = values.Item2;
///                                         var toolId = values.Item3;
///                                         return $"projects/{project}/locations/us/apps/{appId}/tools/{toolId}";
///                                     }),
///                                 },
///                             },
///                             new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs
///                             {
///                                 AgentTransfer = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkAgentTransferArgs
///                                 {
///                                     TargetAgent = Output.Tuple(app.Project, app.AppId).Apply(values =>
///                                     {
///                                         var project = values.Item1;
///                                         var appId = values.Item2;
///                                         return $"projects/{project}/locations/us/apps/{appId}/agents/dummy-agent";
///                                     }),
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		app, err := ces.NewApp(ctx, "app", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id-scenario"),
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-app-scenario"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tool, err := ces.NewTool(ctx, "tool", &ces.ToolArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           app.AppId,
/// 			ToolId:        pulumi.String("tool-id-scenario"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			PythonFunction: &ces.ToolPythonFunctionArgs{
/// 				Name:       pulumi.String("example_function"),
/// 				PythonCode: pulumi.String("def example_function() -> int: return 0"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewEvaluation(ctx, "ces_evaluation_scenario_full", &ces.EvaluationArgs{
/// 			EvaluationId: pulumi.String("eval-scenario-full"),
/// 			DisplayName:  pulumi.String("my-evaluation-scenario-full"),
/// 			Location:     pulumi.String("us"),
/// 			App:          app.AppId,
/// 			Description:  pulumi.String("Full evaluation for testing scenario"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("test"),
/// 				pulumi.String("full"),
/// 				pulumi.String("scenario"),
/// 			},
/// 			Scenario: &ces.EvaluationScenarioArgs{
/// 				Task:     pulumi.String("Test task"),
/// 				MaxTurns: pulumi.Int(5),
/// 				Rubrics: pulumi.StringArray{
/// 					pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						appId := _args[1].(string)
/// 						return fmt.Sprintf("projects/%v/locations/us/apps/%v/rubrics/dummy-rubric", project, appId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				UserGoalBehavior:       pulumi.String("USER_GOAL_SATISFIED"),
/// 				TaskCompletionBehavior: pulumi.String("TASK_SATISFIED"),
/// 				VariableOverrides: pulumi.StringMap{
/// 					"key": pulumi.String("value"),
/// 				},
/// 				EvaluationExpectations: pulumi.StringArray{
/// 					pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						appId := _args[1].(string)
/// 						return fmt.Sprintf("projects/%v/locations/us/apps/%v/evaluationExpectations/dummy-exp", project, appId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				UserFacts: ces.EvaluationScenarioUserFactArray{
/// 					&ces.EvaluationScenarioUserFactArgs{
/// 						Name:  pulumi.String("user_name"),
/// 						Value: pulumi.String("John Doe"),
/// 					},
/// 				},
/// 				ScenarioExpectations: ces.EvaluationScenarioScenarioExpectationArray{
/// 					&ces.EvaluationScenarioScenarioExpectationArgs{
/// 						ToolExpectation: &ces.EvaluationScenarioScenarioExpectationToolExpectationArgs{
/// 							ExpectedToolCall: &ces.EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallArgs{
/// 								Id: pulumi.String("tool-call-id"),
/// 								Tool: pulumi.All(app.Project, app.AppId, tool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 									project := _args[0].(string)
/// 									appId := _args[1].(string)
/// 									toolId := _args[2].(string)
/// 									return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 								}).(pulumi.StringOutput),
/// 								Args: pulumi.StringMap{
/// 									"param": pulumi.String("value"),
/// 								},
/// 							},
/// 							MockToolResponse: &ces.EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseArgs{
/// 								Id: pulumi.String("tool-call-id"),
/// 								Response: pulumi.StringMap{
/// 									"result": pulumi.String("mocked"),
/// 								},
/// 								Tool: pulumi.All(app.Project, app.AppId, tool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 									project := _args[0].(string)
/// 									appId := _args[1].(string)
/// 									toolId := _args[2].(string)
/// 									return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 								}).(pulumi.StringOutput),
/// 							},
/// 						},
/// 					},
/// 					&ces.EvaluationScenarioScenarioExpectationArgs{
/// 						AgentResponse: &ces.EvaluationScenarioScenarioExpectationAgentResponseArgs{
/// 							Role: pulumi.String("agent"),
/// 							Chunks: ces.EvaluationScenarioScenarioExpectationAgentResponseChunkArray{
/// 								&ces.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs{
/// 									Text: pulumi.String("Hello"),
/// 								},
/// 								&ces.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs{
/// 									UpdatedVariables: pulumi.StringMap{
/// 										"key": pulumi.String("value"),
/// 									},
/// 								},
/// 								&ces.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs{
/// 									Blob: &ces.EvaluationScenarioScenarioExpectationAgentResponseChunkBlobArgs{
/// 										MimeType: pulumi.String("text/plain"),
/// 										Data:     pulumi.String("c29tZSBibG9iIGRhdGE="),
/// 									},
/// 								},
/// 								&ces.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs{
/// 									Image: &ces.EvaluationScenarioScenarioExpectationAgentResponseChunkImageArgs{
/// 										MimeType: pulumi.String("image/png"),
/// 										Data:     pulumi.String("iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII="),
/// 									},
/// 								},
/// 								&ces.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs{
/// 									ToolCall: &ces.EvaluationScenarioScenarioExpectationAgentResponseChunkToolCallArgs{
/// 										Id: pulumi.String("tool-call-id-3"),
/// 										Tool: pulumi.All(app.Project, app.AppId, tool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 											project := _args[0].(string)
/// 											appId := _args[1].(string)
/// 											toolId := _args[2].(string)
/// 											return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 										}).(pulumi.StringOutput),
/// 										Args: pulumi.StringMap{
/// 											"param": pulumi.String("value"),
/// 										},
/// 									},
/// 								},
/// 								&ces.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs{
/// 									ToolResponse: &ces.EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseArgs{
/// 										Id: pulumi.String("tool-call-id-3"),
/// 										Response: pulumi.StringMap{
/// 											"result": pulumi.String("success"),
/// 										},
/// 										Tool: pulumi.All(app.Project, app.AppId, tool.ToolId).ApplyT(func(_args []interface{}) (string, error) {
/// 											project := _args[0].(string)
/// 											appId := _args[1].(string)
/// 											toolId := _args[2].(string)
/// 											return fmt.Sprintf("projects/%v/locations/us/apps/%v/tools/%v", project, appId, toolId), nil
/// 										}).(pulumi.StringOutput),
/// 									},
/// 								},
/// 								&ces.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs{
/// 									AgentTransfer: &ces.EvaluationScenarioScenarioExpectationAgentResponseChunkAgentTransferArgs{
/// 										TargetAgent: pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 											project := _args[0].(string)
/// 											appId := _args[1].(string)
/// 											return fmt.Sprintf("projects/%v/locations/us/apps/%v/agents/dummy-agent", project, appId), nil
/// 										}).(pulumi.StringOutput),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "app" {
///   app_id       = "app-id-scenario"
///   location     = "us"
///   display_name = "my-app-scenario"
///   language_settings = {
///     default_language_code = "en-US"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_tool" "tool" {
///   location       = "us"
///   app            = gcp_ces_app.app.app_id
///   tool_id        = "tool-id-scenario"
///   execution_type = "SYNCHRONOUS"
///   python_function = {
///     name        = "example_function"
///     python_code = "def example_function() -> int: return 0"
///   }
/// }
/// resource "gcp_ces_evaluation" "ces_evaluation_scenario_full" {
///   evaluation_id = "eval-scenario-full"
///   display_name  = "my-evaluation-scenario-full"
///   location      = "us"
///   app           = gcp_ces_app.app.app_id
///   description   = "Full evaluation for testing scenario"
///   tags          = ["test", "full", "scenario"]
///   scenario = {
///     task                     = "Test task"
///     max_turns                = 5
///     rubrics                  = ["projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/rubrics/dummy-rubric"]
///     user_goal_behavior       = "USER_GOAL_SATISFIED"
///     task_completion_behavior = "TASK_SATISFIED"
///     variable_overrides = {
///       "key" = "value"
///     }
///     evaluation_expectations = ["projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/evaluationExpectations/dummy-exp"]
///     user_facts = [{
///       "name"  = "user_name"
///       "value" = "John Doe"
///     }]
///     scenario_expectations = [{
///       "toolExpectation" = {
///         "expectedToolCall" = {
///           "id"   = "tool-call-id"
///           "tool" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/tools/${gcp_ces_tool.tool.tool_id}"
///           "args" = {
///             "param" = "value"
///           }
///         }
///         "mockToolResponse" = {
///           "id" = "tool-call-id"
///           "response" = {
///             "result" = "mocked"
///           }
///           "tool" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/tools/${gcp_ces_tool.tool.tool_id}"
///         }
///       }
///       }, {
///       "agentResponse" = {
///         "role" = "agent"
///         "chunks" = [{
///           "text" = "Hello"
///           }, {
///           "updatedVariables" = {
///             "key" = "value"
///           }
///           }, {
///           "blob" = {
///             "mimeType" = "text/plain"
///             "data"     = "c29tZSBibG9iIGRhdGE="
///           }
///           }, {
///           "image" = {
///             "mimeType" = "image/png"
///             "data"     = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII="
///           }
///           }, {
///           "toolCall" = {
///             "id"   = "tool-call-id-3"
///             "tool" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/tools/${gcp_ces_tool.tool.tool_id}"
///             "args" = {
///               "param" = "value"
///             }
///           }
///           }, {
///           "toolResponse" = {
///             "id" = "tool-call-id-3"
///             "response" = {
///               "result" = "success"
///             }
///             "tool" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/tools/${gcp_ces_tool.tool.tool_id}"
///           }
///           }, {
///           "agentTransfer" = {
///             "targetAgent" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/agents/dummy-agent"
///           }
///         }]
///       }
///     }]
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
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Tool;
/// import com.pulumi.gcp.ces.ToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolPythonFunctionArgs;
/// import com.pulumi.gcp.ces.Evaluation;
/// import com.pulumi.gcp.ces.EvaluationArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioUserFactArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationToolExpectationArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkBlobArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkImageArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkToolCallArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkAgentTransferArgs;
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
///             .appId("app-id-scenario")
///             .location("us")
///             .displayName("my-app-scenario")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var tool = new Tool("tool", ToolArgs.builder()
///             .location("us")
///             .app(app.appId())
///             .toolId("tool-id-scenario")
///             .executionType("SYNCHRONOUS")
///             .pythonFunction(ToolPythonFunctionArgs.builder()
///                 .name("example_function")
///                 .pythonCode("def example_function() -> int: return 0")
///                 .build())
///             .build());
///
///         var cesEvaluationScenarioFull = new Evaluation("cesEvaluationScenarioFull", EvaluationArgs.builder()
///             .evaluationId("eval-scenario-full")
///             .displayName("my-evaluation-scenario-full")
///             .location("us")
///             .app(app.appId())
///             .description("Full evaluation for testing scenario")
///             .tags(
///                 "test",
///                 "full",
///                 "scenario")
///             .scenario(EvaluationScenarioArgs.builder()
///                 .task("Test task")
///                 .maxTurns(5)
///                 .rubrics(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                     var project = values.t1;
///                     var appId = values.t2;
///                     return String.format("projects/%s/locations/us/apps/%s/rubrics/dummy-rubric", project,appId);
///                 }))
///                 .userGoalBehavior("USER_GOAL_SATISFIED")
///                 .taskCompletionBehavior("TASK_SATISFIED")
///                 .variableOverrides(Map.of("key", "value"))
///                 .evaluationExpectations(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                     var project = values.t1;
///                     var appId = values.t2;
///                     return String.format("projects/%s/locations/us/apps/%s/evaluationExpectations/dummy-exp", project,appId);
///                 }))
///                 .userFacts(EvaluationScenarioUserFactArgs.builder()
///                     .name("user_name")
///                     .value("John Doe")
///                     .build())
///                 .scenarioExpectations(
///                     EvaluationScenarioScenarioExpectationArgs.builder()
///                         .toolExpectation(EvaluationScenarioScenarioExpectationToolExpectationArgs.builder()
///                             .expectedToolCall(EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallArgs.builder()
///                                 .id("tool-call-id")
///                                 .tool(Output.tuple(app.project(), app.appId(), tool.toolId()).applyValue(values -> {
///                                     var project = values.t1;
///                                     var appId = values.t2;
///                                     var toolId = values.t3;
///                                     return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                                 }))
///                                 .args(Map.of("param", "value"))
///                                 .build())
///                             .mockToolResponse(EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseArgs.builder()
///                                 .id("tool-call-id")
///                                 .response(Map.of("result", "mocked"))
///                                 .tool(Output.tuple(app.project(), app.appId(), tool.toolId()).applyValue(values -> {
///                                     var project = values.t1;
///                                     var appId = values.t2;
///                                     var toolId = values.t3;
///                                     return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                                 }))
///                                 .build())
///                             .build())
///                         .build(),
///                     EvaluationScenarioScenarioExpectationArgs.builder()
///                         .agentResponse(EvaluationScenarioScenarioExpectationAgentResponseArgs.builder()
///                             .role("agent")
///                             .chunks(
///                                 EvaluationScenarioScenarioExpectationAgentResponseChunkArgs.builder()
///                                     .text("Hello")
///                                     .build(),
///                                 EvaluationScenarioScenarioExpectationAgentResponseChunkArgs.builder()
///                                     .updatedVariables(Map.of("key", "value"))
///                                     .build(),
///                                 EvaluationScenarioScenarioExpectationAgentResponseChunkArgs.builder()
///                                     .blob(EvaluationScenarioScenarioExpectationAgentResponseChunkBlobArgs.builder()
///                                         .mimeType("text/plain")
///                                         .data("c29tZSBibG9iIGRhdGE=")
///                                         .build())
///                                     .build(),
///                                 EvaluationScenarioScenarioExpectationAgentResponseChunkArgs.builder()
///                                     .image(EvaluationScenarioScenarioExpectationAgentResponseChunkImageArgs.builder()
///                                         .mimeType("image/png")
///                                         .data("iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=")
///                                         .build())
///                                     .build(),
///                                 EvaluationScenarioScenarioExpectationAgentResponseChunkArgs.builder()
///                                     .toolCall(EvaluationScenarioScenarioExpectationAgentResponseChunkToolCallArgs.builder()
///                                         .id("tool-call-id-3")
///                                         .tool(Output.tuple(app.project(), app.appId(), tool.toolId()).applyValue(values -> {
///                                             var project = values.t1;
///                                             var appId = values.t2;
///                                             var toolId = values.t3;
///                                             return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                                         }))
///                                         .args(Map.of("param", "value"))
///                                         .build())
///                                     .build(),
///                                 EvaluationScenarioScenarioExpectationAgentResponseChunkArgs.builder()
///                                     .toolResponse(EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseArgs.builder()
///                                         .id("tool-call-id-3")
///                                         .response(Map.of("result", "success"))
///                                         .tool(Output.tuple(app.project(), app.appId(), tool.toolId()).applyValue(values -> {
///                                             var project = values.t1;
///                                             var appId = values.t2;
///                                             var toolId = values.t3;
///                                             return String.format("projects/%s/locations/us/apps/%s/tools/%s", project,appId,toolId);
///                                         }))
///                                         .build())
///                                     .build(),
///                                 EvaluationScenarioScenarioExpectationAgentResponseChunkArgs.builder()
///                                     .agentTransfer(EvaluationScenarioScenarioExpectationAgentResponseChunkAgentTransferArgs.builder()
///                                         .targetAgent(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                                             var project = values.t1;
///                                             var appId = values.t2;
///                                             return String.format("projects/%s/locations/us/apps/%s/agents/dummy-agent", project,appId);
///                                         }))
///                                         .build())
///                                     .build())
///                             .build())
///                         .build())
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
///       appId: app-id-scenario
///       location: us
///       displayName: my-app-scenario
///       languageSettings:
///         defaultLanguageCode: en-US
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   tool:
///     type: gcp:ces:Tool
///     properties:
///       location: us
///       app: ${app.appId}
///       toolId: tool-id-scenario
///       executionType: SYNCHRONOUS
///       pythonFunction:
///         name: example_function
///         pythonCode: 'def example_function() -> int: return 0'
///   cesEvaluationScenarioFull:
///     type: gcp:ces:Evaluation
///     name: ces_evaluation_scenario_full
///     properties:
///       evaluationId: eval-scenario-full
///       displayName: my-evaluation-scenario-full
///       location: us
///       app: ${app.appId}
///       description: Full evaluation for testing scenario
///       tags:
///         - test
///         - full
///         - scenario
///       scenario:
///         task: Test task
///         maxTurns: 5
///         rubrics:
///           - projects/${app.project}/locations/us/apps/${app.appId}/rubrics/dummy-rubric
///         userGoalBehavior: USER_GOAL_SATISFIED
///         taskCompletionBehavior: TASK_SATISFIED
///         variableOverrides:
///           key: value
///         evaluationExpectations:
///           - projects/${app.project}/locations/us/apps/${app.appId}/evaluationExpectations/dummy-exp
///         userFacts:
///           - name: user_name
///             value: John Doe
///         scenarioExpectations:
///           - toolExpectation:
///               expectedToolCall:
///                 id: tool-call-id
///                 tool: projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}
///                 args:
///                   param: value
///               mockToolResponse:
///                 id: tool-call-id
///                 response:
///                   result: mocked
///                 tool: projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}
///           - agentResponse:
///               role: agent
///               chunks:
///                 - text: Hello
///                 - updatedVariables:
///                     key: value
///                 - blob:
///                     mimeType: text/plain
///                     data: c29tZSBibG9iIGRhdGE=
///                 - image:
///                     mimeType: image/png
///                     data: iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=
///                 - toolCall:
///                     id: tool-call-id-3
///                     tool: projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}
///                     args:
///                       param: value
///                 - toolResponse:
///                     id: tool-call-id-3
///                     response:
///                       result: success
///                     tool: projects/${app.project}/locations/us/apps/${app.appId}/tools/${tool.toolId}
///                 - agentTransfer:
///                     targetAgent: projects/${app.project}/locations/us/apps/${app.appId}/agents/dummy-agent
/// ```
///
/// ### Ces Evaluation Scenario Toolset
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const app = new gcp.ces.App("app", {
///     appId: "app-id-scenario-ts",
///     location: "us",
///     displayName: "my-app-scenario-ts",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const toolset = new gcp.ces.Toolset("toolset", {
///     toolsetId: "ts-scen",
///     location: "us",
///     app: app.appId,
///     displayName: "Basic toolset display name",
///     description: "Test description",
///     executionType: "SYNCHRONOUS",
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
///     },
/// });
/// const cesEvaluationScenarioToolset = new gcp.ces.Evaluation("ces_evaluation_scenario_toolset", {
///     evaluationId: "eval-scen-ts",
///     displayName: "my-evaluation-scenario-toolset",
///     location: "us",
///     app: app.appId,
///     description: "Full evaluation for testing scenario with toolset",
///     tags: [
///         "test",
///         "full",
///         "scenario",
///         "toolset",
///     ],
///     scenario: {
///         task: "Test task",
///         maxTurns: 5,
///         rubrics: [pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/rubrics/dummy-rubric`],
///         userGoalBehavior: "USER_GOAL_SATISFIED",
///         taskCompletionBehavior: "TASK_SATISFIED",
///         variableOverrides: {
///             key: "value",
///         },
///         evaluationExpectations: [pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/evaluationExpectations/dummy-exp`],
///         userFacts: [{
///             name: "user_name",
///             value: "John Doe",
///         }],
///         scenarioExpectations: [
///             {
///                 toolExpectation: {
///                     expectedToolCall: {
///                         id: "tool-call-id",
///                         toolsetTool: {
///                             toolset: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/toolsets/${toolset.toolsetId}`,
///                             toolId: "dummy-tool",
///                         },
///                         args: {
///                             param: "value",
///                         },
///                     },
///                     mockToolResponse: {
///                         id: "tool-call-id",
///                         response: {
///                             result: "mocked",
///                         },
///                         toolsetTool: {
///                             toolset: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/toolsets/${toolset.toolsetId}`,
///                             toolId: "dummy-tool",
///                         },
///                     },
///                 },
///             },
///             {
///                 agentResponse: {
///                     role: "agent",
///                     chunks: [
///                         {
///                             text: "Hello",
///                         },
///                         {
///                             toolCall: {
///                                 id: "tool-call-id-3",
///                                 toolsetTool: {
///                                     toolset: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/toolsets/${toolset.toolsetId}`,
///                                     toolId: "dummy-tool",
///                                 },
///                                 args: {
///                                     param: "value",
///                                 },
///                             },
///                         },
///                         {
///                             toolResponse: {
///                                 id: "tool-call-id-3",
///                                 response: {
///                                     result: "success",
///                                 },
///                                 toolsetTool: {
///                                     toolset: pulumi.interpolate`projects/${app.project}/locations/us/apps/${app.appId}/toolsets/${toolset.toolsetId}`,
///                                     toolId: "dummy-tool",
///                                 },
///                             },
///                         },
///                     ],
///                 },
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// app = gcp.ces.App("app",
///     app_id="app-id-scenario-ts",
///     location="us",
///     display_name="my-app-scenario-ts",
///     language_settings={
///         "default_language_code": "en-US",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// toolset = gcp.ces.Toolset("toolset",
///     toolset_id="ts-scen",
///     location="us",
///     app=app.app_id,
///     display_name="Basic toolset display name",
///     description="Test description",
///     execution_type="SYNCHRONOUS",
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
///     })
/// ces_evaluation_scenario_toolset = gcp.ces.Evaluation("ces_evaluation_scenario_toolset",
///     evaluation_id="eval-scen-ts",
///     display_name="my-evaluation-scenario-toolset",
///     location="us",
///     app=app.app_id,
///     description="Full evaluation for testing scenario with toolset",
///     tags=[
///         "test",
///         "full",
///         "scenario",
///         "toolset",
///     ],
///     scenario={
///         "task": "Test task",
///         "max_turns": 5,
///         "rubrics": [pulumi.Output.all(
///             project=app.project,
///             app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/rubrics/dummy-rubric")
/// ],
///         "user_goal_behavior": "USER_GOAL_SATISFIED",
///         "task_completion_behavior": "TASK_SATISFIED",
///         "variable_overrides": {
///             "key": "value",
///         },
///         "evaluation_expectations": [pulumi.Output.all(
///             project=app.project,
///             app_id=app.app_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/evaluationExpectations/dummy-exp")
/// ],
///         "user_facts": [{
///             "name": "user_name",
///             "value": "John Doe",
///         }],
///         "scenario_expectations": [
///             {
///                 "tool_expectation": {
///                     "expected_tool_call": {
///                         "id": "tool-call-id",
///                         "toolset_tool": {
///                             "toolset": pulumi.Output.all(
///                                 project=app.project,
///                                 app_id=app.app_id,
///                                 toolset_id=toolset.toolset_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/toolsets/{resolved_outputs['toolset_id']}")
/// ,
///                             "tool_id": "dummy-tool",
///                         },
///                         "args": {
///                             "param": "value",
///                         },
///                     },
///                     "mock_tool_response": {
///                         "id": "tool-call-id",
///                         "response": {
///                             "result": "mocked",
///                         },
///                         "toolset_tool": {
///                             "toolset": pulumi.Output.all(
///                                 project=app.project,
///                                 app_id=app.app_id,
///                                 toolset_id=toolset.toolset_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/toolsets/{resolved_outputs['toolset_id']}")
/// ,
///                             "tool_id": "dummy-tool",
///                         },
///                     },
///                 },
///             },
///             {
///                 "agent_response": {
///                     "role": "agent",
///                     "chunks": [
///                         {
///                             "text": "Hello",
///                         },
///                         {
///                             "tool_call": {
///                                 "id": "tool-call-id-3",
///                                 "toolset_tool": {
///                                     "toolset": pulumi.Output.all(
///                                         project=app.project,
///                                         app_id=app.app_id,
///                                         toolset_id=toolset.toolset_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/toolsets/{resolved_outputs['toolset_id']}")
/// ,
///                                     "tool_id": "dummy-tool",
///                                 },
///                                 "args": {
///                                     "param": "value",
///                                 },
///                             },
///                         },
///                         {
///                             "tool_response": {
///                                 "id": "tool-call-id-3",
///                                 "response": {
///                                     "result": "success",
///                                 },
///                                 "toolset_tool": {
///                                     "toolset": pulumi.Output.all(
///                                         project=app.project,
///                                         app_id=app.app_id,
///                                         toolset_id=toolset.toolset_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/toolsets/{resolved_outputs['toolset_id']}")
/// ,
///                                     "tool_id": "dummy-tool",
///                                 },
///                             },
///                         },
///                     ],
///                 },
///             },
///         ],
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
///     var app = new Gcp.Ces.App("app", new()
///     {
///         AppId = "app-id-scenario-ts",
///         Location = "us",
///         DisplayName = "my-app-scenario-ts",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var toolset = new Gcp.Ces.Toolset("toolset", new()
///     {
///         ToolsetId = "ts-scen",
///         Location = "us",
///         App = app.AppId,
///         DisplayName = "Basic toolset display name",
///         Description = "Test description",
///         ExecutionType = "SYNCHRONOUS",
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
///         },
///     });
///
///     var cesEvaluationScenarioToolset = new Gcp.Ces.Evaluation("ces_evaluation_scenario_toolset", new()
///     {
///         EvaluationId = "eval-scen-ts",
///         DisplayName = "my-evaluation-scenario-toolset",
///         Location = "us",
///         App = app.AppId,
///         Description = "Full evaluation for testing scenario with toolset",
///         Tags = new[]
///         {
///             "test",
///             "full",
///             "scenario",
///             "toolset",
///         },
///         Scenario = new Gcp.Ces.Inputs.EvaluationScenarioArgs
///         {
///             Task = "Test task",
///             MaxTurns = 5,
///             Rubrics = new[]
///             {
///                 Output.Tuple(app.Project, app.AppId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var appId = values.Item2;
///                     return $"projects/{project}/locations/us/apps/{appId}/rubrics/dummy-rubric";
///                 }),
///             },
///             UserGoalBehavior = "USER_GOAL_SATISFIED",
///             TaskCompletionBehavior = "TASK_SATISFIED",
///             VariableOverrides =
///             {
///                 { "key", "value" },
///             },
///             EvaluationExpectations = new[]
///             {
///                 Output.Tuple(app.Project, app.AppId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var appId = values.Item2;
///                     return $"projects/{project}/locations/us/apps/{appId}/evaluationExpectations/dummy-exp";
///                 }),
///             },
///             UserFacts = new[]
///             {
///                 new Gcp.Ces.Inputs.EvaluationScenarioUserFactArgs
///                 {
///                     Name = "user_name",
///                     Value = "John Doe",
///                 },
///             },
///             ScenarioExpectations = new[]
///             {
///                 new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationArgs
///                 {
///                     ToolExpectation = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationToolExpectationArgs
///                     {
///                         ExpectedToolCall = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallArgs
///                         {
///                             Id = "tool-call-id",
///                             ToolsetTool = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallToolsetToolArgs
///                             {
///                                 Toolset = Output.Tuple(app.Project, app.AppId, toolset.ToolsetId).Apply(values =>
///                                 {
///                                     var project = values.Item1;
///                                     var appId = values.Item2;
///                                     var toolsetId = values.Item3;
///                                     return $"projects/{project}/locations/us/apps/{appId}/toolsets/{toolsetId}";
///                                 }),
///                                 ToolId = "dummy-tool",
///                             },
///                             Args =
///                             {
///                                 { "param", "value" },
///                             },
///                         },
///                         MockToolResponse = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseArgs
///                         {
///                             Id = "tool-call-id",
///                             Response =
///                             {
///                                 { "result", "mocked" },
///                             },
///                             ToolsetTool = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseToolsetToolArgs
///                             {
///                                 Toolset = Output.Tuple(app.Project, app.AppId, toolset.ToolsetId).Apply(values =>
///                                 {
///                                     var project = values.Item1;
///                                     var appId = values.Item2;
///                                     var toolsetId = values.Item3;
///                                     return $"projects/{project}/locations/us/apps/{appId}/toolsets/{toolsetId}";
///                                 }),
///                                 ToolId = "dummy-tool",
///                             },
///                         },
///                     },
///                 },
///                 new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationArgs
///                 {
///                     AgentResponse = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseArgs
///                     {
///                         Role = "agent",
///                         Chunks = new[]
///                         {
///                             new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs
///                             {
///                                 Text = "Hello",
///                             },
///                             new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs
///                             {
///                                 ToolCall = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkToolCallArgs
///                                 {
///                                     Id = "tool-call-id-3",
///                                     ToolsetTool = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkToolCallToolsetToolArgs
///                                     {
///                                         Toolset = Output.Tuple(app.Project, app.AppId, toolset.ToolsetId).Apply(values =>
///                                         {
///                                             var project = values.Item1;
///                                             var appId = values.Item2;
///                                             var toolsetId = values.Item3;
///                                             return $"projects/{project}/locations/us/apps/{appId}/toolsets/{toolsetId}";
///                                         }),
///                                         ToolId = "dummy-tool",
///                                     },
///                                     Args =
///                                     {
///                                         { "param", "value" },
///                                     },
///                                 },
///                             },
///                             new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs
///                             {
///                                 ToolResponse = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseArgs
///                                 {
///                                     Id = "tool-call-id-3",
///                                     Response =
///                                     {
///                                         { "result", "success" },
///                                     },
///                                     ToolsetTool = new Gcp.Ces.Inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseToolsetToolArgs
///                                     {
///                                         Toolset = Output.Tuple(app.Project, app.AppId, toolset.ToolsetId).Apply(values =>
///                                         {
///                                             var project = values.Item1;
///                                             var appId = values.Item2;
///                                             var toolsetId = values.Item3;
///                                             return $"projects/{project}/locations/us/apps/{appId}/toolsets/{toolsetId}";
///                                         }),
///                                         ToolId = "dummy-tool",
///                                     },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		app, err := ces.NewApp(ctx, "app", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id-scenario-ts"),
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-app-scenario-ts"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		toolset, err := ces.NewToolset(ctx, "toolset", &ces.ToolsetArgs{
/// 			ToolsetId:     pulumi.String("ts-scen"),
/// 			Location:      pulumi.String("us"),
/// 			App:           app.AppId,
/// 			DisplayName:   pulumi.String("Basic toolset display name"),
/// 			Description:   pulumi.String("Test description"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
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
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewEvaluation(ctx, "ces_evaluation_scenario_toolset", &ces.EvaluationArgs{
/// 			EvaluationId: pulumi.String("eval-scen-ts"),
/// 			DisplayName:  pulumi.String("my-evaluation-scenario-toolset"),
/// 			Location:     pulumi.String("us"),
/// 			App:          app.AppId,
/// 			Description:  pulumi.String("Full evaluation for testing scenario with toolset"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("test"),
/// 				pulumi.String("full"),
/// 				pulumi.String("scenario"),
/// 				pulumi.String("toolset"),
/// 			},
/// 			Scenario: &ces.EvaluationScenarioArgs{
/// 				Task:     pulumi.String("Test task"),
/// 				MaxTurns: pulumi.Int(5),
/// 				Rubrics: pulumi.StringArray{
/// 					pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						appId := _args[1].(string)
/// 						return fmt.Sprintf("projects/%v/locations/us/apps/%v/rubrics/dummy-rubric", project, appId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				UserGoalBehavior:       pulumi.String("USER_GOAL_SATISFIED"),
/// 				TaskCompletionBehavior: pulumi.String("TASK_SATISFIED"),
/// 				VariableOverrides: pulumi.StringMap{
/// 					"key": pulumi.String("value"),
/// 				},
/// 				EvaluationExpectations: pulumi.StringArray{
/// 					pulumi.All(app.Project, app.AppId).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						appId := _args[1].(string)
/// 						return fmt.Sprintf("projects/%v/locations/us/apps/%v/evaluationExpectations/dummy-exp", project, appId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				UserFacts: ces.EvaluationScenarioUserFactArray{
/// 					&ces.EvaluationScenarioUserFactArgs{
/// 						Name:  pulumi.String("user_name"),
/// 						Value: pulumi.String("John Doe"),
/// 					},
/// 				},
/// 				ScenarioExpectations: ces.EvaluationScenarioScenarioExpectationArray{
/// 					&ces.EvaluationScenarioScenarioExpectationArgs{
/// 						ToolExpectation: &ces.EvaluationScenarioScenarioExpectationToolExpectationArgs{
/// 							ExpectedToolCall: &ces.EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallArgs{
/// 								Id: pulumi.String("tool-call-id"),
/// 								ToolsetTool: &ces.EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallToolsetToolArgs{
/// 									Toolset: pulumi.All(app.Project, app.AppId, toolset.ToolsetId).ApplyT(func(_args []interface{}) (string, error) {
/// 										project := _args[0].(string)
/// 										appId := _args[1].(string)
/// 										toolsetId := _args[2].(string)
/// 										return fmt.Sprintf("projects/%v/locations/us/apps/%v/toolsets/%v", project, appId, toolsetId), nil
/// 									}).(pulumi.StringOutput),
/// 									ToolId: pulumi.String("dummy-tool"),
/// 								},
/// 								Args: pulumi.StringMap{
/// 									"param": pulumi.String("value"),
/// 								},
/// 							},
/// 							MockToolResponse: &ces.EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseArgs{
/// 								Id: pulumi.String("tool-call-id"),
/// 								Response: pulumi.StringMap{
/// 									"result": pulumi.String("mocked"),
/// 								},
/// 								ToolsetTool: &ces.EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseToolsetToolArgs{
/// 									Toolset: pulumi.All(app.Project, app.AppId, toolset.ToolsetId).ApplyT(func(_args []interface{}) (string, error) {
/// 										project := _args[0].(string)
/// 										appId := _args[1].(string)
/// 										toolsetId := _args[2].(string)
/// 										return fmt.Sprintf("projects/%v/locations/us/apps/%v/toolsets/%v", project, appId, toolsetId), nil
/// 									}).(pulumi.StringOutput),
/// 									ToolId: pulumi.String("dummy-tool"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&ces.EvaluationScenarioScenarioExpectationArgs{
/// 						AgentResponse: &ces.EvaluationScenarioScenarioExpectationAgentResponseArgs{
/// 							Role: pulumi.String("agent"),
/// 							Chunks: ces.EvaluationScenarioScenarioExpectationAgentResponseChunkArray{
/// 								&ces.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs{
/// 									Text: pulumi.String("Hello"),
/// 								},
/// 								&ces.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs{
/// 									ToolCall: &ces.EvaluationScenarioScenarioExpectationAgentResponseChunkToolCallArgs{
/// 										Id: pulumi.String("tool-call-id-3"),
/// 										ToolsetTool: &ces.EvaluationScenarioScenarioExpectationAgentResponseChunkToolCallToolsetToolArgs{
/// 											Toolset: pulumi.All(app.Project, app.AppId, toolset.ToolsetId).ApplyT(func(_args []interface{}) (string, error) {
/// 												project := _args[0].(string)
/// 												appId := _args[1].(string)
/// 												toolsetId := _args[2].(string)
/// 												return fmt.Sprintf("projects/%v/locations/us/apps/%v/toolsets/%v", project, appId, toolsetId), nil
/// 											}).(pulumi.StringOutput),
/// 											ToolId: pulumi.String("dummy-tool"),
/// 										},
/// 										Args: pulumi.StringMap{
/// 											"param": pulumi.String("value"),
/// 										},
/// 									},
/// 								},
/// 								&ces.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs{
/// 									ToolResponse: &ces.EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseArgs{
/// 										Id: pulumi.String("tool-call-id-3"),
/// 										Response: pulumi.StringMap{
/// 											"result": pulumi.String("success"),
/// 										},
/// 										ToolsetTool: &ces.EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseToolsetToolArgs{
/// 											Toolset: pulumi.All(app.Project, app.AppId, toolset.ToolsetId).ApplyT(func(_args []interface{}) (string, error) {
/// 												project := _args[0].(string)
/// 												appId := _args[1].(string)
/// 												toolsetId := _args[2].(string)
/// 												return fmt.Sprintf("projects/%v/locations/us/apps/%v/toolsets/%v", project, appId, toolsetId), nil
/// 											}).(pulumi.StringOutput),
/// 											ToolId: pulumi.String("dummy-tool"),
/// 										},
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "app" {
///   app_id       = "app-id-scenario-ts"
///   location     = "us"
///   display_name = "my-app-scenario-ts"
///   language_settings = {
///     default_language_code = "en-US"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_toolset" "toolset" {
///   toolset_id     = "ts-scen"
///   location       = "us"
///   app            = gcp_ces_app.app.app_id
///   display_name   = "Basic toolset display name"
///   description    = "Test description"
///   execution_type = "SYNCHRONOUS"
///   open_api_toolset = {
///     open_api_schema       = "openapi: 3.0.0\ninfo:\n  title: My Sample API\n  version: 1.0.0\n  description: A simple API example\nservers:\n  - url: https://api.example.com/v1\npaths: {}\n"
///     ignore_unknown_fields = false
///   }
/// }
/// resource "gcp_ces_evaluation" "ces_evaluation_scenario_toolset" {
///   evaluation_id = "eval-scen-ts"
///   display_name  = "my-evaluation-scenario-toolset"
///   location      = "us"
///   app           = gcp_ces_app.app.app_id
///   description   = "Full evaluation for testing scenario with toolset"
///   tags          = ["test", "full", "scenario", "toolset"]
///   scenario = {
///     task                     = "Test task"
///     max_turns                = 5
///     rubrics                  = ["projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/rubrics/dummy-rubric"]
///     user_goal_behavior       = "USER_GOAL_SATISFIED"
///     task_completion_behavior = "TASK_SATISFIED"
///     variable_overrides = {
///       "key" = "value"
///     }
///     evaluation_expectations = ["projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/evaluationExpectations/dummy-exp"]
///     user_facts = [{
///       "name"  = "user_name"
///       "value" = "John Doe"
///     }]
///     scenario_expectations = [{
///       "toolExpectation" = {
///         "expectedToolCall" = {
///           "id" = "tool-call-id"
///           "toolsetTool" = {
///             "toolset" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/toolsets/${gcp_ces_toolset.toolset.toolset_id}"
///             "toolId"  = "dummy-tool"
///           }
///           "args" = {
///             "param" = "value"
///           }
///         }
///         "mockToolResponse" = {
///           "id" = "tool-call-id"
///           "response" = {
///             "result" = "mocked"
///           }
///           "toolsetTool" = {
///             "toolset" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/toolsets/${gcp_ces_toolset.toolset.toolset_id}"
///             "toolId"  = "dummy-tool"
///           }
///         }
///       }
///       }, {
///       "agentResponse" = {
///         "role" = "agent"
///         "chunks" = [{
///           "text" = "Hello"
///           }, {
///           "toolCall" = {
///             "id" = "tool-call-id-3"
///             "toolsetTool" = {
///               "toolset" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/toolsets/${gcp_ces_toolset.toolset.toolset_id}"
///               "toolId"  = "dummy-tool"
///             }
///             "args" = {
///               "param" = "value"
///             }
///           }
///           }, {
///           "toolResponse" = {
///             "id" = "tool-call-id-3"
///             "response" = {
///               "result" = "success"
///             }
///             "toolsetTool" = {
///               "toolset" ="projects/${gcp_ces_app.app.project}/locations/us/apps/${gcp_ces_app.app.app_id}/toolsets/${gcp_ces_toolset.toolset.toolset_id}"
///               "toolId"  = "dummy-tool"
///             }
///           }
///         }]
///       }
///     }]
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
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetArgs;
/// import com.pulumi.gcp.ces.Evaluation;
/// import com.pulumi.gcp.ces.EvaluationArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioUserFactArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationToolExpectationArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallToolsetToolArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseToolsetToolArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkToolCallArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkToolCallToolsetToolArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseArgs;
/// import com.pulumi.gcp.ces.inputs.EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseToolsetToolArgs;
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
///             .appId("app-id-scenario-ts")
///             .location("us")
///             .displayName("my-app-scenario-ts")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var toolset = new Toolset("toolset", ToolsetArgs.builder()
///             .toolsetId("ts-scen")
///             .location("us")
///             .app(app.appId())
///             .displayName("Basic toolset display name")
///             .description("Test description")
///             .executionType("SYNCHRONOUS")
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
///                 .build())
///             .build());
///
///         var cesEvaluationScenarioToolset = new Evaluation("cesEvaluationScenarioToolset", EvaluationArgs.builder()
///             .evaluationId("eval-scen-ts")
///             .displayName("my-evaluation-scenario-toolset")
///             .location("us")
///             .app(app.appId())
///             .description("Full evaluation for testing scenario with toolset")
///             .tags(
///                 "test",
///                 "full",
///                 "scenario",
///                 "toolset")
///             .scenario(EvaluationScenarioArgs.builder()
///                 .task("Test task")
///                 .maxTurns(5)
///                 .rubrics(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                     var project = values.t1;
///                     var appId = values.t2;
///                     return String.format("projects/%s/locations/us/apps/%s/rubrics/dummy-rubric", project,appId);
///                 }))
///                 .userGoalBehavior("USER_GOAL_SATISFIED")
///                 .taskCompletionBehavior("TASK_SATISFIED")
///                 .variableOverrides(Map.of("key", "value"))
///                 .evaluationExpectations(Output.tuple(app.project(), app.appId()).applyValue(values -> {
///                     var project = values.t1;
///                     var appId = values.t2;
///                     return String.format("projects/%s/locations/us/apps/%s/evaluationExpectations/dummy-exp", project,appId);
///                 }))
///                 .userFacts(EvaluationScenarioUserFactArgs.builder()
///                     .name("user_name")
///                     .value("John Doe")
///                     .build())
///                 .scenarioExpectations(
///                     EvaluationScenarioScenarioExpectationArgs.builder()
///                         .toolExpectation(EvaluationScenarioScenarioExpectationToolExpectationArgs.builder()
///                             .expectedToolCall(EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallArgs.builder()
///                                 .id("tool-call-id")
///                                 .toolsetTool(EvaluationScenarioScenarioExpectationToolExpectationExpectedToolCallToolsetToolArgs.builder()
///                                     .toolset(Output.tuple(app.project(), app.appId(), toolset.toolsetId()).applyValue(values -> {
///                                         var project = values.t1;
///                                         var appId = values.t2;
///                                         var toolsetId = values.t3;
///                                         return String.format("projects/%s/locations/us/apps/%s/toolsets/%s", project,appId,toolsetId);
///                                     }))
///                                     .toolId("dummy-tool")
///                                     .build())
///                                 .args(Map.of("param", "value"))
///                                 .build())
///                             .mockToolResponse(EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseArgs.builder()
///                                 .id("tool-call-id")
///                                 .response(Map.of("result", "mocked"))
///                                 .toolsetTool(EvaluationScenarioScenarioExpectationToolExpectationMockToolResponseToolsetToolArgs.builder()
///                                     .toolset(Output.tuple(app.project(), app.appId(), toolset.toolsetId()).applyValue(values -> {
///                                         var project = values.t1;
///                                         var appId = values.t2;
///                                         var toolsetId = values.t3;
///                                         return String.format("projects/%s/locations/us/apps/%s/toolsets/%s", project,appId,toolsetId);
///                                     }))
///                                     .toolId("dummy-tool")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build(),
///                     EvaluationScenarioScenarioExpectationArgs.builder()
///                         .agentResponse(EvaluationScenarioScenarioExpectationAgentResponseArgs.builder()
///                             .role("agent")
///                             .chunks(
///                                 EvaluationScenarioScenarioExpectationAgentResponseChunkArgs.builder()
///                                     .text("Hello")
///                                     .build(),
///                                 EvaluationScenarioScenarioExpectationAgentResponseChunkArgs.builder()
///                                     .toolCall(EvaluationScenarioScenarioExpectationAgentResponseChunkToolCallArgs.builder()
///                                         .id("tool-call-id-3")
///                                         .toolsetTool(EvaluationScenarioScenarioExpectationAgentResponseChunkToolCallToolsetToolArgs.builder()
///                                             .toolset(Output.tuple(app.project(), app.appId(), toolset.toolsetId()).applyValue(values -> {
///                                                 var project = values.t1;
///                                                 var appId = values.t2;
///                                                 var toolsetId = values.t3;
///                                                 return String.format("projects/%s/locations/us/apps/%s/toolsets/%s", project,appId,toolsetId);
///                                             }))
///                                             .toolId("dummy-tool")
///                                             .build())
///                                         .args(Map.of("param", "value"))
///                                         .build())
///                                     .build(),
///                                 EvaluationScenarioScenarioExpectationAgentResponseChunkArgs.builder()
///                                     .toolResponse(EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseArgs.builder()
///                                         .id("tool-call-id-3")
///                                         .response(Map.of("result", "success"))
///                                         .toolsetTool(EvaluationScenarioScenarioExpectationAgentResponseChunkToolResponseToolsetToolArgs.builder()
///                                             .toolset(Output.tuple(app.project(), app.appId(), toolset.toolsetId()).applyValue(values -> {
///                                                 var project = values.t1;
///                                                 var appId = values.t2;
///                                                 var toolsetId = values.t3;
///                                                 return String.format("projects/%s/locations/us/apps/%s/toolsets/%s", project,appId,toolsetId);
///                                             }))
///                                             .toolId("dummy-tool")
///                                             .build())
///                                         .build())
///                                     .build())
///                             .build())
///                         .build())
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
///       appId: app-id-scenario-ts
///       location: us
///       displayName: my-app-scenario-ts
///       languageSettings:
///         defaultLanguageCode: en-US
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   toolset:
///     type: gcp:ces:Toolset
///     properties:
///       toolsetId: ts-scen
///       location: us
///       app: ${app.appId}
///       displayName: Basic toolset display name
///       description: Test description
///       executionType: SYNCHRONOUS
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
///   cesEvaluationScenarioToolset:
///     type: gcp:ces:Evaluation
///     name: ces_evaluation_scenario_toolset
///     properties:
///       evaluationId: eval-scen-ts
///       displayName: my-evaluation-scenario-toolset
///       location: us
///       app: ${app.appId}
///       description: Full evaluation for testing scenario with toolset
///       tags:
///         - test
///         - full
///         - scenario
///         - toolset
///       scenario:
///         task: Test task
///         maxTurns: 5
///         rubrics:
///           - projects/${app.project}/locations/us/apps/${app.appId}/rubrics/dummy-rubric
///         userGoalBehavior: USER_GOAL_SATISFIED
///         taskCompletionBehavior: TASK_SATISFIED
///         variableOverrides:
///           key: value
///         evaluationExpectations:
///           - projects/${app.project}/locations/us/apps/${app.appId}/evaluationExpectations/dummy-exp
///         userFacts:
///           - name: user_name
///             value: John Doe
///         scenarioExpectations:
///           - toolExpectation:
///               expectedToolCall:
///                 id: tool-call-id
///                 toolsetTool:
///                   toolset: projects/${app.project}/locations/us/apps/${app.appId}/toolsets/${toolset.toolsetId}
///                   toolId: dummy-tool
///                 args:
///                   param: value
///               mockToolResponse:
///                 id: tool-call-id
///                 response:
///                   result: mocked
///                 toolsetTool:
///                   toolset: projects/${app.project}/locations/us/apps/${app.appId}/toolsets/${toolset.toolsetId}
///                   toolId: dummy-tool
///           - agentResponse:
///               role: agent
///               chunks:
///                 - text: Hello
///                 - toolCall:
///                     id: tool-call-id-3
///                     toolsetTool:
///                       toolset: projects/${app.project}/locations/us/apps/${app.appId}/toolsets/${toolset.toolsetId}
///                       toolId: dummy-tool
///                     args:
///                       param: value
///                 - toolResponse:
///                     id: tool-call-id-3
///                     response:
///                       result: success
///                     toolsetTool:
///                       toolset: projects/${app.project}/locations/us/apps/${app.appId}/toolsets/${toolset.toolsetId}
///                       toolId: dummy-tool
/// ```
///
///
/// ## Import
///
/// Evaluation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/evaluations/{{evaluation_id}}`
/// * `{{project}}/{{location}}/{{app}}/{{evaluation_id}}`
/// * `{{location}}/{{app}}/{{evaluation_id}}`
///
///
/// When using the `pulumi import` command, Evaluation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/evaluation:Evaluation default projects/{{project}}/locations/{{location}}/apps/{{app}}/evaluations/{{evaluation_id}}
/// $ pulumi import gcp:ces/evaluation:Evaluation default {{project}}/{{location}}/{{app}}/{{evaluation_id}}
/// $ pulumi import gcp:ces/evaluation:Evaluation default {{location}}/{{app}}/{{evaluation_id}}
/// ```
class Evaluation extends pulumi.CustomResource {
  /// (Required)
  late final pulumi.Output<String> app;
  /// Timestamp when the evaluation was created.
  late final pulumi.Output<String> createTime;
  /// The user who created the evaluation.
  late final pulumi.Output<String> createdBy;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User-defined description of the evaluation.
  late final pulumi.Output<String?> description;
  /// User-defined display name of the evaluation.
  late final pulumi.Output<String> displayName;
  /// Etag used to ensure the object hasn't changed during a read-modify-write operation.
  late final pulumi.Output<String> etag;
  /// List of evaluation datasets the evaluation belongs to.
  late final pulumi.Output<List<String>> evaluationDatasets;
  /// The ID to use for the evaluation, which will become the final component of
  /// the evaluation's resource name. If not provided, a unique ID will be
  /// automatically assigned for the evaluation.
  late final pulumi.Output<String> evaluationId;
  /// The evaluation runs for this evaluation.
  late final pulumi.Output<List<String>> evaluationRuns;
  /// Golden input.
  /// Structure is documented below.
  late final pulumi.Output<EvaluationGolden?> golden;
  /// Whether the evaluation is invalid.
  late final pulumi.Output<bool> invalid;
  /// The user who last updated the evaluation.
  late final pulumi.Output<String> lastUpdatedBy;
  /// (Required)
  late final pulumi.Output<String> location;
  /// Identifier. The unique identifier of the evaluation.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/evaluations/{evaluation}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Scenario input.
  /// Structure is documented below.
  late final pulumi.Output<EvaluationScenario?> scenario;
  /// User defined tags to categorize the evaluation.
  late final pulumi.Output<List<String>?> tags;
  /// Timestamp when the evaluation was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Evaluation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Evaluation]. {@macro pulumi_ces_evaluation_evaluation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Evaluation(
    String name, {
    EvaluationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/evaluation:Evaluation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    app = registerOutput<String>('app');
    createTime = registerOutput<String>('createTime');
    createdBy = registerOutput<String>('createdBy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    evaluationDatasets = registerOutput<List<String>>('evaluationDatasets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    evaluationId = registerOutput<String>('evaluationId');
    evaluationRuns = registerOutput<List<String>>('evaluationRuns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    golden = registerOutput<EvaluationGolden?>('golden', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationGolden.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    invalid = registerOutput<bool>('invalid');
    lastUpdatedBy = registerOutput<String>('lastUpdatedBy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    scenario = registerOutput<EvaluationScenario?>('scenario', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationScenario.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Evaluation] resource's state with the given [name] and [id].
  static Evaluation get(
    String name,
    pulumi.Input<String> id, {
    EvaluationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Evaluation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Evaluation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/evaluation:Evaluation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    app = registerOutput<String>('app');
    createTime = registerOutput<String>('createTime');
    createdBy = registerOutput<String>('createdBy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    evaluationDatasets = registerOutput<List<String>>('evaluationDatasets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    evaluationId = registerOutput<String>('evaluationId');
    evaluationRuns = registerOutput<List<String>>('evaluationRuns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    golden = registerOutput<EvaluationGolden?>('golden', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationGolden.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    invalid = registerOutput<bool>('invalid');
    lastUpdatedBy = registerOutput<String>('lastUpdatedBy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    scenario = registerOutput<EvaluationScenario?>('scenario', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationScenario.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Evaluation] resource.
  Evaluation.reference(String urn)
    : super(
        'gcp:ces/evaluation:Evaluation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    app = registerOutput<String>('app');
    createTime = registerOutput<String>('createTime');
    createdBy = registerOutput<String>('createdBy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    evaluationDatasets = registerOutput<List<String>>('evaluationDatasets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    evaluationId = registerOutput<String>('evaluationId');
    evaluationRuns = registerOutput<List<String>>('evaluationRuns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    golden = registerOutput<EvaluationGolden?>('golden', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationGolden.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    invalid = registerOutput<bool>('invalid');
    lastUpdatedBy = registerOutput<String>('lastUpdatedBy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    scenario = registerOutput<EvaluationScenario?>('scenario', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationScenario.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }
}
