import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_agent_tool.dart';
import 'tool_args.dart';
import 'tool_client_function.dart';
import 'tool_connector_tool.dart';
import 'tool_data_store_tool.dart';
import 'tool_file_search_tool.dart';
import 'tool_google_search_tool.dart';
import 'tool_mcp_tool.dart';
import 'tool_open_api_tool.dart';
import 'tool_python_function.dart';
import 'tool_remote_agent_tool.dart';
import 'tool_state.dart';
import 'tool_system_tool.dart';
import 'tool_tool_fake_config.dart';
import 'tool_widget_tool.dart';

/// Description
///
///
///
/// &gt; **Note:** **Direct Management Restriction for Certain Tool Types:**
///
/// Individual tools of type `openApiTool`, `mcpTool`, `connectorTool`, and `remoteAgentTool` **cannot** be created, updated, or managed directly using the `gcp.ces.Tool` resource.
///
/// `openApiTool`, `mcpTool`, and `connectorTool` are dynamically generated at runtime based on their corresponding **toolsets** (configured via the `gcp.ces.Toolset` resource). `remoteAgentTool` represents A2A connections configured externally, and `systemTool` represents pre-defined platform tools managed entirely by Google Cloud.
///
/// Consequently, blocks like `openApiTool`, `mcpTool`, `connectorTool`, `remoteAgentTool`, and `systemTool` are marked as **read-only (output-only)** in this resource. They are populated by the server for reference purposes only (e.g., after importing an existing tool into your state) and **cannot** be configured in your Terraform HCL configuration.
///
/// ## Example Usage
///
/// ### Ces Tool Client Function Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_app = new gcp.ces.App("my-app", {
///     location: "us",
///     displayName: "my-app",
///     appId: "app-id",
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolClientFunctionBasic = new gcp.ces.Tool("ces_tool_client_function_basic", {
///     location: "us",
///     app: my_app.name,
///     toolId: "ces_tool_basic1",
///     executionType: "SYNCHRONOUS",
///     clientFunction: {
///         name: "ces_tool_client_function_basic",
///         description: "example-description",
///         parameters: {
///             additionalProperties: JSON.stringify({
///                 type: "BOOLEAN",
///             }),
///             anyOf: JSON.stringify([{
///                 type: "STRING",
///                 description: "any_of option 1: string",
///             }]),
///             "default": JSON.stringify(false),
///             defs: JSON.stringify({
///                 SimpleString: {
///                     type: "STRING",
///                     description: "A simple string definition",
///                 },
///             }),
///             description: "schema description",
///             enums: [
///                 "VALUE_A",
///                 "VALUE_B",
///             ],
///             items: JSON.stringify({
///                 type: "ARRAY",
///                 description: "An array",
///             }),
///             maxItems: 32,
///             maximum: 64,
///             minItems: 1,
///             minimum: 2,
///             nullable: true,
///             prefixItems: JSON.stringify([{
///                 type: "ARRAY",
///                 description: "prefix item 1",
///             }]),
///             properties: JSON.stringify({
///                 name: {
///                     type: "STRING",
///                     description: "A name",
///                 },
///             }),
///             ref: "#/defs/MyDefinition",
///             requireds: ["some_property"],
///             title: "Title",
///             type: "ARRAY",
///             uniqueItems: true,
///         },
///         response: {
///             additionalProperties: JSON.stringify({
///                 type: "BOOLEAN",
///             }),
///             anyOf: JSON.stringify([{
///                 type: "STRING",
///                 description: "any_of option 1: string",
///             }]),
///             "default": JSON.stringify(false),
///             defs: JSON.stringify({
///                 SimpleString: {
///                     type: "STRING",
///                     description: "A simple string definition",
///                 },
///             }),
///             description: "schema description",
///             enums: [
///                 "VALUE_A",
///                 "VALUE_B",
///             ],
///             items: JSON.stringify({
///                 type: "ARRAY",
///                 description: "An array",
///             }),
///             maxItems: 32,
///             maximum: 64,
///             minItems: 1,
///             minimum: 2,
///             nullable: true,
///             prefixItems: JSON.stringify([{
///                 type: "ARRAY",
///                 description: "prefix item 1",
///             }]),
///             properties: JSON.stringify({
///                 name: {
///                     type: "STRING",
///                     description: "A name",
///                 },
///             }),
///             ref: "#/defs/MyDefinition",
///             requireds: ["some_property"],
///             title: "Title",
///             type: "ARRAY",
///             uniqueItems: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// my_app = gcp.ces.App("my-app",
///     location="us",
///     display_name="my-app",
///     app_id="app-id",
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_tool_client_function_basic = gcp.ces.Tool("ces_tool_client_function_basic",
///     location="us",
///     app=my_app.name,
///     tool_id="ces_tool_basic1",
///     execution_type="SYNCHRONOUS",
///     client_function={
///         "name": "ces_tool_client_function_basic",
///         "description": "example-description",
///         "parameters": {
///             "additional_properties": json.dumps({
///                 "type": "BOOLEAN",
///             }),
///             "any_of": json.dumps([{
///                 "type": "STRING",
///                 "description": "any_of option 1: string",
///             }]),
///             "default": json.dumps(False),
///             "defs": json.dumps({
///                 "SimpleString": {
///                     "type": "STRING",
///                     "description": "A simple string definition",
///                 },
///             }),
///             "description": "schema description",
///             "enums": [
///                 "VALUE_A",
///                 "VALUE_B",
///             ],
///             "items": json.dumps({
///                 "type": "ARRAY",
///                 "description": "An array",
///             }),
///             "max_items": 32,
///             "maximum": float(64),
///             "min_items": 1,
///             "minimum": float(2),
///             "nullable": True,
///             "prefix_items": json.dumps([{
///                 "type": "ARRAY",
///                 "description": "prefix item 1",
///             }]),
///             "properties": json.dumps({
///                 "name": {
///                     "type": "STRING",
///                     "description": "A name",
///                 },
///             }),
///             "ref": "#/defs/MyDefinition",
///             "requireds": ["some_property"],
///             "title": "Title",
///             "type": "ARRAY",
///             "unique_items": True,
///         },
///         "response": {
///             "additional_properties": json.dumps({
///                 "type": "BOOLEAN",
///             }),
///             "any_of": json.dumps([{
///                 "type": "STRING",
///                 "description": "any_of option 1: string",
///             }]),
///             "default": json.dumps(False),
///             "defs": json.dumps({
///                 "SimpleString": {
///                     "type": "STRING",
///                     "description": "A simple string definition",
///                 },
///             }),
///             "description": "schema description",
///             "enums": [
///                 "VALUE_A",
///                 "VALUE_B",
///             ],
///             "items": json.dumps({
///                 "type": "ARRAY",
///                 "description": "An array",
///             }),
///             "max_items": 32,
///             "maximum": float(64),
///             "min_items": 1,
///             "minimum": float(2),
///             "nullable": True,
///             "prefix_items": json.dumps([{
///                 "type": "ARRAY",
///                 "description": "prefix item 1",
///             }]),
///             "properties": json.dumps({
///                 "name": {
///                     "type": "STRING",
///                     "description": "A name",
///                 },
///             }),
///             "ref": "#/defs/MyDefinition",
///             "requireds": ["some_property"],
///             "title": "Title",
///             "type": "ARRAY",
///             "unique_items": True,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
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
///     var cesToolClientFunctionBasic = new Gcp.Ces.Tool("ces_tool_client_function_basic", new()
///     {
///         Location = "us",
///         App = my_app.Name,
///         ToolId = "ces_tool_basic1",
///         ExecutionType = "SYNCHRONOUS",
///         ClientFunction = new Gcp.Ces.Inputs.ToolClientFunctionArgs
///         {
///             Name = "ces_tool_client_function_basic",
///             Description = "example-description",
///             Parameters = new Gcp.Ces.Inputs.ToolClientFunctionParametersArgs
///             {
///                 AdditionalProperties = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["type"] = "BOOLEAN",
///                 }),
///                 AnyOf = JsonSerializer.Serialize(new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["type"] = "STRING",
///                         ["description"] = "any_of option 1: string",
///                     },
///                 }),
///                 Default = JsonSerializer.Serialize(false),
///                 Defs = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["SimpleString"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "STRING",
///                         ["description"] = "A simple string definition",
///                     },
///                 }),
///                 Description = "schema description",
///                 Enums = new[]
///                 {
///                     "VALUE_A",
///                     "VALUE_B",
///                 },
///                 Items = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["type"] = "ARRAY",
///                     ["description"] = "An array",
///                 }),
///                 MaxItems = 32,
///                 Maximum = 64.0,
///                 MinItems = 1,
///                 Minimum = 2.0,
///                 Nullable = true,
///                 PrefixItems = JsonSerializer.Serialize(new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["type"] = "ARRAY",
///                         ["description"] = "prefix item 1",
///                     },
///                 }),
///                 Properties = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["name"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "STRING",
///                         ["description"] = "A name",
///                     },
///                 }),
///                 Ref = "#/defs/MyDefinition",
///                 Requireds = new[]
///                 {
///                     "some_property",
///                 },
///                 Title = "Title",
///                 Type = "ARRAY",
///                 UniqueItems = true,
///             },
///             Response = new Gcp.Ces.Inputs.ToolClientFunctionResponseArgs
///             {
///                 AdditionalProperties = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["type"] = "BOOLEAN",
///                 }),
///                 AnyOf = JsonSerializer.Serialize(new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["type"] = "STRING",
///                         ["description"] = "any_of option 1: string",
///                     },
///                 }),
///                 Default = JsonSerializer.Serialize(false),
///                 Defs = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["SimpleString"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "STRING",
///                         ["description"] = "A simple string definition",
///                     },
///                 }),
///                 Description = "schema description",
///                 Enums = new[]
///                 {
///                     "VALUE_A",
///                     "VALUE_B",
///                 },
///                 Items = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["type"] = "ARRAY",
///                     ["description"] = "An array",
///                 }),
///                 MaxItems = 32,
///                 Maximum = 64.0,
///                 MinItems = 1,
///                 Minimum = 2.0,
///                 Nullable = true,
///                 PrefixItems = JsonSerializer.Serialize(new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["type"] = "ARRAY",
///                         ["description"] = "prefix item 1",
///                     },
///                 }),
///                 Properties = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["name"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "STRING",
///                         ["description"] = "A name",
///                     },
///                 }),
///                 Ref = "#/defs/MyDefinition",
///                 Requireds = new[]
///                 {
///                     "some_property",
///                 },
///                 Title = "Title",
///                 Type = "ARRAY",
///                 UniqueItems = true,
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
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
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
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"type": "BOOLEAN",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal([]map[string]string{
/// 			{
/// 				"type":        "STRING",
/// 				"description": "any_of option 1: string",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		tmpJSON2, err := json.Marshal(false)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json2 := string(tmpJSON2)
/// 		tmpJSON3, err := json.Marshal(map[string]map[string]string{
/// 			"SimpleString": map[string]string{
/// 				"type":        "STRING",
/// 				"description": "A simple string definition",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json3 := string(tmpJSON3)
/// 		tmpJSON4, err := json.Marshal(map[string]string{
/// 			"type":        "ARRAY",
/// 			"description": "An array",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json4 := string(tmpJSON4)
/// 		tmpJSON5, err := json.Marshal([]map[string]string{
/// 			{
/// 				"type":        "ARRAY",
/// 				"description": "prefix item 1",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json5 := string(tmpJSON5)
/// 		tmpJSON6, err := json.Marshal(map[string]map[string]string{
/// 			"name": map[string]string{
/// 				"type":        "STRING",
/// 				"description": "A name",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json6 := string(tmpJSON6)
/// 		tmpJSON7, err := json.Marshal(map[string]string{
/// 			"type": "BOOLEAN",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json7 := string(tmpJSON7)
/// 		tmpJSON8, err := json.Marshal([]map[string]string{
/// 			{
/// 				"type":        "STRING",
/// 				"description": "any_of option 1: string",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json8 := string(tmpJSON8)
/// 		tmpJSON9, err := json.Marshal(false)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json9 := string(tmpJSON9)
/// 		tmpJSON10, err := json.Marshal(map[string]map[string]string{
/// 			"SimpleString": map[string]string{
/// 				"type":        "STRING",
/// 				"description": "A simple string definition",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json10 := string(tmpJSON10)
/// 		tmpJSON11, err := json.Marshal(map[string]string{
/// 			"type":        "ARRAY",
/// 			"description": "An array",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json11 := string(tmpJSON11)
/// 		tmpJSON12, err := json.Marshal([]map[string]string{
/// 			{
/// 				"type":        "ARRAY",
/// 				"description": "prefix item 1",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json12 := string(tmpJSON12)
/// 		tmpJSON13, err := json.Marshal(map[string]map[string]string{
/// 			"name": map[string]string{
/// 				"type":        "STRING",
/// 				"description": "A name",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json13 := string(tmpJSON13)
/// 		_, err = ces.NewTool(ctx, "ces_tool_client_function_basic", &ces.ToolArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           my_app.Name,
/// 			ToolId:        pulumi.String("ces_tool_basic1"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			ClientFunction: &ces.ToolClientFunctionArgs{
/// 				Name:        pulumi.String("ces_tool_client_function_basic"),
/// 				Description: pulumi.String("example-description"),
/// 				Parameters: &ces.ToolClientFunctionParametersArgs{
/// 					AdditionalProperties: pulumi.String(json0),
/// 					AnyOf:                pulumi.String(json1),
/// 					Default:              pulumi.String(json2),
/// 					Defs:                 pulumi.String(json3),
/// 					Description:          pulumi.String("schema description"),
/// 					Enums: pulumi.StringArray{
/// 						pulumi.String("VALUE_A"),
/// 						pulumi.String("VALUE_B"),
/// 					},
/// 					Items:       pulumi.String(json4),
/// 					MaxItems:    pulumi.Int(32),
/// 					Maximum:     pulumi.Float64(64),
/// 					MinItems:    pulumi.Int(1),
/// 					Minimum:     pulumi.Float64(2),
/// 					Nullable:    pulumi.Bool(true),
/// 					PrefixItems: pulumi.String(json5),
/// 					Properties:  pulumi.String(json6),
/// 					Ref:         pulumi.String("#/defs/MyDefinition"),
/// 					Requireds: pulumi.StringArray{
/// 						pulumi.String("some_property"),
/// 					},
/// 					Title:       pulumi.String("Title"),
/// 					Type:        pulumi.String("ARRAY"),
/// 					UniqueItems: pulumi.Bool(true),
/// 				},
/// 				Response: &ces.ToolClientFunctionResponseArgs{
/// 					AdditionalProperties: pulumi.String(json7),
/// 					AnyOf:                pulumi.String(json8),
/// 					Default:              pulumi.String(json9),
/// 					Defs:                 pulumi.String(json10),
/// 					Description:          pulumi.String("schema description"),
/// 					Enums: pulumi.StringArray{
/// 						pulumi.String("VALUE_A"),
/// 						pulumi.String("VALUE_B"),
/// 					},
/// 					Items:       pulumi.String(json11),
/// 					MaxItems:    pulumi.Int(32),
/// 					Maximum:     pulumi.Float64(64),
/// 					MinItems:    pulumi.Int(1),
/// 					Minimum:     pulumi.Float64(2),
/// 					Nullable:    pulumi.Bool(true),
/// 					PrefixItems: pulumi.String(json12),
/// 					Properties:  pulumi.String(json13),
/// 					Ref:         pulumi.String("#/defs/MyDefinition"),
/// 					Requireds: pulumi.StringArray{
/// 						pulumi.String("some_property"),
/// 					},
/// 					Title:       pulumi.String("Title"),
/// 					Type:        pulumi.String("ARRAY"),
/// 					UniqueItems: pulumi.Bool(true),
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
/// resource "gcp_ces_app" "my-app" {
///   location     = "us"
///   display_name = "my-app"
///   app_id       = "app-id"
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_tool" "ces_tool_client_function_basic" {
///   location       = "us"
///   app            = gcp_ces_app.my-app.name
///   tool_id        = "ces_tool_basic1"
///   execution_type = "SYNCHRONOUS"
///   client_function = {
///     name        = "ces_tool_client_function_basic"
///     description = "example-description"
///     parameters = {
///       additional_properties = jsonencode({
///         "type" = "BOOLEAN"
///       })
///       any_of = jsonencode([{
///         "type"        = "STRING"
///         "description" = "any_of option 1: string"
///       }])
///       default = jsonencode(false)
///       defs = jsonencode({
///         "SimpleString" = {
///           "type"        = "STRING"
///           "description" = "A simple string definition"
///         }
///       })
///       description = "schema description"
///       enums       = ["VALUE_A", "VALUE_B"]
///       items = jsonencode({
///         "type"        = "ARRAY"
///         "description" = "An array"
///       })
///       max_items = 32
///       maximum   = 64
///       min_items = 1
///       minimum   = 2
///       nullable  = true
///       prefix_items = jsonencode([{
///         "type"        = "ARRAY"
///         "description" = "prefix item 1"
///       }])
///       properties = jsonencode({
///         "name" = {
///           "type"        = "STRING"
///           "description" = "A name"
///         }
///       })
///       ref          = "#/defs/MyDefinition"
///       requireds    = ["some_property"]
///       title        = "Title"
///       type         = "ARRAY"
///       unique_items = true
///     }
///     response = {
///       additional_properties = jsonencode({
///         "type" = "BOOLEAN"
///       })
///       any_of = jsonencode([{
///         "type"        = "STRING"
///         "description" = "any_of option 1: string"
///       }])
///       default = jsonencode(false)
///       defs = jsonencode({
///         "SimpleString" = {
///           "type"        = "STRING"
///           "description" = "A simple string definition"
///         }
///       })
///       description = "schema description"
///       enums       = ["VALUE_A", "VALUE_B"]
///       items = jsonencode({
///         "type"        = "ARRAY"
///         "description" = "An array"
///       })
///       max_items = 32
///       maximum   = 64
///       min_items = 1
///       minimum   = 2
///       nullable  = true
///       prefix_items = jsonencode([{
///         "type"        = "ARRAY"
///         "description" = "prefix item 1"
///       }])
///       properties = jsonencode({
///         "name" = {
///           "type"        = "STRING"
///           "description" = "A name"
///         }
///       })
///       ref          = "#/defs/MyDefinition"
///       requireds    = ["some_property"]
///       title        = "Title"
///       type         = "ARRAY"
///       unique_items = true
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
/// import com.pulumi.gcp.ces.inputs.ToolClientFunctionArgs;
/// import com.pulumi.gcp.ces.inputs.ToolClientFunctionParametersArgs;
/// import com.pulumi.gcp.ces.inputs.ToolClientFunctionResponseArgs;
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
///         var cesToolClientFunctionBasic = new Tool("cesToolClientFunctionBasic", ToolArgs.builder()
///             .location("us")
///             .app(my_app.name())
///             .toolId("ces_tool_basic1")
///             .executionType("SYNCHRONOUS")
///             .clientFunction(ToolClientFunctionArgs.builder()
///                 .name("ces_tool_client_function_basic")
///                 .description("example-description")
///                 .parameters(ToolClientFunctionParametersArgs.builder()
///                     .additionalProperties(serializeJson(
///                         jsonObject(
///                             jsonProperty("type", "BOOLEAN")
///                         )))
///                     .anyOf(serializeJson(
///                         jsonArray(jsonObject(
///                             jsonProperty("type", "STRING"),
///                             jsonProperty("description", "any_of option 1: string")
///                         ))))
///                     .default_(serializeJson(
///                         false))
///                     .defs(serializeJson(
///                         jsonObject(
///                             jsonProperty("SimpleString", jsonObject(
///                                 jsonProperty("type", "STRING"),
///                                 jsonProperty("description", "A simple string definition")
///                             ))
///                         )))
///                     .description("schema description")
///                     .enums(
///                         "VALUE_A",
///                         "VALUE_B")
///                     .items(serializeJson(
///                         jsonObject(
///                             jsonProperty("type", "ARRAY"),
///                             jsonProperty("description", "An array")
///                         )))
///                     .maxItems(32)
///                     .maximum(64.0)
///                     .minItems(1)
///                     .minimum(2.0)
///                     .nullable(true)
///                     .prefixItems(serializeJson(
///                         jsonArray(jsonObject(
///                             jsonProperty("type", "ARRAY"),
///                             jsonProperty("description", "prefix item 1")
///                         ))))
///                     .properties(serializeJson(
///                         jsonObject(
///                             jsonProperty("name", jsonObject(
///                                 jsonProperty("type", "STRING"),
///                                 jsonProperty("description", "A name")
///                             ))
///                         )))
///                     .ref("#/defs/MyDefinition")
///                     .requireds("some_property")
///                     .title("Title")
///                     .type("ARRAY")
///                     .uniqueItems(true)
///                     .build())
///                 .response(ToolClientFunctionResponseArgs.builder()
///                     .additionalProperties(serializeJson(
///                         jsonObject(
///                             jsonProperty("type", "BOOLEAN")
///                         )))
///                     .anyOf(serializeJson(
///                         jsonArray(jsonObject(
///                             jsonProperty("type", "STRING"),
///                             jsonProperty("description", "any_of option 1: string")
///                         ))))
///                     .default_(serializeJson(
///                         false))
///                     .defs(serializeJson(
///                         jsonObject(
///                             jsonProperty("SimpleString", jsonObject(
///                                 jsonProperty("type", "STRING"),
///                                 jsonProperty("description", "A simple string definition")
///                             ))
///                         )))
///                     .description("schema description")
///                     .enums(
///                         "VALUE_A",
///                         "VALUE_B")
///                     .items(serializeJson(
///                         jsonObject(
///                             jsonProperty("type", "ARRAY"),
///                             jsonProperty("description", "An array")
///                         )))
///                     .maxItems(32)
///                     .maximum(64.0)
///                     .minItems(1)
///                     .minimum(2.0)
///                     .nullable(true)
///                     .prefixItems(serializeJson(
///                         jsonArray(jsonObject(
///                             jsonProperty("type", "ARRAY"),
///                             jsonProperty("description", "prefix item 1")
///                         ))))
///                     .properties(serializeJson(
///                         jsonObject(
///                             jsonProperty("name", jsonObject(
///                                 jsonProperty("type", "STRING"),
///                                 jsonProperty("description", "A name")
///                             ))
///                         )))
///                     .ref("#/defs/MyDefinition")
///                     .requireds("some_property")
///                     .title("Title")
///                     .type("ARRAY")
///                     .uniqueItems(true)
///                     .build())
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
///   cesToolClientFunctionBasic:
///     type: gcp:ces:Tool
///     name: ces_tool_client_function_basic
///     properties:
///       location: us
///       app: ${["my-app"].name}
///       toolId: ces_tool_basic1
///       executionType: SYNCHRONOUS
///       clientFunction:
///         name: ces_tool_client_function_basic
///         description: example-description
///         parameters:
///           additionalProperties:
///             fn::toJSON:
///               type: BOOLEAN
///           anyOf:
///             fn::toJSON:
///               - type: STRING
///                 description: 'any_of option 1: string'
///           default:
///             fn::toJSON: false
///           defs:
///             fn::toJSON:
///               SimpleString:
///                 type: STRING
///                 description: A simple string definition
///           description: schema description
///           enums:
///             - VALUE_A
///             - VALUE_B
///           items:
///             fn::toJSON:
///               type: ARRAY
///               description: An array
///           maxItems: 32
///           maximum: 64
///           minItems: 1
///           minimum: 2
///           nullable: true
///           prefixItems:
///             fn::toJSON:
///               - type: ARRAY
///                 description: prefix item 1
///           properties:
///             fn::toJSON:
///               name:
///                 type: STRING
///                 description: A name
///           ref: '#/defs/MyDefinition'
///           requireds:
///             - some_property
///           title: Title
///           type: ARRAY
///           uniqueItems: true
///         response:
///           additionalProperties:
///             fn::toJSON:
///               type: BOOLEAN
///           anyOf:
///             fn::toJSON:
///               - type: STRING
///                 description: 'any_of option 1: string'
///           default:
///             fn::toJSON: false
///           defs:
///             fn::toJSON:
///               SimpleString:
///                 type: STRING
///                 description: A simple string definition
///           description: schema description
///           enums:
///             - VALUE_A
///             - VALUE_B
///           items:
///             fn::toJSON:
///               type: ARRAY
///               description: An array
///           maxItems: 32
///           maximum: 64
///           minItems: 1
///           minimum: 2
///           nullable: true
///           prefixItems:
///             fn::toJSON:
///               - type: ARRAY
///                 description: prefix item 1
///           properties:
///             fn::toJSON:
///               name:
///                 type: STRING
///                 description: A name
///           ref: '#/defs/MyDefinition'
///           requireds:
///             - some_property
///           title: Title
///           type: ARRAY
///           uniqueItems: true
/// ```
///
/// ### Ces Tool Data Store Tool Engine Source Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.discoveryengine.DataStore("basic", {
///     location: "global",
///     dataStoreId: "tool_data_store_id",
///     displayName: "tf-test-structured-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_SEARCH"],
///     createAdvancedSiteSearch: false,
/// });
/// const basicSearchEngine = new gcp.discoveryengine.SearchEngine("basic", {
///     engineId: "tool_engine_id",
///     collectionId: "default_collection",
///     location: basic.location,
///     displayName: "Example Display Name",
///     dataStoreIds: [basic.dataStoreId],
///     searchEngineConfig: {},
/// });
/// const my_app = new gcp.ces.App("my-app", {
///     location: "us",
///     displayName: "my-app",
///     appId: "app-id",
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolDataStoreToolEngineSourceBasic = new gcp.ces.Tool("ces_tool_data_store_tool_engine_source_basic", {
///     location: "us",
///     app: my_app.name,
///     toolId: "ces_tool_basic2",
///     executionType: "SYNCHRONOUS",
///     dataStoreTool: {
///         name: "example-tool",
///         description: "example-description",
///         boostSpecs: [{
///             dataStores: [basic.name],
///             specs: [{
///                 conditionBoostSpecs: [{
///                     condition: "(lang_code: ANY(\"en\", \"fr\"))",
///                     boost: 1,
///                     boostControlSpec: {
///                         fieldName: "example-field",
///                         attributeType: "NUMERICAL",
///                         interpolationType: "LINEAR",
///                         controlPoints: [{
///                             attributeValue: "1",
///                             boostAmount: 1,
///                         }],
///                     },
///                 }],
///             }],
///         }],
///         modalityConfigs: [{
///             modalityType: "TEXT",
///             rewriterConfig: {
///                 modelSettings: {
///                     model: "gemini-3.0-flash-001",
///                     temperature: 1,
///                 },
///                 prompt: "example-prompt",
///                 disabled: false,
///             },
///             summarizationConfig: {
///                 modelSettings: {
///                     model: "gemini-3.0-flash-001",
///                     temperature: 1,
///                 },
///                 prompt: "example-prompt",
///                 disabled: false,
///             },
///             groundingConfig: {
///                 groundingLevel: 3,
///                 disabled: false,
///             },
///         }],
///         engineSource: {
///             engine: basicSearchEngine.name,
///             dataStoreSources: [{
///                 filter: "example_field: ANY(\"specific_example\")",
///                 dataStore: {
///                     name: basic.name,
///                 },
///             }],
///             filter: "example_field: ANY(\"specific_example\")",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.discoveryengine.DataStore("basic",
///     location="global",
///     data_store_id="tool_data_store_id",
///     display_name="tf-test-structured-datastore",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_SEARCH"],
///     create_advanced_site_search=False)
/// basic_search_engine = gcp.discoveryengine.SearchEngine("basic",
///     engine_id="tool_engine_id",
///     collection_id="default_collection",
///     location=basic.location,
///     display_name="Example Display Name",
///     data_store_ids=[basic.data_store_id],
///     search_engine_config={})
/// my_app = gcp.ces.App("my-app",
///     location="us",
///     display_name="my-app",
///     app_id="app-id",
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_tool_data_store_tool_engine_source_basic = gcp.ces.Tool("ces_tool_data_store_tool_engine_source_basic",
///     location="us",
///     app=my_app.name,
///     tool_id="ces_tool_basic2",
///     execution_type="SYNCHRONOUS",
///     data_store_tool={
///         "name": "example-tool",
///         "description": "example-description",
///         "boost_specs": [{
///             "data_stores": [basic.name],
///             "specs": [{
///                 "condition_boost_specs": [{
///                     "condition": "(lang_code: ANY(\"en\", \"fr\"))",
///                     "boost": float(1),
///                     "boost_control_spec": {
///                         "field_name": "example-field",
///                         "attribute_type": "NUMERICAL",
///                         "interpolation_type": "LINEAR",
///                         "control_points": [{
///                             "attribute_value": "1",
///                             "boost_amount": float(1),
///                         }],
///                     },
///                 }],
///             }],
///         }],
///         "modality_configs": [{
///             "modality_type": "TEXT",
///             "rewriter_config": {
///                 "model_settings": {
///                     "model": "gemini-3.0-flash-001",
///                     "temperature": float(1),
///                 },
///                 "prompt": "example-prompt",
///                 "disabled": False,
///             },
///             "summarization_config": {
///                 "model_settings": {
///                     "model": "gemini-3.0-flash-001",
///                     "temperature": float(1),
///                 },
///                 "prompt": "example-prompt",
///                 "disabled": False,
///             },
///             "grounding_config": {
///                 "grounding_level": float(3),
///                 "disabled": False,
///             },
///         }],
///         "engine_source": {
///             "engine": basic_search_engine.name,
///             "data_store_sources": [{
///                 "filter": "example_field: ANY(\"specific_example\")",
///                 "data_store": {
///                     "name": basic.name,
///                 },
///             }],
///             "filter": "example_field: ANY(\"specific_example\")",
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
///     var basic = new Gcp.DiscoveryEngine.DataStore("basic", new()
///     {
///         Location = "global",
///         DataStoreId = "tool_data_store_id",
///         DisplayName = "tf-test-structured-datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_SEARCH",
///         },
///         CreateAdvancedSiteSearch = false,
///     });
///
///     var basicSearchEngine = new Gcp.DiscoveryEngine.SearchEngine("basic", new()
///     {
///         EngineId = "tool_engine_id",
///         CollectionId = "default_collection",
///         Location = basic.Location,
///         DisplayName = "Example Display Name",
///         DataStoreIds = new[]
///         {
///             basic.DataStoreId,
///         },
///         SearchEngineConfig = null,
///     });
///
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
///     var cesToolDataStoreToolEngineSourceBasic = new Gcp.Ces.Tool("ces_tool_data_store_tool_engine_source_basic", new()
///     {
///         Location = "us",
///         App = my_app.Name,
///         ToolId = "ces_tool_basic2",
///         ExecutionType = "SYNCHRONOUS",
///         DataStoreTool = new Gcp.Ces.Inputs.ToolDataStoreToolArgs
///         {
///             Name = "example-tool",
///             Description = "example-description",
///             BoostSpecs = new[]
///             {
///                 new Gcp.Ces.Inputs.ToolDataStoreToolBoostSpecArgs
///                 {
///                     DataStores = new[]
///                     {
///                         basic.Name,
///                     },
///                     Specs = new[]
///                     {
///                         new Gcp.Ces.Inputs.ToolDataStoreToolBoostSpecSpecArgs
///                         {
///                             ConditionBoostSpecs = new[]
///                             {
///                                 new Gcp.Ces.Inputs.ToolDataStoreToolBoostSpecSpecConditionBoostSpecArgs
///                                 {
///                                     Condition = "(lang_code: ANY(\"en\", \"fr\"))",
///                                     Boost = 1.0,
///                                     BoostControlSpec = new Gcp.Ces.Inputs.ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecArgs
///                                     {
///                                         FieldName = "example-field",
///                                         AttributeType = "NUMERICAL",
///                                         InterpolationType = "LINEAR",
///                                         ControlPoints = new[]
///                                         {
///                                             new Gcp.Ces.Inputs.ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPointArgs
///                                             {
///                                                 AttributeValue = "1",
///                                                 BoostAmount = 1.0,
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             ModalityConfigs = new[]
///             {
///                 new Gcp.Ces.Inputs.ToolDataStoreToolModalityConfigArgs
///                 {
///                     ModalityType = "TEXT",
///                     RewriterConfig = new Gcp.Ces.Inputs.ToolDataStoreToolModalityConfigRewriterConfigArgs
///                     {
///                         ModelSettings = new Gcp.Ces.Inputs.ToolDataStoreToolModalityConfigRewriterConfigModelSettingsArgs
///                         {
///                             Model = "gemini-3.0-flash-001",
///                             Temperature = 1.0,
///                         },
///                         Prompt = "example-prompt",
///                         Disabled = false,
///                     },
///                     SummarizationConfig = new Gcp.Ces.Inputs.ToolDataStoreToolModalityConfigSummarizationConfigArgs
///                     {
///                         ModelSettings = new Gcp.Ces.Inputs.ToolDataStoreToolModalityConfigSummarizationConfigModelSettingsArgs
///                         {
///                             Model = "gemini-3.0-flash-001",
///                             Temperature = 1.0,
///                         },
///                         Prompt = "example-prompt",
///                         Disabled = false,
///                     },
///                     GroundingConfig = new Gcp.Ces.Inputs.ToolDataStoreToolModalityConfigGroundingConfigArgs
///                     {
///                         GroundingLevel = 3.0,
///                         Disabled = false,
///                     },
///                 },
///             },
///             EngineSource = new Gcp.Ces.Inputs.ToolDataStoreToolEngineSourceArgs
///             {
///                 Engine = basicSearchEngine.Name,
///                 DataStoreSources = new[]
///                 {
///                     new Gcp.Ces.Inputs.ToolDataStoreToolEngineSourceDataStoreSourceArgs
///                     {
///                         Filter = "example_field: ANY(\"specific_example\")",
///                         DataStore = new Gcp.Ces.Inputs.ToolDataStoreToolEngineSourceDataStoreSourceDataStoreArgs
///                         {
///                             Name = basic.Name,
///                         },
///                     },
///                 },
///                 Filter = "example_field: ANY(\"specific_example\")",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := discoveryengine.NewDataStore(ctx, "basic", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("tool_data_store_id"),
/// 			DisplayName:      pulumi.String("tf-test-structured-datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_SEARCH"),
/// 			},
/// 			CreateAdvancedSiteSearch: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicSearchEngine, err := discoveryengine.NewSearchEngine(ctx, "basic", &discoveryengine.SearchEngineArgs{
/// 			EngineId:     pulumi.String("tool_engine_id"),
/// 			CollectionId: pulumi.String("default_collection"),
/// 			Location:     basic.Location,
/// 			DisplayName:  pulumi.String("Example Display Name"),
/// 			DataStoreIds: pulumi.StringArray{
/// 				basic.DataStoreId,
/// 			},
/// 			SearchEngineConfig: &discoveryengine.SearchEngineSearchEngineConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// 		_, err = ces.NewTool(ctx, "ces_tool_data_store_tool_engine_source_basic", &ces.ToolArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           my_app.Name,
/// 			ToolId:        pulumi.String("ces_tool_basic2"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			DataStoreTool: &ces.ToolDataStoreToolArgs{
/// 				Name:        pulumi.String("example-tool"),
/// 				Description: pulumi.String("example-description"),
/// 				BoostSpecs: ces.ToolDataStoreToolBoostSpecArray{
/// 					&ces.ToolDataStoreToolBoostSpecArgs{
/// 						DataStores: pulumi.StringArray{
/// 							basic.Name,
/// 						},
/// 						Specs: ces.ToolDataStoreToolBoostSpecSpecArray{
/// 							&ces.ToolDataStoreToolBoostSpecSpecArgs{
/// 								ConditionBoostSpecs: ces.ToolDataStoreToolBoostSpecSpecConditionBoostSpecArray{
/// 									&ces.ToolDataStoreToolBoostSpecSpecConditionBoostSpecArgs{
/// 										Condition: pulumi.String("(lang_code: ANY(\"en\", \"fr\"))"),
/// 										Boost:     pulumi.Float64(1),
/// 										BoostControlSpec: &ces.ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecArgs{
/// 											FieldName:         pulumi.String("example-field"),
/// 											AttributeType:     pulumi.String("NUMERICAL"),
/// 											InterpolationType: pulumi.String("LINEAR"),
/// 											ControlPoints: ces.ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPointArray{
/// 												&ces.ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPointArgs{
/// 													AttributeValue: pulumi.String("1"),
/// 													BoostAmount:    pulumi.Float64(1),
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				ModalityConfigs: ces.ToolDataStoreToolModalityConfigArray{
/// 					&ces.ToolDataStoreToolModalityConfigArgs{
/// 						ModalityType: pulumi.String("TEXT"),
/// 						RewriterConfig: &ces.ToolDataStoreToolModalityConfigRewriterConfigArgs{
/// 							ModelSettings: &ces.ToolDataStoreToolModalityConfigRewriterConfigModelSettingsArgs{
/// 								Model:       pulumi.String("gemini-3.0-flash-001"),
/// 								Temperature: pulumi.Float64(1),
/// 							},
/// 							Prompt:   pulumi.String("example-prompt"),
/// 							Disabled: pulumi.Bool(false),
/// 						},
/// 						SummarizationConfig: &ces.ToolDataStoreToolModalityConfigSummarizationConfigArgs{
/// 							ModelSettings: &ces.ToolDataStoreToolModalityConfigSummarizationConfigModelSettingsArgs{
/// 								Model:       pulumi.String("gemini-3.0-flash-001"),
/// 								Temperature: pulumi.Float64(1),
/// 							},
/// 							Prompt:   pulumi.String("example-prompt"),
/// 							Disabled: pulumi.Bool(false),
/// 						},
/// 						GroundingConfig: &ces.ToolDataStoreToolModalityConfigGroundingConfigArgs{
/// 							GroundingLevel: pulumi.Float64(3),
/// 							Disabled:       pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 				EngineSource: &ces.ToolDataStoreToolEngineSourceArgs{
/// 					Engine: basicSearchEngine.Name,
/// 					DataStoreSources: ces.ToolDataStoreToolEngineSourceDataStoreSourceArray{
/// 						&ces.ToolDataStoreToolEngineSourceDataStoreSourceArgs{
/// 							Filter: pulumi.String("example_field: ANY(\"specific_example\")"),
/// 							DataStore: &ces.ToolDataStoreToolEngineSourceDataStoreSourceDataStoreArgs{
/// 								Name: basic.Name,
/// 							},
/// 						},
/// 					},
/// 					Filter: pulumi.String("example_field: ANY(\"specific_example\")"),
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
/// resource "gcp_discoveryengine_datastore" "basic" {
///   location                    = "global"
///   data_store_id               = "tool_data_store_id"
///   display_name                = "tf-test-structured-datastore"
///   industry_vertical           = "GENERIC"
///   content_config              = "NO_CONTENT"
///   solution_types              = ["SOLUTION_TYPE_SEARCH"]
///   create_advanced_site_search = false
/// }
/// resource "gcp_discoveryengine_searchengine" "basic" {
///   engine_id            = "tool_engine_id"
///   collection_id        = "default_collection"
///   location             = gcp_discoveryengine_datastore.basic.location
///   display_name         = "Example Display Name"
///   data_store_ids       = [gcp_discoveryengine_datastore.basic.data_store_id]
///   search_engine_config = {}
/// }
/// resource "gcp_ces_app" "my-app" {
///   location     = "us"
///   display_name = "my-app"
///   app_id       = "app-id"
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_tool" "ces_tool_data_store_tool_engine_source_basic" {
///   location       = "us"
///   app            = gcp_ces_app.my-app.name
///   tool_id        = "ces_tool_basic2"
///   execution_type = "SYNCHRONOUS"
///   data_store_tool = {
///     name        = "example-tool"
///     description = "example-description"
///     boost_specs = [{
///       "dataStores" = [gcp_discoveryengine_datastore.basic.name]
///       "specs" = [{
///         "conditionBoostSpecs" = [{
///           "condition" = "(lang_code: ANY(\"en\", \"fr\"))"
///           "boost"     = 1
///           "boostControlSpec" = {
///             "fieldName"         = "example-field"
///             "attributeType"     = "NUMERICAL"
///             "interpolationType" = "LINEAR"
///             "controlPoints" = [{
///               "attributeValue" = 1
///               "boostAmount"    = 1
///             }]
///           }
///         }]
///       }]
///     }]
///     modality_configs = [{
///       "modalityType" = "TEXT"
///       "rewriterConfig" = {
///         "modelSettings" = {
///           "model"       = "gemini-3.0-flash-001"
///           "temperature" = 1
///         }
///         "prompt"   = "example-prompt"
///         "disabled" = false
///       }
///       "summarizationConfig" = {
///         "modelSettings" = {
///           "model"       = "gemini-3.0-flash-001"
///           "temperature" = 1
///         }
///         "prompt"   = "example-prompt"
///         "disabled" = false
///       }
///       "groundingConfig" = {
///         "groundingLevel" = 3
///         "disabled"       = false
///       }
///     }]
///     engine_source = {
///       engine = gcp_discoveryengine_searchengine.basic.name
///       data_store_sources = [{
///         "filter" = "example_field: ANY(\"specific_example\")"
///         "dataStore" = {
///           "name" = gcp_discoveryengine_datastore.basic.name
///         }
///       }]
///       filter = "example_field: ANY(\"specific_example\")"
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
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.discoveryengine.SearchEngine;
/// import com.pulumi.gcp.discoveryengine.SearchEngineArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.SearchEngineSearchEngineConfigArgs;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Tool;
/// import com.pulumi.gcp.ces.ToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolBoostSpecArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolBoostSpecSpecArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolBoostSpecSpecConditionBoostSpecArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPointArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolModalityConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolModalityConfigRewriterConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolModalityConfigRewriterConfigModelSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolModalityConfigSummarizationConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolModalityConfigSummarizationConfigModelSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolModalityConfigGroundingConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolEngineSourceArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolEngineSourceDataStoreSourceArgs;
/// import com.pulumi.gcp.ces.inputs.ToolDataStoreToolEngineSourceDataStoreSourceDataStoreArgs;
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
///         var basic = new DataStore("basic", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("tool_data_store_id")
///             .displayName("tf-test-structured-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_SEARCH")
///             .createAdvancedSiteSearch(false)
///             .build());
///
///         var basicSearchEngine = new SearchEngine("basicSearchEngine", SearchEngineArgs.builder()
///             .engineId("tool_engine_id")
///             .collectionId("default_collection")
///             .location(basic.location())
///             .displayName("Example Display Name")
///             .dataStoreIds(basic.dataStoreId())
///             .searchEngineConfig(SearchEngineSearchEngineConfigArgs.builder()
///                 .build())
///             .build());
///
///         var my_app = new App("my-app", AppArgs.builder()
///             .location("us")
///             .displayName("my-app")
///             .appId("app-id")
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesToolDataStoreToolEngineSourceBasic = new Tool("cesToolDataStoreToolEngineSourceBasic", ToolArgs.builder()
///             .location("us")
///             .app(my_app.name())
///             .toolId("ces_tool_basic2")
///             .executionType("SYNCHRONOUS")
///             .dataStoreTool(ToolDataStoreToolArgs.builder()
///                 .name("example-tool")
///                 .description("example-description")
///                 .boostSpecs(ToolDataStoreToolBoostSpecArgs.builder()
///                     .dataStores(basic.name())
///                     .specs(ToolDataStoreToolBoostSpecSpecArgs.builder()
///                         .conditionBoostSpecs(ToolDataStoreToolBoostSpecSpecConditionBoostSpecArgs.builder()
///                             .condition("(lang_code: ANY(\"en\", \"fr\"))")
///                             .boost(1.0)
///                             .boostControlSpec(ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecArgs.builder()
///                                 .fieldName("example-field")
///                                 .attributeType("NUMERICAL")
///                                 .interpolationType("LINEAR")
///                                 .controlPoints(ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPointArgs.builder()
///                                     .attributeValue("1")
///                                     .boostAmount(1.0)
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .modalityConfigs(ToolDataStoreToolModalityConfigArgs.builder()
///                     .modalityType("TEXT")
///                     .rewriterConfig(ToolDataStoreToolModalityConfigRewriterConfigArgs.builder()
///                         .modelSettings(ToolDataStoreToolModalityConfigRewriterConfigModelSettingsArgs.builder()
///                             .model("gemini-3.0-flash-001")
///                             .temperature(1.0)
///                             .build())
///                         .prompt("example-prompt")
///                         .disabled(false)
///                         .build())
///                     .summarizationConfig(ToolDataStoreToolModalityConfigSummarizationConfigArgs.builder()
///                         .modelSettings(ToolDataStoreToolModalityConfigSummarizationConfigModelSettingsArgs.builder()
///                             .model("gemini-3.0-flash-001")
///                             .temperature(1.0)
///                             .build())
///                         .prompt("example-prompt")
///                         .disabled(false)
///                         .build())
///                     .groundingConfig(ToolDataStoreToolModalityConfigGroundingConfigArgs.builder()
///                         .groundingLevel(3.0)
///                         .disabled(false)
///                         .build())
///                     .build())
///                 .engineSource(ToolDataStoreToolEngineSourceArgs.builder()
///                     .engine(basicSearchEngine.name())
///                     .dataStoreSources(ToolDataStoreToolEngineSourceDataStoreSourceArgs.builder()
///                         .filter("example_field: ANY(\"specific_example\")")
///                         .dataStore(ToolDataStoreToolEngineSourceDataStoreSourceDataStoreArgs.builder()
///                             .name(basic.name())
///                             .build())
///                         .build())
///                     .filter("example_field: ANY(\"specific_example\")")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:discoveryengine:DataStore
///     properties:
///       location: global
///       dataStoreId: tool_data_store_id
///       displayName: tf-test-structured-datastore
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_SEARCH
///       createAdvancedSiteSearch: false
///   basicSearchEngine:
///     type: gcp:discoveryengine:SearchEngine
///     name: basic
///     properties:
///       engineId: tool_engine_id
///       collectionId: default_collection
///       location: ${basic.location}
///       displayName: Example Display Name
///       dataStoreIds:
///         - ${basic.dataStoreId}
///       searchEngineConfig: {}
///   my-app:
///     type: gcp:ces:App
///     properties:
///       location: us
///       displayName: my-app
///       appId: app-id
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesToolDataStoreToolEngineSourceBasic:
///     type: gcp:ces:Tool
///     name: ces_tool_data_store_tool_engine_source_basic
///     properties:
///       location: us
///       app: ${["my-app"].name}
///       toolId: ces_tool_basic2
///       executionType: SYNCHRONOUS
///       dataStoreTool:
///         name: example-tool
///         description: example-description
///         boostSpecs:
///           - dataStores:
///               - ${basic.name}
///             specs:
///               - conditionBoostSpecs:
///                   - condition: '(lang_code: ANY("en", "fr"))'
///                     boost: 1
///                     boostControlSpec:
///                       fieldName: example-field
///                       attributeType: NUMERICAL
///                       interpolationType: LINEAR
///                       controlPoints:
///                         - attributeValue: 1
///                           boostAmount: 1
///         modalityConfigs:
///           - modalityType: TEXT
///             rewriterConfig:
///               modelSettings:
///                 model: gemini-3.0-flash-001
///                 temperature: 1
///               prompt: example-prompt
///               disabled: false
///             summarizationConfig:
///               modelSettings:
///                 model: gemini-3.0-flash-001
///                 temperature: 1
///               prompt: example-prompt
///               disabled: false
///             groundingConfig:
///               groundingLevel: 3
///               disabled: false
///         engineSource:
///           engine: ${basicSearchEngine.name}
///           dataStoreSources:
///             - filter: 'example_field: ANY("specific_example")'
///               dataStore:
///                 name: ${basic.name}
///           filter: 'example_field: ANY("specific_example")'
/// ```
///
/// ### Ces Tool Google Search Tool Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_app = new gcp.ces.App("my-app", {
///     location: "us",
///     displayName: "my-app",
///     appId: "app-id",
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolGoogleSearchToolBasic = new gcp.ces.Tool("ces_tool_google_search_tool_basic", {
///     location: "us",
///     app: my_app.name,
///     toolId: "ces_tool_basic3",
///     executionType: "SYNCHRONOUS",
///     googleSearchTool: {
///         name: "example-tool",
///         contextUrls: [
///             "example.com",
///             "example2.com",
///         ],
///         description: "example-description",
///         excludeDomains: [
///             "example.com",
///             "example2.com",
///         ],
///         preferredDomains: [
///             "example3.com",
///             "example4.com",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_app = gcp.ces.App("my-app",
///     location="us",
///     display_name="my-app",
///     app_id="app-id",
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_tool_google_search_tool_basic = gcp.ces.Tool("ces_tool_google_search_tool_basic",
///     location="us",
///     app=my_app.name,
///     tool_id="ces_tool_basic3",
///     execution_type="SYNCHRONOUS",
///     google_search_tool={
///         "name": "example-tool",
///         "context_urls": [
///             "example.com",
///             "example2.com",
///         ],
///         "description": "example-description",
///         "exclude_domains": [
///             "example.com",
///             "example2.com",
///         ],
///         "preferred_domains": [
///             "example3.com",
///             "example4.com",
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
///     var cesToolGoogleSearchToolBasic = new Gcp.Ces.Tool("ces_tool_google_search_tool_basic", new()
///     {
///         Location = "us",
///         App = my_app.Name,
///         ToolId = "ces_tool_basic3",
///         ExecutionType = "SYNCHRONOUS",
///         GoogleSearchTool = new Gcp.Ces.Inputs.ToolGoogleSearchToolArgs
///         {
///             Name = "example-tool",
///             ContextUrls = new[]
///             {
///                 "example.com",
///                 "example2.com",
///             },
///             Description = "example-description",
///             ExcludeDomains = new[]
///             {
///                 "example.com",
///                 "example2.com",
///             },
///             PreferredDomains = new[]
///             {
///                 "example3.com",
///                 "example4.com",
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
/// 		_, err = ces.NewTool(ctx, "ces_tool_google_search_tool_basic", &ces.ToolArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           my_app.Name,
/// 			ToolId:        pulumi.String("ces_tool_basic3"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			GoogleSearchTool: &ces.ToolGoogleSearchToolArgs{
/// 				Name: pulumi.String("example-tool"),
/// 				ContextUrls: pulumi.StringArray{
/// 					pulumi.String("example.com"),
/// 					pulumi.String("example2.com"),
/// 				},
/// 				Description: pulumi.String("example-description"),
/// 				ExcludeDomains: pulumi.StringArray{
/// 					pulumi.String("example.com"),
/// 					pulumi.String("example2.com"),
/// 				},
/// 				PreferredDomains: pulumi.StringArray{
/// 					pulumi.String("example3.com"),
/// 					pulumi.String("example4.com"),
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
/// resource "gcp_ces_app" "my-app" {
///   location     = "us"
///   display_name = "my-app"
///   app_id       = "app-id"
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_tool" "ces_tool_google_search_tool_basic" {
///   location       = "us"
///   app            = gcp_ces_app.my-app.name
///   tool_id        = "ces_tool_basic3"
///   execution_type = "SYNCHRONOUS"
///   google_search_tool = {
///     name              = "example-tool"
///     context_urls      = ["example.com", "example2.com"]
///     description       = "example-description"
///     exclude_domains   = ["example.com", "example2.com"]
///     preferred_domains = ["example3.com", "example4.com"]
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
/// import com.pulumi.gcp.ces.inputs.ToolGoogleSearchToolArgs;
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
///         var cesToolGoogleSearchToolBasic = new Tool("cesToolGoogleSearchToolBasic", ToolArgs.builder()
///             .location("us")
///             .app(my_app.name())
///             .toolId("ces_tool_basic3")
///             .executionType("SYNCHRONOUS")
///             .googleSearchTool(ToolGoogleSearchToolArgs.builder()
///                 .name("example-tool")
///                 .contextUrls(
///                     "example.com",
///                     "example2.com")
///                 .description("example-description")
///                 .excludeDomains(
///                     "example.com",
///                     "example2.com")
///                 .preferredDomains(
///                     "example3.com",
///                     "example4.com")
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
///   cesToolGoogleSearchToolBasic:
///     type: gcp:ces:Tool
///     name: ces_tool_google_search_tool_basic
///     properties:
///       location: us
///       app: ${["my-app"].name}
///       toolId: ces_tool_basic3
///       executionType: SYNCHRONOUS
///       googleSearchTool:
///         name: example-tool
///         contextUrls:
///           - example.com
///           - example2.com
///         description: example-description
///         excludeDomains:
///           - example.com
///           - example2.com
///         preferredDomains:
///           - example3.com
///           - example4.com
/// ```
///
/// ### Ces Tool Python Function Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_app = new gcp.ces.App("my-app", {
///     location: "us",
///     displayName: "my-app",
///     appId: "app-id",
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolPythonFunctionBasic = new gcp.ces.Tool("ces_tool_python_function_basic", {
///     location: "us",
///     app: my_app.name,
///     toolId: "ces_tool_basic4",
///     executionType: "SYNCHRONOUS",
///     pythonFunction: {
///         name: "example_function",
///         pythonCode: "def example_function() -> int: return 0",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_app = gcp.ces.App("my-app",
///     location="us",
///     display_name="my-app",
///     app_id="app-id",
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_tool_python_function_basic = gcp.ces.Tool("ces_tool_python_function_basic",
///     location="us",
///     app=my_app.name,
///     tool_id="ces_tool_basic4",
///     execution_type="SYNCHRONOUS",
///     python_function={
///         "name": "example_function",
///         "python_code": "def example_function() -> int: return 0",
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
///     var cesToolPythonFunctionBasic = new Gcp.Ces.Tool("ces_tool_python_function_basic", new()
///     {
///         Location = "us",
///         App = my_app.Name,
///         ToolId = "ces_tool_basic4",
///         ExecutionType = "SYNCHRONOUS",
///         PythonFunction = new Gcp.Ces.Inputs.ToolPythonFunctionArgs
///         {
///             Name = "example_function",
///             PythonCode = "def example_function() -> int: return 0",
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
/// 		_, err = ces.NewTool(ctx, "ces_tool_python_function_basic", &ces.ToolArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           my_app.Name,
/// 			ToolId:        pulumi.String("ces_tool_basic4"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			PythonFunction: &ces.ToolPythonFunctionArgs{
/// 				Name:       pulumi.String("example_function"),
/// 				PythonCode: pulumi.String("def example_function() -> int: return 0"),
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
/// resource "gcp_ces_app" "my-app" {
///   location     = "us"
///   display_name = "my-app"
///   app_id       = "app-id"
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_tool" "ces_tool_python_function_basic" {
///   location       = "us"
///   app            = gcp_ces_app.my-app.name
///   tool_id        = "ces_tool_basic4"
///   execution_type = "SYNCHRONOUS"
///   python_function = {
///     name        = "example_function"
///     python_code = "def example_function() -> int: return 0"
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
///         var cesToolPythonFunctionBasic = new Tool("cesToolPythonFunctionBasic", ToolArgs.builder()
///             .location("us")
///             .app(my_app.name())
///             .toolId("ces_tool_basic4")
///             .executionType("SYNCHRONOUS")
///             .pythonFunction(ToolPythonFunctionArgs.builder()
///                 .name("example_function")
///                 .pythonCode("def example_function() -> int: return 0")
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
///   cesToolPythonFunctionBasic:
///     type: gcp:ces:Tool
///     name: ces_tool_python_function_basic
///     properties:
///       location: us
///       app: ${["my-app"].name}
///       toolId: ces_tool_basic4
///       executionType: SYNCHRONOUS
///       pythonFunction:
///         name: example_function
///         pythonCode: 'def example_function() -> int: return 0'
/// ```
///
/// ### Ces Tool Agent Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_app = new gcp.ces.App("my-app", {
///     location: "us",
///     displayName: "my-app",
///     appId: "app-id",
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const targetAgent = new gcp.ces.Agent("target_agent", {
///     agentId: "target-agent",
///     location: "us",
///     app: my_app.appId,
///     displayName: "Target Agent",
///     instruction: "Target agent instruction",
///     llmAgent: {},
/// });
/// const cesToolAgentBasic = new gcp.ces.Tool("ces_tool_agent_basic", {
///     location: "us",
///     app: my_app.name,
///     toolId: "ces_tool_basic5",
///     executionType: "SYNCHRONOUS",
///     agentTool: {
///         name: "ces_tool_agent_basic",
///         description: "example-description",
///         agent: pulumi.interpolate`projects/${my_app.project}/locations/us/apps/${my_app.appId}/agents/${targetAgent.agentId}`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_app = gcp.ces.App("my-app",
///     location="us",
///     display_name="my-app",
///     app_id="app-id",
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// target_agent = gcp.ces.Agent("target_agent",
///     agent_id="target-agent",
///     location="us",
///     app=my_app.app_id,
///     display_name="Target Agent",
///     instruction="Target agent instruction",
///     llm_agent={})
/// ces_tool_agent_basic = gcp.ces.Tool("ces_tool_agent_basic",
///     location="us",
///     app=my_app.name,
///     tool_id="ces_tool_basic5",
///     execution_type="SYNCHRONOUS",
///     agent_tool={
///         "name": "ces_tool_agent_basic",
///         "description": "example-description",
///         "agent": pulumi.Output.all(
///             project=my_app.project,
///             app_id=my_app.app_id,
///             agent_id=target_agent.agent_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us/apps/{resolved_outputs['app_id']}/agents/{resolved_outputs['agent_id']}")
/// ,
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
///     var targetAgent = new Gcp.Ces.Agent("target_agent", new()
///     {
///         AgentId = "target-agent",
///         Location = "us",
///         App = my_app.AppId,
///         DisplayName = "Target Agent",
///         Instruction = "Target agent instruction",
///         LlmAgent = null,
///     });
///
///     var cesToolAgentBasic = new Gcp.Ces.Tool("ces_tool_agent_basic", new()
///     {
///         Location = "us",
///         App = my_app.Name,
///         ToolId = "ces_tool_basic5",
///         ExecutionType = "SYNCHRONOUS",
///         AgentTool = new Gcp.Ces.Inputs.ToolAgentToolArgs
///         {
///             Name = "ces_tool_agent_basic",
///             Description = "example-description",
///             Agent = Output.Tuple(my_app.Project, my_app.AppId, targetAgent.AgentId).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var appId = values.Item2;
///                 var agentId = values.Item3;
///                 return $"projects/{project}/locations/us/apps/{appId}/agents/{agentId}";
///             }),
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
/// 		targetAgent, err := ces.NewAgent(ctx, "target_agent", &ces.AgentArgs{
/// 			AgentId:     pulumi.String("target-agent"),
/// 			Location:    pulumi.String("us"),
/// 			App:         my_app.AppId,
/// 			DisplayName: pulumi.String("Target Agent"),
/// 			Instruction: pulumi.String("Target agent instruction"),
/// 			LlmAgent:    &ces.AgentLlmAgentArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewTool(ctx, "ces_tool_agent_basic", &ces.ToolArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           my_app.Name,
/// 			ToolId:        pulumi.String("ces_tool_basic5"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			AgentTool: &ces.ToolAgentToolArgs{
/// 				Name:        pulumi.String("ces_tool_agent_basic"),
/// 				Description: pulumi.String("example-description"),
/// 				Agent: pulumi.All(my_app.Project, my_app.AppId, targetAgent.AgentId).ApplyT(func(_args []interface{}) (string, error) {
/// 					project := _args[0].(string)
/// 					appId := _args[1].(string)
/// 					agentId := _args[2].(*string)
/// 					return fmt.Sprintf("projects/%v/locations/us/apps/%v/agents/%v", project, appId, agentId), nil
/// 				}).(pulumi.StringOutput),
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
/// resource "gcp_ces_app" "my-app" {
///   location     = "us"
///   display_name = "my-app"
///   app_id       = "app-id"
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_agent" "target_agent" {
///   agent_id     = "target-agent"
///   location     = "us"
///   app          = gcp_ces_app.my-app.app_id
///   display_name = "Target Agent"
///   instruction  = "Target agent instruction"
///   llm_agent    = {}
/// }
/// resource "gcp_ces_tool" "ces_tool_agent_basic" {
///   location       = "us"
///   app            = gcp_ces_app.my-app.name
///   tool_id        = "ces_tool_basic5"
///   execution_type = "SYNCHRONOUS"
///   agent_tool = {
///     name        = "ces_tool_agent_basic"
///     description = "example-description"
///     agent       ="projects/${gcp_ces_app.my-app.project}/locations/us/apps/${gcp_ces_app.my-app.app_id}/agents/${gcp_ces_agent.target_agent.agent_id}"
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
/// import com.pulumi.gcp.ces.Agent;
/// import com.pulumi.gcp.ces.AgentArgs;
/// import com.pulumi.gcp.ces.inputs.AgentLlmAgentArgs;
/// import com.pulumi.gcp.ces.Tool;
/// import com.pulumi.gcp.ces.ToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolAgentToolArgs;
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
///         var targetAgent = new Agent("targetAgent", AgentArgs.builder()
///             .agentId("target-agent")
///             .location("us")
///             .app(my_app.appId())
///             .displayName("Target Agent")
///             .instruction("Target agent instruction")
///             .llmAgent(AgentLlmAgentArgs.builder()
///                 .build())
///             .build());
///
///         var cesToolAgentBasic = new Tool("cesToolAgentBasic", ToolArgs.builder()
///             .location("us")
///             .app(my_app.name())
///             .toolId("ces_tool_basic5")
///             .executionType("SYNCHRONOUS")
///             .agentTool(ToolAgentToolArgs.builder()
///                 .name("ces_tool_agent_basic")
///                 .description("example-description")
///                 .agent(Output.tuple(my_app.project(), my_app.appId(), targetAgent.agentId()).applyValue(values -> {
///                     var project = values.t1;
///                     var appId = values.t2;
///                     var agentId = values.t3;
///                     return String.format("projects/%s/locations/us/apps/%s/agents/%s", project,appId,agentId);
///                 }))
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
///   targetAgent:
///     type: gcp:ces:Agent
///     name: target_agent
///     properties:
///       agentId: target-agent
///       location: us
///       app: ${["my-app"].appId}
///       displayName: Target Agent
///       instruction: Target agent instruction
///       llmAgent: {}
///   cesToolAgentBasic:
///     type: gcp:ces:Tool
///     name: ces_tool_agent_basic
///     properties:
///       location: us
///       app: ${["my-app"].name}
///       toolId: ces_tool_basic5
///       executionType: SYNCHRONOUS
///       agentTool:
///         name: ces_tool_agent_basic
///         description: example-description
///         agent: projects/${["my-app"].project}/locations/us/apps/${["my-app"].appId}/agents/${targetAgent.agentId}
/// ```
///
/// ### Ces Tool File Search Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_app = new gcp.ces.App("my-app", {
///     location: "us",
///     displayName: "my-app",
///     appId: "app-id",
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolFileSearchBasic = new gcp.ces.Tool("ces_tool_file_search_basic", {
///     location: "us",
///     app: my_app.name,
///     toolId: "ces_tool_basic6",
///     executionType: "SYNCHRONOUS",
///     fileSearchTool: {
///         name: "ces_tool_file_search_basic",
///         description: "example-description",
///         corpusType: "FULLY_MANAGED",
///         fileCorpus: pulumi.interpolate`projects/${my_app.project}/locations/us/ragCorpora/tf-test-mock-corpus`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_app = gcp.ces.App("my-app",
///     location="us",
///     display_name="my-app",
///     app_id="app-id",
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_tool_file_search_basic = gcp.ces.Tool("ces_tool_file_search_basic",
///     location="us",
///     app=my_app.name,
///     tool_id="ces_tool_basic6",
///     execution_type="SYNCHRONOUS",
///     file_search_tool={
///         "name": "ces_tool_file_search_basic",
///         "description": "example-description",
///         "corpus_type": "FULLY_MANAGED",
///         "file_corpus": my_app.project.apply(lambda project: f"projects/{project}/locations/us/ragCorpora/tf-test-mock-corpus"),
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
///     var cesToolFileSearchBasic = new Gcp.Ces.Tool("ces_tool_file_search_basic", new()
///     {
///         Location = "us",
///         App = my_app.Name,
///         ToolId = "ces_tool_basic6",
///         ExecutionType = "SYNCHRONOUS",
///         FileSearchTool = new Gcp.Ces.Inputs.ToolFileSearchToolArgs
///         {
///             Name = "ces_tool_file_search_basic",
///             Description = "example-description",
///             CorpusType = "FULLY_MANAGED",
///             FileCorpus = my_app.Project.Apply(project => $"projects/{project}/locations/us/ragCorpora/tf-test-mock-corpus"),
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
/// 		_, err = ces.NewTool(ctx, "ces_tool_file_search_basic", &ces.ToolArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           my_app.Name,
/// 			ToolId:        pulumi.String("ces_tool_basic6"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			FileSearchTool: &ces.ToolFileSearchToolArgs{
/// 				Name:        pulumi.String("ces_tool_file_search_basic"),
/// 				Description: pulumi.String("example-description"),
/// 				CorpusType:  pulumi.String("FULLY_MANAGED"),
/// 				FileCorpus: my_app.Project.ApplyT(func(project string) (string, error) {
/// 					return fmt.Sprintf("projects/%v/locations/us/ragCorpora/tf-test-mock-corpus", project), nil
/// 				}).(pulumi.StringOutput),
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
/// resource "gcp_ces_app" "my-app" {
///   location     = "us"
///   display_name = "my-app"
///   app_id       = "app-id"
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_tool" "ces_tool_file_search_basic" {
///   location       = "us"
///   app            = gcp_ces_app.my-app.name
///   tool_id        = "ces_tool_basic6"
///   execution_type = "SYNCHRONOUS"
///   file_search_tool = {
///     name        = "ces_tool_file_search_basic"
///     description = "example-description"
///     corpus_type = "FULLY_MANAGED"
///     file_corpus ="projects/${gcp_ces_app.my-app.project}/locations/us/ragCorpora/tf-test-mock-corpus"
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
/// import com.pulumi.gcp.ces.inputs.ToolFileSearchToolArgs;
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
///         var cesToolFileSearchBasic = new Tool("cesToolFileSearchBasic", ToolArgs.builder()
///             .location("us")
///             .app(my_app.name())
///             .toolId("ces_tool_basic6")
///             .executionType("SYNCHRONOUS")
///             .fileSearchTool(ToolFileSearchToolArgs.builder()
///                 .name("ces_tool_file_search_basic")
///                 .description("example-description")
///                 .corpusType("FULLY_MANAGED")
///                 .fileCorpus(my_app.project().applyValue(_project -> String.format("projects/%s/locations/us/ragCorpora/tf-test-mock-corpus", _project)))
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
///   cesToolFileSearchBasic:
///     type: gcp:ces:Tool
///     name: ces_tool_file_search_basic
///     properties:
///       location: us
///       app: ${["my-app"].name}
///       toolId: ces_tool_basic6
///       executionType: SYNCHRONOUS
///       fileSearchTool:
///         name: ces_tool_file_search_basic
///         description: example-description
///         corpusType: FULLY_MANAGED
///         fileCorpus: projects/${["my-app"].project}/locations/us/ragCorpora/tf-test-mock-corpus
/// ```
///
/// ### Ces Tool Widget Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_app = new gcp.ces.App("my-app", {
///     location: "us",
///     displayName: "my-app",
///     appId: "app-id",
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolWidgetBasic = new gcp.ces.Tool("ces_tool_widget_basic", {
///     location: "us",
///     app: my_app.name,
///     toolId: "ces_tool_basic7",
///     executionType: "SYNCHRONOUS",
///     widgetTool: {
///         name: "ces_tool_widget_basic",
///         description: "example-description",
///         widgetType: "PRODUCT_CAROUSEL",
///         uiConfig: JSON.stringify({
///             displaySettings: {
///                 showHeader: true,
///             },
///         }),
///         dataMapping: {
///             mode: "FIELD_MAPPING",
///             fieldMappings: {
///                 key1: "value1",
///                 key2: "value2",
///             },
///         },
///         textResponseConfig: {
///             type: "STATIC",
///             staticText: "example-static-text",
///         },
///         parameters: {
///             type: "OBJECT",
///             properties: JSON.stringify({
///                 param1: {
///                     type: "STRING",
///                 },
///             }),
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// my_app = gcp.ces.App("my-app",
///     location="us",
///     display_name="my-app",
///     app_id="app-id",
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_tool_widget_basic = gcp.ces.Tool("ces_tool_widget_basic",
///     location="us",
///     app=my_app.name,
///     tool_id="ces_tool_basic7",
///     execution_type="SYNCHRONOUS",
///     widget_tool={
///         "name": "ces_tool_widget_basic",
///         "description": "example-description",
///         "widget_type": "PRODUCT_CAROUSEL",
///         "ui_config": json.dumps({
///             "displaySettings": {
///                 "showHeader": True,
///             },
///         }),
///         "data_mapping": {
///             "mode": "FIELD_MAPPING",
///             "field_mappings": {
///                 "key1": "value1",
///                 "key2": "value2",
///             },
///         },
///         "text_response_config": {
///             "type": "STATIC",
///             "static_text": "example-static-text",
///         },
///         "parameters": {
///             "type": "OBJECT",
///             "properties": json.dumps({
///                 "param1": {
///                     "type": "STRING",
///                 },
///             }),
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
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
///     var cesToolWidgetBasic = new Gcp.Ces.Tool("ces_tool_widget_basic", new()
///     {
///         Location = "us",
///         App = my_app.Name,
///         ToolId = "ces_tool_basic7",
///         ExecutionType = "SYNCHRONOUS",
///         WidgetTool = new Gcp.Ces.Inputs.ToolWidgetToolArgs
///         {
///             Name = "ces_tool_widget_basic",
///             Description = "example-description",
///             WidgetType = "PRODUCT_CAROUSEL",
///             UiConfig = JsonSerializer.Serialize(new Dictionary<string, object?>
///             {
///                 ["displaySettings"] = new Dictionary<string, object?>
///                 {
///                     ["showHeader"] = true,
///                 },
///             }),
///             DataMapping = new Gcp.Ces.Inputs.ToolWidgetToolDataMappingArgs
///             {
///                 Mode = "FIELD_MAPPING",
///                 FieldMappings =
///                 {
///                     { "key1", "value1" },
///                     { "key2", "value2" },
///                 },
///             },
///             TextResponseConfig = new Gcp.Ces.Inputs.ToolWidgetToolTextResponseConfigArgs
///             {
///                 Type = "STATIC",
///                 StaticText = "example-static-text",
///             },
///             Parameters = new Gcp.Ces.Inputs.ToolWidgetToolParametersArgs
///             {
///                 Type = "OBJECT",
///                 Properties = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["param1"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "STRING",
///                     },
///                 }),
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
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
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
/// 		tmpJSON0, err := json.Marshal(map[string]map[string]bool{
/// 			"displaySettings": map[string]bool{
/// 				"showHeader": true,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]map[string]string{
/// 			"param1": map[string]string{
/// 				"type": "STRING",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = ces.NewTool(ctx, "ces_tool_widget_basic", &ces.ToolArgs{
/// 			Location:      pulumi.String("us"),
/// 			App:           my_app.Name,
/// 			ToolId:        pulumi.String("ces_tool_basic7"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			WidgetTool: &ces.ToolWidgetToolArgs{
/// 				Name:        pulumi.String("ces_tool_widget_basic"),
/// 				Description: pulumi.String("example-description"),
/// 				WidgetType:  pulumi.String("PRODUCT_CAROUSEL"),
/// 				UiConfig:    pulumi.String(json0),
/// 				DataMapping: &ces.ToolWidgetToolDataMappingArgs{
/// 					Mode: pulumi.String("FIELD_MAPPING"),
/// 					FieldMappings: pulumi.StringMap{
/// 						"key1": pulumi.String("value1"),
/// 						"key2": pulumi.String("value2"),
/// 					},
/// 				},
/// 				TextResponseConfig: &ces.ToolWidgetToolTextResponseConfigArgs{
/// 					Type:       pulumi.String("STATIC"),
/// 					StaticText: pulumi.String("example-static-text"),
/// 				},
/// 				Parameters: &ces.ToolWidgetToolParametersArgs{
/// 					Type:       pulumi.String("OBJECT"),
/// 					Properties: pulumi.String(json1),
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
/// resource "gcp_ces_app" "my-app" {
///   location     = "us"
///   display_name = "my-app"
///   app_id       = "app-id"
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_tool" "ces_tool_widget_basic" {
///   location       = "us"
///   app            = gcp_ces_app.my-app.name
///   tool_id        = "ces_tool_basic7"
///   execution_type = "SYNCHRONOUS"
///   widget_tool = {
///     name        = "ces_tool_widget_basic"
///     description = "example-description"
///     widget_type = "PRODUCT_CAROUSEL"
///     ui_config = jsonencode({
///       "displaySettings" = {
///         "showHeader" = true
///       }
///     })
///     data_mapping = {
///       mode = "FIELD_MAPPING"
///       field_mappings = {
///         "key1" = "value1"
///         "key2" = "value2"
///       }
///     }
///     text_response_config = {
///       type        = "STATIC"
///       static_text = "example-static-text"
///     }
///     parameters = {
///       type = "OBJECT"
///       properties = jsonencode({
///         "param1" = {
///           "type" = "STRING"
///         }
///       })
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
/// import com.pulumi.gcp.ces.inputs.ToolWidgetToolArgs;
/// import com.pulumi.gcp.ces.inputs.ToolWidgetToolDataMappingArgs;
/// import com.pulumi.gcp.ces.inputs.ToolWidgetToolTextResponseConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolWidgetToolParametersArgs;
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
///         var cesToolWidgetBasic = new Tool("cesToolWidgetBasic", ToolArgs.builder()
///             .location("us")
///             .app(my_app.name())
///             .toolId("ces_tool_basic7")
///             .executionType("SYNCHRONOUS")
///             .widgetTool(ToolWidgetToolArgs.builder()
///                 .name("ces_tool_widget_basic")
///                 .description("example-description")
///                 .widgetType("PRODUCT_CAROUSEL")
///                 .uiConfig(serializeJson(
///                     jsonObject(
///                         jsonProperty("displaySettings", jsonObject(
///                             jsonProperty("showHeader", true)
///                         ))
///                     )))
///                 .dataMapping(ToolWidgetToolDataMappingArgs.builder()
///                     .mode("FIELD_MAPPING")
///                     .fieldMappings(Map.ofEntries(
///                         Map.entry("key1", "value1"),
///                         Map.entry("key2", "value2")
///                     ))
///                     .build())
///                 .textResponseConfig(ToolWidgetToolTextResponseConfigArgs.builder()
///                     .type("STATIC")
///                     .staticText("example-static-text")
///                     .build())
///                 .parameters(ToolWidgetToolParametersArgs.builder()
///                     .type("OBJECT")
///                     .properties(serializeJson(
///                         jsonObject(
///                             jsonProperty("param1", jsonObject(
///                                 jsonProperty("type", "STRING")
///                             ))
///                         )))
///                     .build())
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
///   cesToolWidgetBasic:
///     type: gcp:ces:Tool
///     name: ces_tool_widget_basic
///     properties:
///       location: us
///       app: ${["my-app"].name}
///       toolId: ces_tool_basic7
///       executionType: SYNCHRONOUS
///       widgetTool:
///         name: ces_tool_widget_basic
///         description: example-description
///         widgetType: PRODUCT_CAROUSEL
///         uiConfig:
///           fn::toJSON:
///             displaySettings:
///               showHeader: true
///         dataMapping:
///           mode: FIELD_MAPPING
///           fieldMappings:
///             key1: value1
///             key2: value2
///         textResponseConfig:
///           type: STATIC
///           staticText: example-static-text
///         parameters:
///           type: OBJECT
///           properties:
///             fn::toJSON:
///               param1:
///                 type: STRING
/// ```
///
///
/// ## Import
///
/// Tool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/tools/{{name}}`
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
/// * `{{location}}/{{app}}/{{name}}`
///
///
/// When using the `pulumi import` command, Tool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/tool:Tool default projects/{{project}}/locations/{{location}}/apps/{{app}}/tools/{{name}}
/// $ pulumi import gcp:ces/tool:Tool default {{project}}/{{location}}/{{app}}/{{name}}
/// $ pulumi import gcp:ces/tool:Tool default {{location}}/{{app}}/{{name}}
/// ```
class Tool extends pulumi.CustomResource {
  /// Represents a tool that allows the agent to call another agent.
  /// Structure is documented below.
  late final pulumi.Output<ToolAgentTool?> agentTool;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> app;
  /// Represents a client-side function that the agent can invoke. When the
  /// tool is chosen by the agent, control is handed off to the client.
  /// The client is responsible for executing the function and returning the result
  /// as a ToolResponse to continue the interaction with the agent.
  /// Structure is documented below.
  late final pulumi.Output<ToolClientFunction?> clientFunction;
  /// A ConnectorTool allows connections to different integrations.
  /// Structure is documented below.
  late final pulumi.Output<List<ToolConnectorTool>> connectorTools;
  /// Timestamp when the tool was created.
  late final pulumi.Output<String> createTime;
  /// Tool to retrieve from Vertex AI Search datastore or engine for grounding.
  /// Accepts either a datastore or an engine, but not both.
  /// See Vertex AI Search:
  /// https://cloud.google.com/generative-ai-app-builder/docs/enterprise-search-introduction.
  /// Structure is documented below.
  late final pulumi.Output<ToolDataStoreTool?> dataStoreTool;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// (Output)
  /// The name of the allowed custom CA certificates. This
  /// can be used to disambiguate the custom CA certificates.
  late final pulumi.Output<String> displayName;
  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;
  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  late final pulumi.Output<String?> executionType;
  /// The file search tool allows the agent to search across the files uploaded by the
  /// app/agent developer.
  /// Structure is documented below.
  late final pulumi.Output<ToolFileSearchTool?> fileSearchTool;
  /// If the tool is generated by the LLM assistant, this field contains a
  /// descriptive summary of the generation.
  late final pulumi.Output<String> generatedSummary;
  /// Represents a tool to perform Google web searches for grounding.
  /// See
  /// https://cloud.google.com/vertex-ai/generative-ai/docs/grounding/grounding-with-google-search.
  /// Structure is documented below.
  late final pulumi.Output<ToolGoogleSearchTool?> googleSearchTool;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// An MCP tool.
  /// Structure is documented below.
  late final pulumi.Output<List<ToolMcpTool>> mcpTools;
  /// (Output)
  /// The name of the system tool.
  late final pulumi.Output<String> name;
  /// A remote API tool defined by an OpenAPI schema.
  /// Structure is documented below.
  late final pulumi.Output<List<ToolOpenApiTool>> openApiTools;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A Python function tool.
  /// Structure is documented below.
  late final pulumi.Output<ToolPythonFunction?> pythonFunction;
  /// Represents a tool that allows the agent to call another remote agent.
  /// Structure is documented below.
  late final pulumi.Output<List<ToolRemoteAgentTool>> remoteAgentTools;
  /// The system tool.
  /// Structure is documented below.
  late final pulumi.Output<List<ToolSystemTool>> systemTools;
  /// The timeout for the tool execution. If not set, the default timeout is 30
  /// seconds for SYNCHRONOUS tools and 60 seconds for ASYNCHRONOUS tools.
  late final pulumi.Output<String?> timeout;
  /// Configuration for tool behavior in fake mode.
  /// Structure is documented below.
  late final pulumi.Output<ToolToolFakeConfig?> toolFakeConfig;
  /// The ID to use for the tool, which will become the final component of
  /// the tool's resource name. If not provided, a unique ID will be
  /// automatically assigned for the tool.
  late final pulumi.Output<String> toolId;
  /// Timestamp when the tool was last updated.
  late final pulumi.Output<String> updateTime;
  /// Represents a widget tool that the agent can invoke.
  /// Structure is documented below.
  late final pulumi.Output<ToolWidgetTool?> widgetTool;

  /// Creates a new [Tool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tool]. {@macro pulumi_ces_tool_tool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tool(
    String name, {
    ToolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/tool:Tool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    agentTool = registerOutput<ToolAgentTool?>('agentTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolAgentTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    app = registerOutput<String>('app');
    clientFunction = registerOutput<ToolClientFunction?>('clientFunction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolClientFunction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectorTools = registerOutput<List<ToolConnectorTool>>('connectorTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolConnectorTool>(guardedValue, (value) => ToolConnectorTool.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    dataStoreTool = registerOutput<ToolDataStoreTool?>('dataStoreTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolDataStoreTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    executionType = registerOutput<String?>('executionType');
    fileSearchTool = registerOutput<ToolFileSearchTool?>('fileSearchTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolFileSearchTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    generatedSummary = registerOutput<String>('generatedSummary');
    googleSearchTool = registerOutput<ToolGoogleSearchTool?>('googleSearchTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolGoogleSearchTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    mcpTools = registerOutput<List<ToolMcpTool>>('mcpTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolMcpTool>(guardedValue, (value) => ToolMcpTool.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openApiTools = registerOutput<List<ToolOpenApiTool>>('openApiTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolOpenApiTool>(guardedValue, (value) => ToolOpenApiTool.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pythonFunction = registerOutput<ToolPythonFunction?>('pythonFunction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolPythonFunction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteAgentTools = registerOutput<List<ToolRemoteAgentTool>>('remoteAgentTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolRemoteAgentTool>(guardedValue, (value) => ToolRemoteAgentTool.fromMap((value as Map).cast<String, dynamic>())); });
    systemTools = registerOutput<List<ToolSystemTool>>('systemTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolSystemTool>(guardedValue, (value) => ToolSystemTool.fromMap((value as Map).cast<String, dynamic>())); });
    timeout = registerOutput<String?>('timeout');
    toolFakeConfig = registerOutput<ToolToolFakeConfig?>('toolFakeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolToolFakeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    toolId = registerOutput<String>('toolId');
    updateTime = registerOutput<String>('updateTime');
    widgetTool = registerOutput<ToolWidgetTool?>('widgetTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolWidgetTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Tool] resource's state with the given [name] and [id].
  static Tool get(
    String name,
    pulumi.Input<String> id, {
    ToolState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Tool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Tool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/tool:Tool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentTool = registerOutput<ToolAgentTool?>('agentTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolAgentTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    app = registerOutput<String>('app');
    clientFunction = registerOutput<ToolClientFunction?>('clientFunction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolClientFunction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectorTools = registerOutput<List<ToolConnectorTool>>('connectorTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolConnectorTool>(guardedValue, (value) => ToolConnectorTool.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    dataStoreTool = registerOutput<ToolDataStoreTool?>('dataStoreTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolDataStoreTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    executionType = registerOutput<String?>('executionType');
    fileSearchTool = registerOutput<ToolFileSearchTool?>('fileSearchTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolFileSearchTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    generatedSummary = registerOutput<String>('generatedSummary');
    googleSearchTool = registerOutput<ToolGoogleSearchTool?>('googleSearchTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolGoogleSearchTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    mcpTools = registerOutput<List<ToolMcpTool>>('mcpTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolMcpTool>(guardedValue, (value) => ToolMcpTool.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openApiTools = registerOutput<List<ToolOpenApiTool>>('openApiTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolOpenApiTool>(guardedValue, (value) => ToolOpenApiTool.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pythonFunction = registerOutput<ToolPythonFunction?>('pythonFunction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolPythonFunction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteAgentTools = registerOutput<List<ToolRemoteAgentTool>>('remoteAgentTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolRemoteAgentTool>(guardedValue, (value) => ToolRemoteAgentTool.fromMap((value as Map).cast<String, dynamic>())); });
    systemTools = registerOutput<List<ToolSystemTool>>('systemTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolSystemTool>(guardedValue, (value) => ToolSystemTool.fromMap((value as Map).cast<String, dynamic>())); });
    timeout = registerOutput<String?>('timeout');
    toolFakeConfig = registerOutput<ToolToolFakeConfig?>('toolFakeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolToolFakeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    toolId = registerOutput<String>('toolId');
    updateTime = registerOutput<String>('updateTime');
    widgetTool = registerOutput<ToolWidgetTool?>('widgetTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolWidgetTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Tool] resource.
  Tool.reference(String urn)
    : super(
        'gcp:ces/tool:Tool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentTool = registerOutput<ToolAgentTool?>('agentTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolAgentTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    app = registerOutput<String>('app');
    clientFunction = registerOutput<ToolClientFunction?>('clientFunction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolClientFunction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectorTools = registerOutput<List<ToolConnectorTool>>('connectorTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolConnectorTool>(guardedValue, (value) => ToolConnectorTool.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    dataStoreTool = registerOutput<ToolDataStoreTool?>('dataStoreTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolDataStoreTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    executionType = registerOutput<String?>('executionType');
    fileSearchTool = registerOutput<ToolFileSearchTool?>('fileSearchTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolFileSearchTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    generatedSummary = registerOutput<String>('generatedSummary');
    googleSearchTool = registerOutput<ToolGoogleSearchTool?>('googleSearchTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolGoogleSearchTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    mcpTools = registerOutput<List<ToolMcpTool>>('mcpTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolMcpTool>(guardedValue, (value) => ToolMcpTool.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openApiTools = registerOutput<List<ToolOpenApiTool>>('openApiTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolOpenApiTool>(guardedValue, (value) => ToolOpenApiTool.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pythonFunction = registerOutput<ToolPythonFunction?>('pythonFunction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolPythonFunction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteAgentTools = registerOutput<List<ToolRemoteAgentTool>>('remoteAgentTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolRemoteAgentTool>(guardedValue, (value) => ToolRemoteAgentTool.fromMap((value as Map).cast<String, dynamic>())); });
    systemTools = registerOutput<List<ToolSystemTool>>('systemTools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ToolSystemTool>(guardedValue, (value) => ToolSystemTool.fromMap((value as Map).cast<String, dynamic>())); });
    timeout = registerOutput<String?>('timeout');
    toolFakeConfig = registerOutput<ToolToolFakeConfig?>('toolFakeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolToolFakeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    toolId = registerOutput<String>('toolId');
    updateTime = registerOutput<String>('updateTime');
    widgetTool = registerOutput<ToolWidgetTool?>('widgetTool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolWidgetTool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
