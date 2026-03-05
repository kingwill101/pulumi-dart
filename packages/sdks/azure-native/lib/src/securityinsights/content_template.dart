import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_template_args.dart';
import 'metadata_author_response.dart';
import 'metadata_categories_response.dart';
import 'metadata_dependencies_response.dart';
import 'metadata_source_response.dart';
import 'metadata_support_response.dart';
import 'system_data_response.dart';

/// Template resource definition.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Get a template.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var contentTemplate = new AzureNative.SecurityInsights.ContentTemplate("contentTemplate", new()
///     {
///         Author = new AzureNative.SecurityInsights.Inputs.MetadataAuthorArgs
///         {
///             Email = "support@microsoft.com",
///             Name = "Microsoft",
///         },
///         ContentId = "8365ebfe-a381-45b7-ad08-7d818070e11f",
///         ContentKind = AzureNative.SecurityInsights.Kind.AnalyticsRule,
///         ContentProductId = "str.azure-sentinel-solution-str-ar-cbfe4fndz66bi",
///         DisplayName = "API Protection workbook template",
///         MainTemplate = new Dictionary<string, object?>
///         {
///             ["$schema"] = "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
///             ["contentVersion"] = "1.0.1",
///             ["resources"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["apiVersion"] = "2022-04-01-preview",
///                     ["kind"] = "Scheduled",
///                     ["location"] = "[parameters('workspace-location')]",
///                     ["name"] = "8365ebfe-a381-45b7-ad08-7d818070e11f",
///                     ["properties"] = new Dictionary<string, object?>
///                     {
///                         ["description"] = "Creates an incident when a large number of Critical/High severity CrowdStrike Falcon sensor detections is triggered by a single user",
///                         ["displayName"] = "Critical or High Severity Detections by User",
///                         ["enabled"] = false,
///                         ["query"] = "...",
///                         ["queryFrequency"] = "PT1H",
///                         ["queryPeriod"] = "PT1H",
///                         ["severity"] = "High",
///                         ["status"] = "Available",
///                         ["suppressionDuration"] = "PT1H",
///                         ["suppressionEnabled"] = false,
///                         ["triggerOperator"] = "GreaterThan",
///                         ["triggerThreshold"] = 0,
///                     },
///                     ["type"] = "Microsoft.SecurityInsights/AlertRuleTemplates",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["apiVersion"] = "2022-01-01-preview",
///                     ["name"] = "[concat(parameters('workspace'),'/Microsoft.SecurityInsights/',concat('AnalyticsRule-', last(split([resourceId('Microsoft.SecurityInsights/AlertRuleTemplates', 8365ebfe-a381-45b7-ad08-7d818070e11f)],'/'))))]",
///                     ["properties"] = new Dictionary<string, object?>
///                     {
///                         ["author"] = new Dictionary<string, object?>
///                         {
///                             ["email"] = "support@microsoft.com",
///                             ["name"] = "Microsoft",
///                         },
///                         ["contentId"] = "4465ebde-b381-45f7-ad08-7d818070a11c",
///                         ["description"] = "CrowdStrike Falcon Endpoint Protection Analytics Rule 1",
///                         ["kind"] = "AnalyticsRule",
///                         ["parentId"] = "[resourceId('Microsoft.SecurityInsights/AlertRuleTemplates', 8365ebfe-a381-45b7-ad08-7d818070e11f)]",
///                         ["source"] = new Dictionary<string, object?>
///                         {
///                             ["kind"] = "Solution",
///                             ["name"] = "str",
///                             ["sourceId"] = "str.azure-sentinel-solution-str",
///                         },
///                         ["support"] = new Dictionary<string, object?>
///                         {
///                             ["email"] = "support@microsoft.com",
///                             ["link"] = "https://support.microsoft.com/",
///                             ["name"] = "Microsoft Corporation",
///                             ["tier"] = "Microsoft",
///                         },
///                         ["version"] = "1.0.0",
///                     },
///                     ["type"] = "Microsoft.OperationalInsights/workspaces/providers/metadata",
///                 },
///             },
///         },
///         PackageId = "str.azure-sentinel-solution-str",
///         PackageKind = AzureNative.SecurityInsights.PackageKind.Solution,
///         PackageName = "str",
///         PackageVersion = "1.0.0",
///         ResourceGroupName = "myRg",
///         Source = new AzureNative.SecurityInsights.Inputs.MetadataSourceArgs
///         {
///             Kind = AzureNative.SecurityInsights.SourceKind.Solution,
///             Name = "str",
///             SourceId = "str.azure-sentinel-solution-str",
///         },
///         Support = new AzureNative.SecurityInsights.Inputs.MetadataSupportArgs
///         {
///             Email = "support@microsoft.com",
///             Link = "https://support.microsoft.com/",
///             Name = "Microsoft Corporation",
///             Tier = AzureNative.SecurityInsights.SupportTier.Microsoft,
///         },
///         TemplateId = "str.azure-sentinel-solution-str",
///         Version = "1.0.1",
///         WorkspaceName = "myWorkspace",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewContentTemplate(ctx, "contentTemplate", &securityinsights.ContentTemplateArgs{
/// 			Author: &securityinsights.MetadataAuthorArgs{
/// 				Email: pulumi.String("support@microsoft.com"),
/// 				Name:  pulumi.String("Microsoft"),
/// 			},
/// 			ContentId:        pulumi.String("8365ebfe-a381-45b7-ad08-7d818070e11f"),
/// 			ContentKind:      pulumi.String(securityinsights.KindAnalyticsRule),
/// 			ContentProductId: pulumi.String("str.azure-sentinel-solution-str-ar-cbfe4fndz66bi"),
/// 			DisplayName:      pulumi.String("API Protection workbook template"),
/// 			MainTemplate: pulumi.Any(map[string]interface{}{
/// 				"$schema":        "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
/// 				"contentVersion": "1.0.1",
/// 				"resources": []interface{}{
/// 					map[string]interface{}{
/// 						"apiVersion": "2022-04-01-preview",
/// 						"kind":       "Scheduled",
/// 						"location":   "[parameters('workspace-location')]",
/// 						"name":       "8365ebfe-a381-45b7-ad08-7d818070e11f",
/// 						"properties": map[string]interface{}{
/// 							"description":         "Creates an incident when a large number of Critical/High severity CrowdStrike Falcon sensor detections is triggered by a single user",
/// 							"displayName":         "Critical or High Severity Detections by User",
/// 							"enabled":             false,
/// 							"query":               "...",
/// 							"queryFrequency":      "PT1H",
/// 							"queryPeriod":         "PT1H",
/// 							"severity":            "High",
/// 							"status":              "Available",
/// 							"suppressionDuration": "PT1H",
/// 							"suppressionEnabled":  false,
/// 							"triggerOperator":     "GreaterThan",
/// 							"triggerThreshold":    0,
/// 						},
/// 						"type": "Microsoft.SecurityInsights/AlertRuleTemplates",
/// 					},
/// 					map[string]interface{}{
/// 						"apiVersion": "2022-01-01-preview",
/// 						"name":       "[concat(parameters('workspace'),'/Microsoft.SecurityInsights/',concat('AnalyticsRule-', last(split([resourceId('Microsoft.SecurityInsights/AlertRuleTemplates', 8365ebfe-a381-45b7-ad08-7d818070e11f)],'/'))))]",
/// 						"properties": map[string]interface{}{
/// 							"author": map[string]interface{}{
/// 								"email": "support@microsoft.com",
/// 								"name":  "Microsoft",
/// 							},
/// 							"contentId":   "4465ebde-b381-45f7-ad08-7d818070a11c",
/// 							"description": "CrowdStrike Falcon Endpoint Protection Analytics Rule 1",
/// 							"kind":        "AnalyticsRule",
/// 							"parentId":    "[resourceId('Microsoft.SecurityInsights/AlertRuleTemplates', 8365ebfe-a381-45b7-ad08-7d818070e11f)]",
/// 							"source": map[string]interface{}{
/// 								"kind":     "Solution",
/// 								"name":     "str",
/// 								"sourceId": "str.azure-sentinel-solution-str",
/// 							},
/// 							"support": map[string]interface{}{
/// 								"email": "support@microsoft.com",
/// 								"link":  "https://support.microsoft.com/",
/// 								"name":  "Microsoft Corporation",
/// 								"tier":  "Microsoft",
/// 							},
/// 							"version": "1.0.0",
/// 						},
/// 						"type": "Microsoft.OperationalInsights/workspaces/providers/metadata",
/// 					},
/// 				},
/// 			}),
/// 			PackageId:         pulumi.String("str.azure-sentinel-solution-str"),
/// 			PackageKind:       pulumi.String(securityinsights.PackageKindSolution),
/// 			PackageName:       pulumi.String("str"),
/// 			PackageVersion:    pulumi.String("1.0.0"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			Source: &securityinsights.MetadataSourceArgs{
/// 				Kind:     pulumi.String(securityinsights.SourceKindSolution),
/// 				Name:     pulumi.String("str"),
/// 				SourceId: pulumi.String("str.azure-sentinel-solution-str"),
/// 			},
/// 			Support: &securityinsights.MetadataSupportArgs{
/// 				Email: pulumi.String("support@microsoft.com"),
/// 				Link:  pulumi.String("https://support.microsoft.com/"),
/// 				Name:  pulumi.String("Microsoft Corporation"),
/// 				Tier:  pulumi.String(securityinsights.SupportTierMicrosoft),
/// 			},
/// 			TemplateId:    pulumi.String("str.azure-sentinel-solution-str"),
/// 			Version:       pulumi.String("1.0.1"),
/// 			WorkspaceName: pulumi.String("myWorkspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.ContentTemplate;
/// import com.pulumi.azurenative.securityinsights.ContentTemplateArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.MetadataAuthorArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.MetadataSourceArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.MetadataSupportArgs;
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
///         var contentTemplate = new ContentTemplate("contentTemplate", ContentTemplateArgs.builder()
///             .author(MetadataAuthorArgs.builder()
///                 .email("support@microsoft.com")
///                 .name("Microsoft")
///                 .build())
///             .contentId("8365ebfe-a381-45b7-ad08-7d818070e11f")
///             .contentKind("AnalyticsRule")
///             .contentProductId("str.azure-sentinel-solution-str-ar-cbfe4fndz66bi")
///             .displayName("API Protection workbook template")
///             .mainTemplate(Map.ofEntries(
///                 Map.entry("$schema", "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#"),
///                 Map.entry("contentVersion", "1.0.1"),
///                 Map.entry("resources",
///                     Map.ofEntries(
///                         Map.entry("apiVersion", "2022-04-01-preview"),
///                         Map.entry("kind", "Scheduled"),
///                         Map.entry("location", "[parameters('workspace-location')]"),
///                         Map.entry("name", "8365ebfe-a381-45b7-ad08-7d818070e11f"),
///                         Map.entry("properties", Map.ofEntries(
///                             Map.entry("description", "Creates an incident when a large number of Critical/High severity CrowdStrike Falcon sensor detections is triggered by a single user"),
///                             Map.entry("displayName", "Critical or High Severity Detections by User"),
///                             Map.entry("enabled", false),
///                             Map.entry("query", "..."),
///                             Map.entry("queryFrequency", "PT1H"),
///                             Map.entry("queryPeriod", "PT1H"),
///                             Map.entry("severity", "High"),
///                             Map.entry("status", "Available"),
///                             Map.entry("suppressionDuration", "PT1H"),
///                             Map.entry("suppressionEnabled", false),
///                             Map.entry("triggerOperator", "GreaterThan"),
///                             Map.entry("triggerThreshold", 0)
///                         )),
///                         Map.entry("type", "Microsoft.SecurityInsights/AlertRuleTemplates")
///                     ),
///                     Map.ofEntries(
///                         Map.entry("apiVersion", "2022-01-01-preview"),
///                         Map.entry("name", "[concat(parameters('workspace'),'/Microsoft.SecurityInsights/',concat('AnalyticsRule-', last(split([resourceId('Microsoft.SecurityInsights/AlertRuleTemplates', 8365ebfe-a381-45b7-ad08-7d818070e11f)],'/'))))]"),
///                         Map.entry("properties", Map.ofEntries(
///                             Map.entry("author", Map.ofEntries(
///                                 Map.entry("email", "support@microsoft.com"),
///                                 Map.entry("name", "Microsoft")
///                             )),
///                             Map.entry("contentId", "4465ebde-b381-45f7-ad08-7d818070a11c"),
///                             Map.entry("description", "CrowdStrike Falcon Endpoint Protection Analytics Rule 1"),
///                             Map.entry("kind", "AnalyticsRule"),
///                             Map.entry("parentId", "[resourceId('Microsoft.SecurityInsights/AlertRuleTemplates', 8365ebfe-a381-45b7-ad08-7d818070e11f)]"),
///                             Map.entry("source", Map.ofEntries(
///                                 Map.entry("kind", "Solution"),
///                                 Map.entry("name", "str"),
///                                 Map.entry("sourceId", "str.azure-sentinel-solution-str")
///                             )),
///                             Map.entry("support", Map.ofEntries(
///                                 Map.entry("email", "support@microsoft.com"),
///                                 Map.entry("link", "https://support.microsoft.com/"),
///                                 Map.entry("name", "Microsoft Corporation"),
///                                 Map.entry("tier", "Microsoft")
///                             )),
///                             Map.entry("version", "1.0.0")
///                         )),
///                         Map.entry("type", "Microsoft.OperationalInsights/workspaces/providers/metadata")
///                     ))
///             ))
///             .packageId("str.azure-sentinel-solution-str")
///             .packageKind("Solution")
///             .packageName("str")
///             .packageVersion("1.0.0")
///             .resourceGroupName("myRg")
///             .source(MetadataSourceArgs.builder()
///                 .kind("Solution")
///                 .name("str")
///                 .sourceId("str.azure-sentinel-solution-str")
///                 .build())
///             .support(MetadataSupportArgs.builder()
///                 .email("support@microsoft.com")
///                 .link("https://support.microsoft.com/")
///                 .name("Microsoft Corporation")
///                 .tier("Microsoft")
///                 .build())
///             .templateId("str.azure-sentinel-solution-str")
///             .version("1.0.1")
///             .workspaceName("myWorkspace")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const contentTemplate = new azure_native.securityinsights.ContentTemplate("contentTemplate", {
///     author: {
///         email: "support@microsoft.com",
///         name: "Microsoft",
///     },
///     contentId: "8365ebfe-a381-45b7-ad08-7d818070e11f",
///     contentKind: azure_native.securityinsights.Kind.AnalyticsRule,
///     contentProductId: "str.azure-sentinel-solution-str-ar-cbfe4fndz66bi",
///     displayName: "API Protection workbook template",
///     mainTemplate: {
///         $schema: "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
///         contentVersion: "1.0.1",
///         resources: [
///             {
///                 apiVersion: "2022-04-01-preview",
///                 kind: "Scheduled",
///                 location: "[parameters('workspace-location')]",
///                 name: "8365ebfe-a381-45b7-ad08-7d818070e11f",
///                 properties: {
///                     description: "Creates an incident when a large number of Critical/High severity CrowdStrike Falcon sensor detections is triggered by a single user",
///                     displayName: "Critical or High Severity Detections by User",
///                     enabled: false,
///                     query: "...",
///                     queryFrequency: "PT1H",
///                     queryPeriod: "PT1H",
///                     severity: "High",
///                     status: "Available",
///                     suppressionDuration: "PT1H",
///                     suppressionEnabled: false,
///                     triggerOperator: "GreaterThan",
///                     triggerThreshold: 0,
///                 },
///                 type: "Microsoft.SecurityInsights/AlertRuleTemplates",
///             },
///             {
///                 apiVersion: "2022-01-01-preview",
///                 name: "[concat(parameters('workspace'),'/Microsoft.SecurityInsights/',concat('AnalyticsRule-', last(split([resourceId('Microsoft.SecurityInsights/AlertRuleTemplates', 8365ebfe-a381-45b7-ad08-7d818070e11f)],'/'))))]",
///                 properties: {
///                     author: {
///                         email: "support@microsoft.com",
///                         name: "Microsoft",
///                     },
///                     contentId: "4465ebde-b381-45f7-ad08-7d818070a11c",
///                     description: "CrowdStrike Falcon Endpoint Protection Analytics Rule 1",
///                     kind: "AnalyticsRule",
///                     parentId: "[resourceId('Microsoft.SecurityInsights/AlertRuleTemplates', 8365ebfe-a381-45b7-ad08-7d818070e11f)]",
///                     source: {
///                         kind: "Solution",
///                         name: "str",
///                         sourceId: "str.azure-sentinel-solution-str",
///                     },
///                     support: {
///                         email: "support@microsoft.com",
///                         link: "https://support.microsoft.com/",
///                         name: "Microsoft Corporation",
///                         tier: "Microsoft",
///                     },
///                     version: "1.0.0",
///                 },
///                 type: "Microsoft.OperationalInsights/workspaces/providers/metadata",
///             },
///         ],
///     },
///     packageId: "str.azure-sentinel-solution-str",
///     packageKind: azure_native.securityinsights.PackageKind.Solution,
///     packageName: "str",
///     packageVersion: "1.0.0",
///     resourceGroupName: "myRg",
///     source: {
///         kind: azure_native.securityinsights.SourceKind.Solution,
///         name: "str",
///         sourceId: "str.azure-sentinel-solution-str",
///     },
///     support: {
///         email: "support@microsoft.com",
///         link: "https://support.microsoft.com/",
///         name: "Microsoft Corporation",
///         tier: azure_native.securityinsights.SupportTier.Microsoft,
///     },
///     templateId: "str.azure-sentinel-solution-str",
///     version: "1.0.1",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// content_template = azure_native.securityinsights.ContentTemplate("contentTemplate",
///     author={
///         "email": "support@microsoft.com",
///         "name": "Microsoft",
///     },
///     content_id="8365ebfe-a381-45b7-ad08-7d818070e11f",
///     content_kind=azure_native.securityinsights.Kind.ANALYTICS_RULE,
///     content_product_id="str.azure-sentinel-solution-str-ar-cbfe4fndz66bi",
///     display_name="API Protection workbook template",
///     main_template={
///         "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
///         "contentVersion": "1.0.1",
///         "resources": [
///             {
///                 "apiVersion": "2022-04-01-preview",
///                 "kind": "Scheduled",
///                 "location": "[parameters('workspace-location')]",
///                 "name": "8365ebfe-a381-45b7-ad08-7d818070e11f",
///                 "properties": {
///                     "description": "Creates an incident when a large number of Critical/High severity CrowdStrike Falcon sensor detections is triggered by a single user",
///                     "displayName": "Critical or High Severity Detections by User",
///                     "enabled": False,
///                     "query": "...",
///                     "queryFrequency": "PT1H",
///                     "queryPeriod": "PT1H",
///                     "severity": "High",
///                     "status": "Available",
///                     "suppressionDuration": "PT1H",
///                     "suppressionEnabled": False,
///                     "triggerOperator": "GreaterThan",
///                     "triggerThreshold": 0,
///                 },
///                 "type": "Microsoft.SecurityInsights/AlertRuleTemplates",
///             },
///             {
///                 "apiVersion": "2022-01-01-preview",
///                 "name": "[concat(parameters('workspace'),'/Microsoft.SecurityInsights/',concat('AnalyticsRule-', last(split([resourceId('Microsoft.SecurityInsights/AlertRuleTemplates', 8365ebfe-a381-45b7-ad08-7d818070e11f)],'/'))))]",
///                 "properties": {
///                     "author": {
///                         "email": "support@microsoft.com",
///                         "name": "Microsoft",
///                     },
///                     "contentId": "4465ebde-b381-45f7-ad08-7d818070a11c",
///                     "description": "CrowdStrike Falcon Endpoint Protection Analytics Rule 1",
///                     "kind": "AnalyticsRule",
///                     "parentId": "[resourceId('Microsoft.SecurityInsights/AlertRuleTemplates', 8365ebfe-a381-45b7-ad08-7d818070e11f)]",
///                     "source": {
///                         "kind": "Solution",
///                         "name": "str",
///                         "sourceId": "str.azure-sentinel-solution-str",
///                     },
///                     "support": {
///                         "email": "support@microsoft.com",
///                         "link": "https://support.microsoft.com/",
///                         "name": "Microsoft Corporation",
///                         "tier": "Microsoft",
///                     },
///                     "version": "1.0.0",
///                 },
///                 "type": "Microsoft.OperationalInsights/workspaces/providers/metadata",
///             },
///         ],
///     },
///     package_id="str.azure-sentinel-solution-str",
///     package_kind=azure_native.securityinsights.PackageKind.SOLUTION,
///     package_name="str",
///     package_version="1.0.0",
///     resource_group_name="myRg",
///     source={
///         "kind": azure_native.securityinsights.SourceKind.SOLUTION,
///         "name": "str",
///         "source_id": "str.azure-sentinel-solution-str",
///     },
///     support={
///         "email": "support@microsoft.com",
///         "link": "https://support.microsoft.com/",
///         "name": "Microsoft Corporation",
///         "tier": azure_native.securityinsights.SupportTier.MICROSOFT,
///     },
///     template_id="str.azure-sentinel-solution-str",
///     version="1.0.1",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   contentTemplate:
///     type: azure-native:securityinsights:ContentTemplate
///     properties:
///       author:
///         email: support@microsoft.com
///         name: Microsoft
///       contentId: 8365ebfe-a381-45b7-ad08-7d818070e11f
///       contentKind: AnalyticsRule
///       contentProductId: str.azure-sentinel-solution-str-ar-cbfe4fndz66bi
///       displayName: API Protection workbook template
///       mainTemplate:
///         $schema: https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#
///         contentVersion: 1.0.1
///         resources:
///           - apiVersion: 2022-04-01-preview
///             kind: Scheduled
///             location: '[parameters(''workspace-location'')]'
///             name: 8365ebfe-a381-45b7-ad08-7d818070e11f
///             properties:
///               description: Creates an incident when a large number of Critical/High severity CrowdStrike Falcon sensor detections is triggered by a single user
///               displayName: Critical or High Severity Detections by User
///               enabled: false
///               query: '...'
///               queryFrequency: PT1H
///               queryPeriod: PT1H
///               severity: High
///               status: Available
///               suppressionDuration: PT1H
///               suppressionEnabled: false
///               triggerOperator: GreaterThan
///               triggerThreshold: 0
///             type: Microsoft.SecurityInsights/AlertRuleTemplates
///           - apiVersion: 2022-01-01-preview
///             name: '[concat(parameters(''workspace''),''/Microsoft.SecurityInsights/'',concat(''AnalyticsRule-'', last(split([resourceId(''Microsoft.SecurityInsights/AlertRuleTemplates'', 8365ebfe-a381-45b7-ad08-7d818070e11f)],''/''))))]'
///             properties:
///               author:
///                 email: support@microsoft.com
///                 name: Microsoft
///               contentId: 4465ebde-b381-45f7-ad08-7d818070a11c
///               description: CrowdStrike Falcon Endpoint Protection Analytics Rule 1
///               kind: AnalyticsRule
///               parentId: '[resourceId(''Microsoft.SecurityInsights/AlertRuleTemplates'', 8365ebfe-a381-45b7-ad08-7d818070e11f)]'
///               source:
///                 kind: Solution
///                 name: str
///                 sourceId: str.azure-sentinel-solution-str
///               support:
///                 email: support@microsoft.com
///                 link: https://support.microsoft.com/
///                 name: Microsoft Corporation
///                 tier: Microsoft
///               version: 1.0.0
///             type: Microsoft.OperationalInsights/workspaces/providers/metadata
///       packageId: str.azure-sentinel-solution-str
///       packageKind: Solution
///       packageName: str
///       packageVersion: 1.0.0
///       resourceGroupName: myRg
///       source:
///         kind: Solution
///         name: str
///         sourceId: str.azure-sentinel-solution-str
///       support:
///         email: support@microsoft.com
///         link: https://support.microsoft.com/
///         name: Microsoft Corporation
///         tier: Microsoft
///       templateId: str.azure-sentinel-solution-str
///       version: 1.0.1
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:securityinsights:ContentTemplate azuresentinel.azure-sentinel-solution-ciscoumbrella /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/contentTemplates/{templateId}
/// ```
class ContentTemplate extends pulumi.CustomResource {
  /// The creator of the content item.
  late final pulumi.Output<MetadataAuthorResponse?> author;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Categories for the item
  late final pulumi.Output<MetadataCategoriesResponse?> categories;
  /// Static ID for the content.  Used to identify dependencies and content from solutions or community.  Hard-coded/static for out of the box content and solutions. Dynamic for user-created.  This is the resource name
  late final pulumi.Output<String> contentId;
  /// The kind of content the template is for.
  late final pulumi.Output<String> contentKind;
  /// Unique ID for the content. It should be generated based on the contentId of the package, contentId of the template, contentKind of the template and the contentVersion of the template
  late final pulumi.Output<String> contentProductId;
  /// Schema version of the content. Can be used to distinguish between different flow based on the schema version
  late final pulumi.Output<String?> contentSchemaVersion;
  /// The custom version of the content. A optional free text
  late final pulumi.Output<String?> customVersion;
  /// Dependant templates. Expandable.
  late final pulumi.Output<List<Map<String, dynamic>>> dependantTemplates;
  /// Dependencies for the content item, what other content items it requires to work.  Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats.
  late final pulumi.Output<MetadataDependenciesResponse?> dependencies;
  /// The display name of the template
  late final pulumi.Output<String> displayName;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// first publish date content item
  late final pulumi.Output<String?> firstPublishDate;
  /// the icon identifier. this id can later be fetched from the content metadata
  late final pulumi.Output<String?> icon;
  /// Flag indicates if this template is deprecated
  late final pulumi.Output<String> isDeprecated;
  /// last publish date for the content item
  late final pulumi.Output<String?> lastPublishDate;
  /// The JSON of the ARM template to deploy active content. Expandable.
  late final pulumi.Output<dynamic> mainTemplate;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// the package Id contains this template
  late final pulumi.Output<String> packageId;
  /// the packageKind of the package contains this template
  late final pulumi.Output<String?> packageKind;
  /// the name of the package contains this template
  late final pulumi.Output<String?> packageName;
  /// Version of the package.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM metadata best practices.  Can also be any string, but then we cannot guarantee any version checks
  late final pulumi.Output<String> packageVersion;
  /// preview image file names. These will be taken from the solution artifacts
  late final pulumi.Output<List<String>?> previewImages;
  /// preview image file names. These will be taken from the solution artifacts. used for dark theme support
  late final pulumi.Output<List<String>?> previewImagesDark;
  /// Providers for the content item
  late final pulumi.Output<List<String>?> providers;
  /// Source of the content.  This is where/how it was created.
  late final pulumi.Output<MetadataSourceResponse> source;
  /// Support information for the template - type, name, contact information
  late final pulumi.Output<MetadataSupportResponse?> support;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// the tactics the resource covers
  late final pulumi.Output<List<String>?> threatAnalysisTactics;
  /// the techniques the resource covers, these have to be aligned with the tactics being used
  late final pulumi.Output<List<String>?> threatAnalysisTechniques;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Version of the content.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM metadata best practices.  Can also be any string, but then we cannot guarantee any version checks
  late final pulumi.Output<String> version;

