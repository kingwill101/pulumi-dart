import 'package:pulumi/pulumi.dart' as pulumi;
import 'workbook_args.dart';
import 'workbook_identity.dart';
import 'workbook_state.dart';

/// Manages an Azure Workbook.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleWorkbook = new azure.appinsights.Workbook("example", {
///     name: "85b3e8bb-fc93-40be-83f2-98f6bec18ba0",
///     resourceGroupName: example.name,
///     location: example.location,
///     displayName: "workbook1",
///     dataJson: JSON.stringify({
///         version: "Notebook/1.0",
///         items: [{
///             type: 1,
///             content: {
///                 json: "Test2022",
///             },
///             name: "text - 0",
///         }],
///         isLocked: false,
///         fallbackResourceIds: ["Azure Monitor"],
///     }),
///     tags: {
///         ENV: "Test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_workbook = azure.appinsights.Workbook("example",
///     name="85b3e8bb-fc93-40be-83f2-98f6bec18ba0",
///     resource_group_name=example.name,
///     location=example.location,
///     display_name="workbook1",
///     data_json=json.dumps({
///         "version": "Notebook/1.0",
///         "items": [{
///             "type": 1,
///             "content": {
///                 "json": "Test2022",
///             },
///             "name": "text - 0",
///         }],
///         "isLocked": False,
///         "fallbackResourceIds": ["Azure Monitor"],
///     }),
///     tags={
///         "ENV": "Test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleWorkbook = new Azure.AppInsights.Workbook("example", new()
///     {
///         Name = "85b3e8bb-fc93-40be-83f2-98f6bec18ba0",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DisplayName = "workbook1",
///         DataJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["version"] = "Notebook/1.0",
///             ["items"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["type"] = 1,
///                     ["content"] = new Dictionary<string, object?>
///                     {
///                         ["json"] = "Test2022",
///                     },
///                     ["name"] = "text - 0",
///                 },
///             },
///             ["isLocked"] = false,
///             ["fallbackResourceIds"] = new[]
///             {
///                 "Azure Monitor",
///             },
///         }),
///         Tags =
///         {
///             { "ENV", "Test" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"version": "Notebook/1.0",
/// 			"items": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"type": 1,
/// 					"content": map[string]interface{}{
/// 						"json": "Test2022",
/// 					},
/// 					"name": "text - 0",
/// 				},
/// 			},
/// 			"isLocked": false,
/// 			"fallbackResourceIds": []string{
/// 				"Azure Monitor",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = appinsights.NewWorkbook(ctx, "example", &appinsights.WorkbookArgs{
/// 			Name:              pulumi.String("85b3e8bb-fc93-40be-83f2-98f6bec18ba0"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DisplayName:       pulumi.String("workbook1"),
/// 			DataJson:          pulumi.String(json0),
/// 			Tags: pulumi.StringMap{
/// 				"ENV": pulumi.String("Test"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_appinsights_workbook" "example" {
///   name                = "85b3e8bb-fc93-40be-83f2-98f6bec18ba0"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   display_name        = "workbook1"
///   data_json = jsonencode({
///     "version" = "Notebook/1.0"
///     "items" = [{
///       "type" = 1
///       "content" = {
///         "json" = "Test2022"
///       }
///       "name" = "text - 0"
///     }]
///     "isLocked"            = false
///     "fallbackResourceIds" = ["Azure Monitor"]
///   })
///   tags = {
///     "ENV" = "Test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appinsights.Workbook;
/// import com.pulumi.azure.appinsights.WorkbookArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleWorkbook = new Workbook("exampleWorkbook", WorkbookArgs.builder()
///             .name("85b3e8bb-fc93-40be-83f2-98f6bec18ba0")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .displayName("workbook1")
///             .dataJson(serializeJson(
///                 jsonObject(
///                     jsonProperty("version", "Notebook/1.0"),
///                     jsonProperty("items", jsonArray(jsonObject(
///                         jsonProperty("type", 1),
///                         jsonProperty("content", jsonObject(
///                             jsonProperty("json", "Test2022")
///                         )),
///                         jsonProperty("name", "text - 0")
///                     ))),
///                     jsonProperty("isLocked", false),
///                     jsonProperty("fallbackResourceIds", jsonArray("Azure Monitor"))
///                 )))
///             .tags(Map.of("ENV", "Test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleWorkbook:
///     type: azure:appinsights:Workbook
///     name: example
///     properties:
///       name: 85b3e8bb-fc93-40be-83f2-98f6bec18ba0
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       displayName: workbook1
///       dataJson:
///         fn::toJSON:
///           version: Notebook/1.0
///           items:
///             - type: 1
///               content:
///                 json: Test2022
///               name: text - 0
///           isLocked: false
///           fallbackResourceIds:
///             - Azure Monitor
///       tags:
///         ENV: Test
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2022-04-01
///
/// ## Import
///
/// Workbooks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appinsights/workbook:Workbook example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Insights/workbooks/resource1
/// ```
class Workbook extends pulumi.CustomResource {
  /// Workbook category, as defined by the user at creation time. There may be additional category types beyond the following: `workbook`, `sentinel`. Defaults to `workbook`.
  late final pulumi.Output<String?> category;
  /// Configuration of this particular workbook. Configuration data is a string containing valid JSON.
  late final pulumi.Output<String> dataJson;
  /// Specifies the description of the workbook.
  late final pulumi.Output<String?> description;
  /// Specifies the user-defined name (display name) of the workbook.
  late final pulumi.Output<String> displayName;
  /// An `identity` block as defined below. Changing this forces a new Workbook to be created.
  late final pulumi.Output<WorkbookIdentity?> identity;
  /// Specifies the Azure Region where the Workbook should exist. Changing this forces a new Workbook to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of this Workbook as a UUID/GUID. It should not contain any uppercase letters. Changing this forces a new Workbook to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Resource Group where the Workbook should exist. Changing this forces a new Workbook to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Resource ID for a source resource. It should not contain any uppercase letters. Defaults to `azure monitor`.
  late final pulumi.Output<String?> sourceId;
  /// Specifies the Resource Manager ID of the Storage Container when bring your own storage is used. Changing this forces a new Workbook to be created.
  ///
  /// &gt; **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azure.storage.Container` Data Source/Resource as `resourceManagerId`.
  late final pulumi.Output<String?> storageContainerId;
  /// A mapping of tags which should be assigned to the Workbook.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Workbook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workbook]. {@macro pulumi_appinsights_workbook_workbook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workbook(
    String name, {
    WorkbookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/workbook:Workbook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    category = registerOutput<String?>('category');
    dataJson = registerOutput<String>('dataJson');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    identity = registerOutput<WorkbookIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkbookIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceId = registerOutput<String?>('sourceId');
    storageContainerId = registerOutput<String?>('storageContainerId');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Workbook] resource's state with the given [name] and [id].
  static Workbook get(
    String name,
    pulumi.Input<String> id, {
    WorkbookState? state,
  }) {
    return Workbook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Workbook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/workbook:Workbook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    category = registerOutput<String?>('category');
    dataJson = registerOutput<String>('dataJson');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    identity = registerOutput<WorkbookIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkbookIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceId = registerOutput<String?>('sourceId');
    storageContainerId = registerOutput<String?>('storageContainerId');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
