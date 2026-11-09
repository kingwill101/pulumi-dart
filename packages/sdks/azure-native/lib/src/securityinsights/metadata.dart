import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_args.dart';
import 'metadata_author_response.dart';
import 'metadata_categories_response.dart';
import 'metadata_dependencies_response.dart';
import 'metadata_source_response.dart';
import 'metadata_support_response.dart';
import 'system_data_response.dart';

/// Metadata resource definition.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create/update full metadata.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var metadata = new AzureNative.SecurityInsights.Metadata("metadata", new()
///     {
///         Author = new AzureNative.SecurityInsights.Inputs.MetadataAuthorArgs
///         {
///             Email = "email@microsoft.com",
///             Name = "User Name",
///         },
///         Categories = new AzureNative.SecurityInsights.Inputs.MetadataCategoriesArgs
///         {
///             Domains = new[]
///             {
///                 "Application",
///                 "Security – Insider Threat",
///             },
///             Verticals = new[]
///             {
///                 "Healthcare",
///             },
///         },
///         ContentId = "c00ee137-7475-47c8-9cce-ec6f0f1bedd0",
///         ContentSchemaVersion = "2.0",
///         CustomVersion = "1.0",
///         Dependencies = new AzureNative.SecurityInsights.Inputs.MetadataDependenciesArgs
///         {
///             Criteria =
///             {
///                 new AzureNative.SecurityInsights.Inputs.MetadataDependenciesArgs
///                 {
///                     Criteria =
///                     {
///                         new AzureNative.SecurityInsights.Inputs.MetadataDependenciesArgs
///                         {
///                             ContentId = "045d06d0-ee72-4794-aba4-cf5646e4c756",
///                             Kind = AzureNative.SecurityInsights.Kind.DataConnector,
///                             Name = "Microsoft Defender for Endpoint",
///                         },
///                         new AzureNative.SecurityInsights.Inputs.MetadataDependenciesArgs
///                         {
///                             ContentId = "dbfcb2cc-d782-40ef-8d94-fe7af58a6f2d",
///                             Kind = AzureNative.SecurityInsights.Kind.DataConnector,
///                         },
///                         new AzureNative.SecurityInsights.Inputs.MetadataDependenciesArgs
///                         {
///                             ContentId = "de4dca9b-eb37-47d6-a56f-b8b06b261593",
///                             Kind = AzureNative.SecurityInsights.Kind.DataConnector,
///                             Version = "2.0",
///                         },
///                     },
///                     Operator = AzureNative.SecurityInsights.Operator.OR,
///                 },
///                 new AzureNative.SecurityInsights.Inputs.MetadataDependenciesArgs
///                 {
///                     ContentId = "31ee11cc-9989-4de8-b176-5e0ef5c4dbab",
///                     Kind = AzureNative.SecurityInsights.Kind.Playbook,
///                     Version = "1.0",
///                 },
///                 new AzureNative.SecurityInsights.Inputs.MetadataDependenciesArgs
///                 {
///                     ContentId = "21ba424a-9438-4444-953a-7059539a7a1b",
///                     Kind = AzureNative.SecurityInsights.Kind.Parser,
///                 },
///             },
///             Operator = AzureNative.SecurityInsights.Operator.AND,
///         },
///         FirstPublishDate = "2021-05-18",
///         Kind = "AnalyticsRule",
///         LastPublishDate = "2021-05-18",
///         MetadataName = "metadataName",
///         ParentId = "/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName",
///         PreviewImages = new[]
///         {
///             "firstImage.png",
///             "secondImage.jpeg",
///         },
///         PreviewImagesDark = new[]
///         {
///             "firstImageDark.png",
///             "secondImageDark.jpeg",
///         },
///         Providers = new[]
///         {
///             "Amazon",
///             "Microsoft",
///         },
///         ResourceGroupName = "myRg",
///         Source = new AzureNative.SecurityInsights.Inputs.MetadataSourceArgs
///         {
///             Kind = AzureNative.SecurityInsights.SourceKind.Solution,
///             Name = "Contoso Solution 1.0",
///             SourceId = "b688a130-76f4-4a07-bf57-762222a3cadf",
///         },
///         Support = new AzureNative.SecurityInsights.Inputs.MetadataSupportArgs
///         {
///             Email = "support@microsoft.com",
///             Link = "https://support.microsoft.com/",
///             Name = "Microsoft",
///             Tier = AzureNative.SecurityInsights.SupportTier.Partner,
///         },
///         ThreatAnalysisTactics = new[]
///         {
///             "reconnaissance",
///             "commandandcontrol",
///         },
///         ThreatAnalysisTechniques = new[]
///         {
///             "T1548",
///             "T1548.001",
///         },
///         Version = "1.0.0.0",
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
/// 		_, err := securityinsights.NewMetadata(ctx, "metadata", &securityinsights.MetadataArgs{
/// 			Author: &securityinsights.MetadataAuthorArgs{
/// 				Email: pulumi.String("email@microsoft.com"),
/// 				Name:  pulumi.String("User Name"),
/// 			},
/// 			Categories: &securityinsights.MetadataCategoriesArgs{
/// 				Domains: pulumi.StringArray{
/// 					pulumi.String("Application"),
/// 					pulumi.String("Security – Insider Threat"),
/// 				},
/// 				Verticals: pulumi.StringArray{
/// 					pulumi.String("Healthcare"),
/// 				},
/// 			},
/// 			ContentId:            pulumi.String("c00ee137-7475-47c8-9cce-ec6f0f1bedd0"),
/// 			ContentSchemaVersion: pulumi.String("2.0"),
/// 			CustomVersion:        pulumi.String("1.0"),
/// 			Dependencies: &securityinsights.MetadataDependenciesArgs{
/// 				Criteria: securityinsights.MetadataDependenciesArray{
/// 					&securityinsights.MetadataDependenciesArgs{
/// 						Criteria: securityinsights.MetadataDependenciesArray{
/// 							&securityinsights.MetadataDependenciesArgs{
/// 								ContentId: pulumi.String("045d06d0-ee72-4794-aba4-cf5646e4c756"),
/// 								Kind:      pulumi.String(securityinsights.KindDataConnector),
/// 								Name:      pulumi.String("Microsoft Defender for Endpoint"),
/// 							},
/// 							&securityinsights.MetadataDependenciesArgs{
/// 								ContentId: pulumi.String("dbfcb2cc-d782-40ef-8d94-fe7af58a6f2d"),
/// 								Kind:      pulumi.String(securityinsights.KindDataConnector),
/// 							},
/// 							&securityinsights.MetadataDependenciesArgs{
/// 								ContentId: pulumi.String("de4dca9b-eb37-47d6-a56f-b8b06b261593"),
/// 								Kind:      pulumi.String(securityinsights.KindDataConnector),
/// 								Version:   pulumi.String("2.0"),
/// 							},
/// 						},
/// 						Operator: pulumi.String(securityinsights.OperatorOR),
/// 					},
/// 					&securityinsights.MetadataDependenciesArgs{
/// 						ContentId: pulumi.String("31ee11cc-9989-4de8-b176-5e0ef5c4dbab"),
/// 						Kind:      pulumi.String(securityinsights.KindPlaybook),
/// 						Version:   pulumi.String("1.0"),
/// 					},
/// 					&securityinsights.MetadataDependenciesArgs{
/// 						ContentId: pulumi.String("21ba424a-9438-4444-953a-7059539a7a1b"),
/// 						Kind:      pulumi.String(securityinsights.KindParser),
/// 					},
/// 				},
/// 				Operator: pulumi.String(securityinsights.OperatorAND),
/// 			},
/// 			FirstPublishDate: pulumi.String("2021-05-18"),
/// 			Kind:             pulumi.String("AnalyticsRule"),
/// 			LastPublishDate:  pulumi.String("2021-05-18"),
/// 			MetadataName:     pulumi.String("metadataName"),
/// 			ParentId:         pulumi.String("/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName"),
/// 			PreviewImages: pulumi.StringArray{
/// 				pulumi.String("firstImage.png"),
/// 				pulumi.String("secondImage.jpeg"),
/// 			},
/// 			PreviewImagesDark: pulumi.StringArray{
/// 				pulumi.String("firstImageDark.png"),
/// 				pulumi.String("secondImageDark.jpeg"),
/// 			},
/// 			Providers: pulumi.StringArray{
/// 				pulumi.String("Amazon"),
/// 				pulumi.String("Microsoft"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			Source: &securityinsights.MetadataSourceArgs{
/// 				Kind:     pulumi.String(securityinsights.SourceKindSolution),
/// 				Name:     pulumi.String("Contoso Solution 1.0"),
/// 				SourceId: pulumi.String("b688a130-76f4-4a07-bf57-762222a3cadf"),
/// 			},
/// 			Support: &securityinsights.MetadataSupportArgs{
/// 				Email: pulumi.String("support@microsoft.com"),
/// 				Link:  pulumi.String("https://support.microsoft.com/"),
/// 				Name:  pulumi.String("Microsoft"),
/// 				Tier:  pulumi.String(securityinsights.SupportTierPartner),
/// 			},
/// 			ThreatAnalysisTactics: pulumi.StringArray{
/// 				pulumi.String("reconnaissance"),
/// 				pulumi.String("commandandcontrol"),
/// 			},
/// 			ThreatAnalysisTechniques: pulumi.StringArray{
/// 				pulumi.String("T1548"),
/// 				pulumi.String("T1548.001"),
/// 			},
/// 			Version:       pulumi.String("1.0.0.0"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_securityinsights_metadata" "metadata" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   author = {
///     email = "email@microsoft.com"
///     name  = "User Name"
///   }
///   categories = {
///     domains   = ["Application", "Security – Insider Threat"]
///     verticals = ["Healthcare"]
///   }
///   content_id             = "c00ee137-7475-47c8-9cce-ec6f0f1bedd0"
///   content_schema_version = "2.0"
///   custom_version         = "1.0"
///   dependencies = {
///     criteria = [{
///       criteria = [{
///         content_id = "045d06d0-ee72-4794-aba4-cf5646e4c756"
///         kind       = "DataConnector"
///         name       = "Microsoft Defender for Endpoint"
///         }, {
///         content_id = "dbfcb2cc-d782-40ef-8d94-fe7af58a6f2d"
///         kind       = "DataConnector"
///         }, {
///         content_id = "de4dca9b-eb37-47d6-a56f-b8b06b261593"
///         kind       = "DataConnector"
///         version    = "2.0"
///       }]
///       operator = "OR"
///       }, {
///       content_id = "31ee11cc-9989-4de8-b176-5e0ef5c4dbab"
///       kind       = "Playbook"
///       version    = "1.0"
///       }, {
///       content_id = "21ba424a-9438-4444-953a-7059539a7a1b"
///       kind       = "Parser"
///     }]
///     operator = "AND"
///   }
///   first_publish_date  = "2021-05-18"
///   kind                = "AnalyticsRule"
///   last_publish_date   = "2021-05-18"
///   metadata_name       = "metadataName"
///   parent_id           = "/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName"
///   preview_images      = ["firstImage.png", "secondImage.jpeg"]
///   preview_images_dark = ["firstImageDark.png", "secondImageDark.jpeg"]
///   _ {
///     providers = ["Amazon", "Microsoft"]
///   }
///   resource_group_name = "myRg"
///   source = {
///     kind      = "Solution"
///     name      = "Contoso Solution 1.0"
///     source_id = "b688a130-76f4-4a07-bf57-762222a3cadf"
///   }
///   support = {
///     email = "support@microsoft.com"
///     link  = "https://support.microsoft.com/"
///     name  = "Microsoft"
///     tier  = "Partner"
///   }
///   threat_analysis_tactics    = ["reconnaissance", "commandandcontrol"]
///   threat_analysis_techniques = ["T1548", "T1548.001"]
///   version                    = "1.0.0.0"
///   workspace_name             = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.Metadata;
/// import com.pulumi.azurenative.securityinsights.MetadataArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.MetadataAuthorArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.MetadataCategoriesArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.MetadataDependenciesArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.MetadataSourceArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.MetadataSupportArgs;
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
///         var metadata = new Metadata("metadata", MetadataArgs.builder()
///             .author(MetadataAuthorArgs.builder()
///                 .email("email@microsoft.com")
///                 .name("User Name")
///                 .build())
///             .categories(MetadataCategoriesArgs.builder()
///                 .domains(
///                     "Application",
///                     "Security – Insider Threat")
///                 .verticals("Healthcare")
///                 .build())
///             .contentId("c00ee137-7475-47c8-9cce-ec6f0f1bedd0")
///             .contentSchemaVersion("2.0")
///             .customVersion("1.0")
///             .dependencies(MetadataDependenciesArgs.builder()
///                 .criteria(
///                     MetadataDependenciesArgs.builder()
///                         .criteria(
///                             MetadataDependenciesArgs.builder()
///                                 .contentId("045d06d0-ee72-4794-aba4-cf5646e4c756")
///                                 .kind("DataConnector")
///                                 .name("Microsoft Defender for Endpoint")
///                                 .build(),
///                             MetadataDependenciesArgs.builder()
///                                 .contentId("dbfcb2cc-d782-40ef-8d94-fe7af58a6f2d")
///                                 .kind("DataConnector")
///                                 .build(),
///                             MetadataDependenciesArgs.builder()
///                                 .contentId("de4dca9b-eb37-47d6-a56f-b8b06b261593")
///                                 .kind("DataConnector")
///                                 .version("2.0")
///                                 .build())
///                         .operator("OR")
///                         .build(),
///                     MetadataDependenciesArgs.builder()
///                         .contentId("31ee11cc-9989-4de8-b176-5e0ef5c4dbab")
///                         .kind("Playbook")
///                         .version("1.0")
///                         .build(),
///                     MetadataDependenciesArgs.builder()
///                         .contentId("21ba424a-9438-4444-953a-7059539a7a1b")
///                         .kind("Parser")
///                         .build())
///                 .operator("AND")
///                 .build())
///             .firstPublishDate("2021-05-18")
///             .kind("AnalyticsRule")
///             .lastPublishDate("2021-05-18")
///             .metadataName("metadataName")
///             .parentId("/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName")
///             .previewImages(
///                 "firstImage.png",
///                 "secondImage.jpeg")
///             .previewImagesDark(
///                 "firstImageDark.png",
///                 "secondImageDark.jpeg")
///             .providers(
///                 "Amazon",
///                 "Microsoft")
///             .resourceGroupName("myRg")
///             .source(MetadataSourceArgs.builder()
///                 .kind("Solution")
///                 .name("Contoso Solution 1.0")
///                 .sourceId("b688a130-76f4-4a07-bf57-762222a3cadf")
///                 .build())
///             .support(MetadataSupportArgs.builder()
///                 .email("support@microsoft.com")
///                 .link("https://support.microsoft.com/")
///                 .name("Microsoft")
///                 .tier("Partner")
///                 .build())
///             .threatAnalysisTactics(
///                 "reconnaissance",
///                 "commandandcontrol")
///             .threatAnalysisTechniques(
///                 "T1548",
///                 "T1548.001")
///             .version("1.0.0.0")
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
/// const metadata = new azure_native.securityinsights.Metadata("metadata", {
///     author: {
///         email: "email@microsoft.com",
///         name: "User Name",
///     },
///     categories: {
///         domains: [
///             "Application",
///             "Security – Insider Threat",
///         ],
///         verticals: ["Healthcare"],
///     },
///     contentId: "c00ee137-7475-47c8-9cce-ec6f0f1bedd0",
///     contentSchemaVersion: "2.0",
///     customVersion: "1.0",
///     dependencies: {
///         criteria: [
///             {
///                 criteria: [
///                     {
///                         contentId: "045d06d0-ee72-4794-aba4-cf5646e4c756",
///                         kind: azure_native.securityinsights.Kind.DataConnector,
///                         name: "Microsoft Defender for Endpoint",
///                     },
///                     {
///                         contentId: "dbfcb2cc-d782-40ef-8d94-fe7af58a6f2d",
///                         kind: azure_native.securityinsights.Kind.DataConnector,
///                     },
///                     {
///                         contentId: "de4dca9b-eb37-47d6-a56f-b8b06b261593",
///                         kind: azure_native.securityinsights.Kind.DataConnector,
///                         version: "2.0",
///                     },
///                 ],
///                 operator: azure_native.securityinsights.Operator.OR,
///             },
///             {
///                 contentId: "31ee11cc-9989-4de8-b176-5e0ef5c4dbab",
///                 kind: azure_native.securityinsights.Kind.Playbook,
///                 version: "1.0",
///             },
///             {
///                 contentId: "21ba424a-9438-4444-953a-7059539a7a1b",
///                 kind: azure_native.securityinsights.Kind.Parser,
///             },
///         ],
///         operator: azure_native.securityinsights.Operator.AND,
///     },
///     firstPublishDate: "2021-05-18",
///     kind: "AnalyticsRule",
///     lastPublishDate: "2021-05-18",
///     metadataName: "metadataName",
///     parentId: "/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName",
///     previewImages: [
///         "firstImage.png",
///         "secondImage.jpeg",
///     ],
///     previewImagesDark: [
///         "firstImageDark.png",
///         "secondImageDark.jpeg",
///     ],
///     providers: [
///         "Amazon",
///         "Microsoft",
///     ],
///     resourceGroupName: "myRg",
///     source: {
///         kind: azure_native.securityinsights.SourceKind.Solution,
///         name: "Contoso Solution 1.0",
///         sourceId: "b688a130-76f4-4a07-bf57-762222a3cadf",
///     },
///     support: {
///         email: "support@microsoft.com",
///         link: "https://support.microsoft.com/",
///         name: "Microsoft",
///         tier: azure_native.securityinsights.SupportTier.Partner,
///     },
///     threatAnalysisTactics: [
///         "reconnaissance",
///         "commandandcontrol",
///     ],
///     threatAnalysisTechniques: [
///         "T1548",
///         "T1548.001",
///     ],
///     version: "1.0.0.0",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// metadata = azure_native.securityinsights.Metadata("metadata",
///     author={
///         "email": "email@microsoft.com",
///         "name": "User Name",
///     },
///     categories={
///         "domains": [
///             "Application",
///             "Security – Insider Threat",
///         ],
///         "verticals": ["Healthcare"],
///     },
///     content_id="c00ee137-7475-47c8-9cce-ec6f0f1bedd0",
///     content_schema_version="2.0",
///     custom_version="1.0",
///     dependencies={
///         "criteria": [
///             {
///                 "criteria": [
///                     {
///                         "content_id": "045d06d0-ee72-4794-aba4-cf5646e4c756",
///                         "kind": azure_native.securityinsights.Kind.DATA_CONNECTOR,
///                         "name": "Microsoft Defender for Endpoint",
///                     },
///                     {
///                         "content_id": "dbfcb2cc-d782-40ef-8d94-fe7af58a6f2d",
///                         "kind": azure_native.securityinsights.Kind.DATA_CONNECTOR,
///                     },
///                     {
///                         "content_id": "de4dca9b-eb37-47d6-a56f-b8b06b261593",
///                         "kind": azure_native.securityinsights.Kind.DATA_CONNECTOR,
///                         "version": "2.0",
///                     },
///                 ],
///                 "operator": azure_native.securityinsights.Operator.OR_,
///             },
///             {
///                 "content_id": "31ee11cc-9989-4de8-b176-5e0ef5c4dbab",
///                 "kind": azure_native.securityinsights.Kind.PLAYBOOK,
///                 "version": "1.0",
///             },
///             {
///                 "content_id": "21ba424a-9438-4444-953a-7059539a7a1b",
///                 "kind": azure_native.securityinsights.Kind.PARSER,
///             },
///         ],
///         "operator": azure_native.securityinsights.Operator.AND_,
///     },
///     first_publish_date="2021-05-18",
///     kind="AnalyticsRule",
///     last_publish_date="2021-05-18",
///     metadata_name="metadataName",
///     parent_id="/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName",
///     preview_images=[
///         "firstImage.png",
///         "secondImage.jpeg",
///     ],
///     preview_images_dark=[
///         "firstImageDark.png",
///         "secondImageDark.jpeg",
///     ],
///     providers=[
///         "Amazon",
///         "Microsoft",
///     ],
///     resource_group_name="myRg",
///     source={
///         "kind": azure_native.securityinsights.SourceKind.SOLUTION,
///         "name": "Contoso Solution 1.0",
///         "source_id": "b688a130-76f4-4a07-bf57-762222a3cadf",
///     },
///     support={
///         "email": "support@microsoft.com",
///         "link": "https://support.microsoft.com/",
///         "name": "Microsoft",
///         "tier": azure_native.securityinsights.SupportTier.PARTNER,
///     },
///     threat_analysis_tactics=[
///         "reconnaissance",
///         "commandandcontrol",
///     ],
///     threat_analysis_techniques=[
///         "T1548",
///         "T1548.001",
///     ],
///     version="1.0.0.0",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   metadata:
///     type: azure-native:securityinsights:Metadata
///     properties:
///       author:
///         email: email@microsoft.com
///         name: User Name
///       categories:
///         domains:
///           - Application
///           - Security – Insider Threat
///         verticals:
///           - Healthcare
///       contentId: c00ee137-7475-47c8-9cce-ec6f0f1bedd0
///       contentSchemaVersion: '2.0'
///       customVersion: '1.0'
///       dependencies:
///         criteria:
///           - criteria:
///               - contentId: 045d06d0-ee72-4794-aba4-cf5646e4c756
///                 kind: DataConnector
///                 name: Microsoft Defender for Endpoint
///               - contentId: dbfcb2cc-d782-40ef-8d94-fe7af58a6f2d
///                 kind: DataConnector
///               - contentId: de4dca9b-eb37-47d6-a56f-b8b06b261593
///                 kind: DataConnector
///                 version: '2.0'
///             operator: OR
///           - contentId: 31ee11cc-9989-4de8-b176-5e0ef5c4dbab
///             kind: Playbook
///             version: '1.0'
///           - contentId: 21ba424a-9438-4444-953a-7059539a7a1b
///             kind: Parser
///         operator: AND
///       firstPublishDate: 2021-05-18
///       kind: AnalyticsRule
///       lastPublishDate: 2021-05-18
///       metadataName: metadataName
///       parentId: /subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName
///       previewImages:
///         - firstImage.png
///         - secondImage.jpeg
///       previewImagesDark:
///         - firstImageDark.png
///         - secondImageDark.jpeg
///       providers:
///         - Amazon
///         - Microsoft
///       resourceGroupName: myRg
///       source:
///         kind: Solution
///         name: Contoso Solution 1.0
///         sourceId: b688a130-76f4-4a07-bf57-762222a3cadf
///       support:
///         email: support@microsoft.com
///         link: https://support.microsoft.com/
///         name: Microsoft
///         tier: Partner
///       threatAnalysisTactics:
///         - reconnaissance
///         - commandandcontrol
///       threatAnalysisTechniques:
///         - T1548
///         - T1548.001
///       version: 1.0.0.0
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create/update minimal metadata.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var metadata = new AzureNative.SecurityInsights.Metadata("metadata", new()
///     {
///         ContentId = "c00ee137-7475-47c8-9cce-ec6f0f1bedd0",
///         Kind = "AnalyticsRule",
///         MetadataName = "metadataName",
///         ParentId = "/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName",
///         ResourceGroupName = "myRg",
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
/// 		_, err := securityinsights.NewMetadata(ctx, "metadata", &securityinsights.MetadataArgs{
/// 			ContentId:         pulumi.String("c00ee137-7475-47c8-9cce-ec6f0f1bedd0"),
/// 			Kind:              pulumi.String("AnalyticsRule"),
/// 			MetadataName:      pulumi.String("metadataName"),
/// 			ParentId:          pulumi.String("/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_securityinsights_metadata" "metadata" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   content_id          = "c00ee137-7475-47c8-9cce-ec6f0f1bedd0"
///   kind                = "AnalyticsRule"
///   metadata_name       = "metadataName"
///   parent_id           = "/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName"
///   resource_group_name = "myRg"
///   workspace_name      = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.Metadata;
/// import com.pulumi.azurenative.securityinsights.MetadataArgs;
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
///         var metadata = new Metadata("metadata", MetadataArgs.builder()
///             .contentId("c00ee137-7475-47c8-9cce-ec6f0f1bedd0")
///             .kind("AnalyticsRule")
///             .metadataName("metadataName")
///             .parentId("/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName")
///             .resourceGroupName("myRg")
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
/// const metadata = new azure_native.securityinsights.Metadata("metadata", {
///     contentId: "c00ee137-7475-47c8-9cce-ec6f0f1bedd0",
///     kind: "AnalyticsRule",
///     metadataName: "metadataName",
///     parentId: "/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName",
///     resourceGroupName: "myRg",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// metadata = azure_native.securityinsights.Metadata("metadata",
///     content_id="c00ee137-7475-47c8-9cce-ec6f0f1bedd0",
///     kind="AnalyticsRule",
///     metadata_name="metadataName",
///     parent_id="/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   metadata:
///     type: azure-native:securityinsights:Metadata
///     properties:
///       contentId: c00ee137-7475-47c8-9cce-ec6f0f1bedd0
///       kind: AnalyticsRule
///       metadataName: metadataName
///       parentId: /subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName
///       resourceGroupName: myRg
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
/// $ pulumi import azure-native:securityinsights:Metadata metadataName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/metadata/{metadataName}
/// ```
class Metadata extends pulumi.CustomResource {
  /// The creator of the content item.
  late final pulumi.Output<MetadataAuthorResponse?> author;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Categories for the solution content item
  late final pulumi.Output<MetadataCategoriesResponse?> categories;
  /// Static ID for the content.  Used to identify dependencies and content from solutions or community.  Hard-coded/static for out of the box content and solutions. Dynamic for user-created.  This is the resource name
  late final pulumi.Output<String?> contentId;
  /// Schema version of the content. Can be used to distinguish between different flow based on the schema version
  late final pulumi.Output<String?> contentSchemaVersion;
  /// The custom version of the content. A optional free text
  late final pulumi.Output<String?> customVersion;
  /// Dependencies for the content item, what other content items it requires to work.  Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats.
  late final pulumi.Output<MetadataDependenciesResponse?> dependencies;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// first publish date solution content item
  late final pulumi.Output<String?> firstPublishDate;
  /// the icon identifier. this id can later be fetched from the solution template
  late final pulumi.Output<String?> icon;
  /// The kind of content the metadata is for.
  late final pulumi.Output<String> kind;
  /// last publish date for the solution content item
  late final pulumi.Output<String?> lastPublishDate;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Full parent resource ID of the content item the metadata is for.  This is the full resource ID including the scope (subscription and resource group)
  late final pulumi.Output<String> parentId;
  /// preview image file names. These will be taken from the solution artifacts
  late final pulumi.Output<List<String>?> previewImages;
  /// preview image file names. These will be taken from the solution artifacts. used for dark theme support
  late final pulumi.Output<List<String>?> previewImagesDark;
  /// Providers for the solution content item
  late final pulumi.Output<List<String>?> providers;
  /// Source of the content.  This is where/how it was created.
  late final pulumi.Output<MetadataSourceResponse?> source;
  /// Support information for the metadata - type, name, contact information
  late final pulumi.Output<MetadataSupportResponse?> support;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// the tactics the resource covers
  late final pulumi.Output<List<String>?> threatAnalysisTactics;
  /// the techniques the resource covers, these have to be aligned with the tactics being used
  late final pulumi.Output<List<String>?> threatAnalysisTechniques;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Version of the content.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM template best practices.  Can also be any string, but then we cannot guarantee any version checks
  late final pulumi.Output<String?> version;

  /// Creates a new [Metadata].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Metadata]. {@macro pulumi_securityinsights_metadata_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Metadata(
    String name, {
    MetadataArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:Metadata',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    author = registerOutput<MetadataAuthorResponse?>('author', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataAuthorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    categories = registerOutput<MetadataCategoriesResponse?>('categories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataCategoriesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    contentId = registerOutput<String?>('contentId');
    contentSchemaVersion = registerOutput<String?>('contentSchemaVersion');
    customVersion = registerOutput<String?>('customVersion');
    dependencies = registerOutput<MetadataDependenciesResponse?>('dependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataDependenciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    firstPublishDate = registerOutput<String?>('firstPublishDate');
    icon = registerOutput<String?>('icon');
    kind = registerOutput<String>('kind');
    lastPublishDate = registerOutput<String?>('lastPublishDate');
    this.name = registerOutput<String>('name');
    parentId = registerOutput<String>('parentId');
    previewImages = registerOutput<List<String>?>('previewImages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    previewImagesDark = registerOutput<List<String>?>('previewImagesDark', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    providers = registerOutput<List<String>?>('providers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    source = registerOutput<MetadataSourceResponse?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    support = registerOutput<MetadataSupportResponse?>('support', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataSupportResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    threatAnalysisTactics = registerOutput<List<String>?>('threatAnalysisTactics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    threatAnalysisTechniques = registerOutput<List<String>?>('threatAnalysisTechniques', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }

  /// Creates a typed reference to an existing [Metadata] resource.
  Metadata.reference(String urn)
    : super(
        'azure-native:securityinsights:Metadata',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    author = registerOutput<MetadataAuthorResponse?>('author', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataAuthorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    categories = registerOutput<MetadataCategoriesResponse?>('categories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataCategoriesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    contentId = registerOutput<String?>('contentId');
    contentSchemaVersion = registerOutput<String?>('contentSchemaVersion');
    customVersion = registerOutput<String?>('customVersion');
    dependencies = registerOutput<MetadataDependenciesResponse?>('dependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataDependenciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    firstPublishDate = registerOutput<String?>('firstPublishDate');
    icon = registerOutput<String?>('icon');
    kind = registerOutput<String>('kind');
    lastPublishDate = registerOutput<String?>('lastPublishDate');
    this.name = registerOutput<String>('name');
    parentId = registerOutput<String>('parentId');
    previewImages = registerOutput<List<String>?>('previewImages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    previewImagesDark = registerOutput<List<String>?>('previewImagesDark', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    providers = registerOutput<List<String>?>('providers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    source = registerOutput<MetadataSourceResponse?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    support = registerOutput<MetadataSupportResponse?>('support', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataSupportResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    threatAnalysisTactics = registerOutput<List<String>?>('threatAnalysisTactics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    threatAnalysisTechniques = registerOutput<List<String>?>('threatAnalysisTechniques', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