  /// Creates a new [ContentTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContentTemplate]. {@macro pulumi_securityinsights_content_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContentTemplate(
    String name, {
    ContentTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:ContentTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    author = registerOutput<MetadataAuthorResponse?>('author', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataAuthorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    categories = registerOutput<MetadataCategoriesResponse?>('categories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataCategoriesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    contentId = registerOutput<String>('contentId');
    contentKind = registerOutput<String>('contentKind');
    contentProductId = registerOutput<String>('contentProductId');
    contentSchemaVersion = registerOutput<String?>('contentSchemaVersion');
    customVersion = registerOutput<String?>('customVersion');
    dependantTemplates = registerOutput<List<Map<String, dynamic>>>('dependantTemplates');
    dependencies = registerOutput<MetadataDependenciesResponse?>('dependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataDependenciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String?>('etag');
    firstPublishDate = registerOutput<String?>('firstPublishDate');
    icon = registerOutput<String?>('icon');
    isDeprecated = registerOutput<String>('isDeprecated');
    lastPublishDate = registerOutput<String?>('lastPublishDate');
    mainTemplate = registerOutput<dynamic>('mainTemplate');
    this.name = registerOutput<String>('name');
    packageId = registerOutput<String>('packageId');
    packageKind = registerOutput<String?>('packageKind');
    packageName = registerOutput<String?>('packageName');
    packageVersion = registerOutput<String>('packageVersion');
    previewImages = registerOutput<List<String>?>('previewImages');
    previewImagesDark = registerOutput<List<String>?>('previewImagesDark');
    providers = registerOutput<List<String>?>('providers');
    source = registerOutput<MetadataSourceResponse>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    support = registerOutput<MetadataSupportResponse?>('support', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataSupportResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    threatAnalysisTactics = registerOutput<List<String>?>('threatAnalysisTactics');
    threatAnalysisTechniques = registerOutput<List<String>?>('threatAnalysisTechniques');
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
