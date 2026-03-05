import 'package:pulumi/pulumi.dart' as pulumi;
import 'workbook_template_args.dart';
import 'workbook_template_state.dart';

/// Manages an Application Insights Workbook Template.
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
/// const exampleWorkbookTemplate = new azure.appinsights.WorkbookTemplate("example", {
///     name: "example-aiwt",
///     resourceGroupName: example.name,
///     location: "West Europe",
///     author: "test author",
///     priority: 1,
///     galleries: [{
///         category: "workbook",
///         name: "test",
///         order: 100,
///         resourceType: "microsoft.insights/components",
///         type: "tsg",
///     }],
///     templateData: JSON.stringify({
///         version: "Notebook/1.0",
///         items: [{
///             type: 1,
///             content: {
///                 json: `## New workbook
/// ---
///
/// Welcome to your new workbook.`,
///             },
///             name: "text - 2",
///         }],
///         styleSettings: {},
///         $schema: "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json",
///     }),
///     localized: JSON.stringify({
///         ar: [{
///             galleries: [{
///                 name: "test",
///                 category: "Failures",
///                 type: "tsg",
///                 resourceType: "microsoft.insights/components",
///                 order: 100,
///             }],
///             templateData: {
///                 version: "Notebook/1.0",
///                 items: [{
///                     type: 1,
///                     content: {
///                         json: `## New workbook
/// ---
///
/// Welcome to your new workbook.`,
///                     },
///                     name: "text - 2",
///                 }],
///                 styleSettings: {},
///                 $schema: "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json",
///             },
///         }],
///     }),
///     tags: {
///         key: "value",
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
/// example_workbook_template = azure.appinsights.WorkbookTemplate("example",
///     name="example-aiwt",
///     resource_group_name=example.name,
///     location="West Europe",
///     author="test author",
///     priority=1,
///     galleries=[{
///         "category": "workbook",
///         "name": "test",
///         "order": 100,
///         "resource_type": "microsoft.insights/components",
///         "type": "tsg",
///     }],
///     template_data=json.dumps({
///         "version": "Notebook/1.0",
///         "items": [{
///             "type": 1,
///             "content": {
///                 "json": """## New workbook
/// ---
///
/// Welcome to your new workbook.""",
///             },
///             "name": "text - 2",
///         }],
///         "styleSettings": {},
///         "$schema": "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json",
///     }),
///     localized=json.dumps({
///         "ar": [{
///             "galleries": [{
///                 "name": "test",
///                 "category": "Failures",
///                 "type": "tsg",
///                 "resourceType": "microsoft.insights/components",
///                 "order": 100,
///             }],
///             "templateData": {
///                 "version": "Notebook/1.0",
///                 "items": [{
///                     "type": 1,
///                     "content": {
///                         "json": """## New workbook
/// ---
///
/// Welcome to your new workbook.""",
///                     },
///                     "name": "text - 2",
///                 }],
///                 "styleSettings": {},
///                 "$schema": "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json",
///             },
///         }],
///     }),
///     tags={
///         "key": "value",
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
///     var exampleWorkbookTemplate = new Azure.AppInsights.WorkbookTemplate("example", new()
///     {
///         Name = "example-aiwt",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///         Author = "test author",
///         Priority = 1,
///         Galleries = new[]
///         {
///             new Azure.AppInsights.Inputs.WorkbookTemplateGalleryArgs
///             {
///                 Category = "workbook",
///                 Name = "test",
///                 Order = 100,
///                 ResourceType = "microsoft.insights/components",
///                 Type = "tsg",
///             },
///         },
///         TemplateData = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["version"] = "Notebook/1.0",
///             ["items"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["type"] = 1,
///                     ["content"] = new Dictionary<string, object?>
///                     {
///                         ["json"] = @"## New workbook
/// ---
///
/// Welcome to your new workbook.",
///                     },
///                     ["name"] = "text - 2",
///                 },
///             },
///             ["styleSettings"] = new Dictionary<string, object?>
///             {
///             },
///             ["$schema"] = "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json",
///         }),
///         Localized = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["ar"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["galleries"] = new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["name"] = "test",
///                             ["category"] = "Failures",
///                             ["type"] = "tsg",
///                             ["resourceType"] = "microsoft.insights/components",
///                             ["order"] = 100,
///                         },
///                     },
///                     ["templateData"] = new Dictionary<string, object?>
///                     {
///                         ["version"] = "Notebook/1.0",
///                         ["items"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["type"] = 1,
///                                 ["content"] = new Dictionary<string, object?>
///                                 {
///                                     ["json"] = @"## New workbook
/// ---
///
/// Welcome to your new workbook.",
///                                 },
///                                 ["name"] = "text - 2",
///                             },
///                         },
///                         ["styleSettings"] = new Dictionary<string, object?>
///                         {
///                         },
///                         ["$schema"] = "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json",
///                     },
///                 },
///             },
///         }),
///         Tags =
///         {
///             { "key", "value" },
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
/// 						"json": "## New workbook\n---\n\nWelcome to your new workbook.",
/// 					},
/// 					"name": "text - 2",
/// 				},
/// 			},
/// 			"styleSettings": map[string]interface{}{},
/// 			"$schema":       "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"ar": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"galleries": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"name":         "test",
/// 							"category":     "Failures",
/// 							"type":         "tsg",
/// 							"resourceType": "microsoft.insights/components",
/// 							"order":        100,
/// 						},
/// 					},
/// 					"templateData": map[string]interface{}{
/// 						"version": "Notebook/1.0",
/// 						"items": []map[string]interface{}{
/// 							map[string]interface{}{
/// 								"type": 1,
/// 								"content": map[string]interface{}{
/// 									"json": "## New workbook\n---\n\nWelcome to your new workbook.",
/// 								},
/// 								"name": "text - 2",
/// 							},
/// 						},
/// 						"styleSettings": map[string]interface{}{},
/// 						"$schema":       "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = appinsights.NewWorkbookTemplate(ctx, "example", &appinsights.WorkbookTemplateArgs{
/// 			Name:              pulumi.String("example-aiwt"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
/// 			Author:            pulumi.String("test author"),
/// 			Priority:          pulumi.Int(1),
/// 			Galleries: appinsights.WorkbookTemplateGalleryArray{
/// 				&appinsights.WorkbookTemplateGalleryArgs{
/// 					Category:     pulumi.String("workbook"),
/// 					Name:         pulumi.String("test"),
/// 					Order:        pulumi.Int(100),
/// 					ResourceType: pulumi.String("microsoft.insights/components"),
/// 					Type:         pulumi.String("tsg"),
/// 				},
/// 			},
/// 			TemplateData: pulumi.String(json0),
/// 			Localized:    pulumi.String(json1),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appinsights.WorkbookTemplate;
/// import com.pulumi.azure.appinsights.WorkbookTemplateArgs;
/// import com.pulumi.azure.appinsights.inputs.WorkbookTemplateGalleryArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleWorkbookTemplate = new WorkbookTemplate("exampleWorkbookTemplate", WorkbookTemplateArgs.builder()
///             .name("example-aiwt")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .author("test author")
///             .priority(1)
///             .galleries(WorkbookTemplateGalleryArgs.builder()
///                 .category("workbook")
///                 .name("test")
///                 .order(100)
///                 .resourceType("microsoft.insights/components")
///                 .type("tsg")
///                 .build())
///             .templateData(serializeJson(
///                 jsonObject(
///                     jsonProperty("version", "Notebook/1.0"),
///                     jsonProperty("items", jsonArray(jsonObject(
///                         jsonProperty("type", 1),
///                         jsonProperty("content", jsonObject(
///                             jsonProperty("json", """
/// ## New workbook
/// ---
///
/// Welcome to your new workbook.                            """)
///                         )),
///                         jsonProperty("name", "text - 2")
///                     ))),
///                     jsonProperty("styleSettings", jsonObject(
///
///                     )),
///                     jsonProperty("$schema", "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json")
///                 )))
///             .localized(serializeJson(
///                 jsonObject(
///                     jsonProperty("ar", jsonArray(jsonObject(
///                         jsonProperty("galleries", jsonArray(jsonObject(
///                             jsonProperty("name", "test"),
///                             jsonProperty("category", "Failures"),
///                             jsonProperty("type", "tsg"),
///                             jsonProperty("resourceType", "microsoft.insights/components"),
///                             jsonProperty("order", 100)
///                         ))),
///                         jsonProperty("templateData", jsonObject(
///                             jsonProperty("version", "Notebook/1.0"),
///                             jsonProperty("items", jsonArray(jsonObject(
///                                 jsonProperty("type", 1),
///                                 jsonProperty("content", jsonObject(
///                                     jsonProperty("json", """
/// ## New workbook
/// ---
///
/// Welcome to your new workbook.                                    """)
///                                 )),
///                                 jsonProperty("name", "text - 2")
///                             ))),
///                             jsonProperty("styleSettings", jsonObject(
///
///                             )),
///                             jsonProperty("$schema", "https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json")
///                         ))
///                     )))
///                 )))
///             .tags(Map.of("key", "value"))
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
///   exampleWorkbookTemplate:
///     type: azure:appinsights:WorkbookTemplate
///     name: example
///     properties:
///       name: example-aiwt
///       resourceGroupName: ${example.name}
///       location: West Europe
///       author: test author
///       priority: 1
///       galleries:
///         - category: workbook
///           name: test
///           order: 100
///           resourceType: microsoft.insights/components
///           type: tsg
///       templateData:
///         fn::toJSON:
///           version: Notebook/1.0
///           items:
///             - type: 1
///               content:
///                 json: |-
///                   ## New workbook
///                   ---
///
///                   Welcome to your new workbook.
///               name: text - 2
///           styleSettings: {}
///           $schema: https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json
///       localized:
///         fn::toJSON:
///           ar:
///             - galleries:
///                 - name: test
///                   category: Failures
///                   type: tsg
///                   resourceType: microsoft.insights/components
///                   order: 100
///               templateData:
///                 version: Notebook/1.0
///                 items:
///                   - type: 1
///                     content:
///                       json: |-
///                         ## New workbook
///                         ---
///
///                         Welcome to your new workbook.
///                     name: text - 2
///                 styleSettings: {}
///                 $schema: https://github.com/Microsoft/Application-Insights-Workbooks/blob/master/schema/workbook.json
///       tags:
///         key: value
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2020-11-20
///
/// ## Import
///
/// Application Insights Workbook Template can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appinsights/workbookTemplate:WorkbookTemplate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Insights/workbookTemplates/resource1
/// ```
class WorkbookTemplate extends pulumi.CustomResource {
  /// Information about the author of the workbook template.
  late final pulumi.Output<String?> author;
  /// A `galleries` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> galleries;
  /// Key value pairs of localized gallery. Each key is the locale code of languages supported by the Azure portal.
  late final pulumi.Output<String?> localized;
  /// Specifies the Azure Region where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name which should be used for this Application Insights Workbook Template. Changing this forces a new Application Insights Workbook Template to be created.
  late final pulumi.Output<String> name;
  /// Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode. Defaults to `0`.
  late final pulumi.Output<int?> priority;
  /// Specifies the name of the Resource Group where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Application Insights Workbook Template.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Valid JSON object containing workbook template payload.
  late final pulumi.Output<String> templateData;

  /// Creates a new [WorkbookTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkbookTemplate]. {@macro pulumi_appinsights_workbook_template_workbook_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkbookTemplate(
    String name, {
    WorkbookTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/workbookTemplate:WorkbookTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    author = registerOutput<String?>('author');
    galleries = registerOutput<List<Map<String, dynamic>>>('galleries');
    localized = registerOutput<String?>('localized');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    templateData = registerOutput<String>('templateData');
  }

  /// Gets an existing [WorkbookTemplate] resource's state with the given [name] and [id].
  static WorkbookTemplate get(
    String name,
    pulumi.Input<String> id, {
    WorkbookTemplateState? state,
  }) {
    return WorkbookTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkbookTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/workbookTemplate:WorkbookTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    author = registerOutput<String?>('author');
    galleries = registerOutput<List<Map<String, dynamic>>>('galleries');
    localized = registerOutput<String?>('localized');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    templateData = registerOutput<String>('templateData');
  }
}
