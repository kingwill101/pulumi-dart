import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_args.dart';
import 'metadata_author.dart';
import 'metadata_category.dart';
import 'metadata_source.dart';
import 'metadata_state.dart';
import 'metadata_support.dart';

/// Manages a Sentinel Metadata.
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
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example-workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "pergb2018",
/// });
/// const exampleAnalyticsSolution = new azure.operationalinsights.AnalyticsSolution("example", {
///     solutionName: "SecurityInsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     workspaceResourceId: exampleAnalyticsWorkspace.id,
///     workspaceName: exampleAnalyticsWorkspace.name,
///     plan: {
///         publisher: "Microsoft",
///         product: "OMSGallery/SecurityInsights",
///     },
/// });
/// const exampleAlertRuleNrt = new azure.sentinel.AlertRuleNrt("example", {
///     name: "example",
///     logAnalyticsWorkspaceId: exampleAnalyticsSolution.workspaceResourceId,
///     displayName: "example",
///     severity: "High",
///     query: `AzureActivity |
///   where OperationName == \\"Create or Update Virtual Machine\\" or OperationName ==\\"Create Deployment\\" |
///   where ActivityStatus == \\"Succeeded\\" |
///   make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller
/// `,
/// });
/// const exampleMetadata = new azure.sentinel.Metadata("example", {
///     name: "exampl",
///     workspaceId: exampleAnalyticsSolution.workspaceResourceId,
///     contentId: exampleAlertRuleNrt.name,
///     kind: "AnalyticsRule",
///     parentId: exampleAlertRuleNrt.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="pergb2018")
/// example_analytics_solution = azure.operationalinsights.AnalyticsSolution("example",
///     solution_name="SecurityInsights",
///     location=example.location,
///     resource_group_name=example.name,
///     workspace_resource_id=example_analytics_workspace.id,
///     workspace_name=example_analytics_workspace.name,
///     plan={
///         "publisher": "Microsoft",
///         "product": "OMSGallery/SecurityInsights",
///     })
/// example_alert_rule_nrt = azure.sentinel.AlertRuleNrt("example",
///     name="example",
///     log_analytics_workspace_id=example_analytics_solution.workspace_resource_id,
///     display_name="example",
///     severity="High",
///     query="""AzureActivity |
///   where OperationName == \"Create or Update Virtual Machine\" or OperationName ==\"Create Deployment\" |
///   where ActivityStatus == \"Succeeded\" |
///   make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller
/// """)
/// example_metadata = azure.sentinel.Metadata("example",
///     name="exampl",
///     workspace_id=example_analytics_solution.workspace_resource_id,
///     content_id=example_alert_rule_nrt.name,
///     kind="AnalyticsRule",
///     parent_id=example_alert_rule_nrt.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
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
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example-workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "pergb2018",
///     });
///
///     var exampleAnalyticsSolution = new Azure.OperationalInsights.AnalyticsSolution("example", new()
///     {
///         SolutionName = "SecurityInsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         WorkspaceResourceId = exampleAnalyticsWorkspace.Id,
///         WorkspaceName = exampleAnalyticsWorkspace.Name,
///         Plan = new Azure.OperationalInsights.Inputs.AnalyticsSolutionPlanArgs
///         {
///             Publisher = "Microsoft",
///             Product = "OMSGallery/SecurityInsights",
///         },
///     });
///
///     var exampleAlertRuleNrt = new Azure.Sentinel.AlertRuleNrt("example", new()
///     {
///         Name = "example",
///         LogAnalyticsWorkspaceId = exampleAnalyticsSolution.WorkspaceResourceId,
///         DisplayName = "example",
///         Severity = "High",
///         Query = @"AzureActivity |
///   where OperationName == \""Create or Update Virtual Machine\"" or OperationName ==\""Create Deployment\"" |
///   where ActivityStatus == \""Succeeded\"" |
///   make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller
/// ",
///     });
///
///     var exampleMetadata = new Azure.Sentinel.Metadata("example", new()
///     {
///         Name = "exampl",
///         WorkspaceId = exampleAnalyticsSolution.WorkspaceResourceId,
///         ContentId = exampleAlertRuleNrt.Name,
///         Kind = "AnalyticsRule",
///         ParentId = exampleAlertRuleNrt.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/sentinel"
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
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example-workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("pergb2018"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsSolution, err := operationalinsights.NewAnalyticsSolution(ctx, "example", &operationalinsights.AnalyticsSolutionArgs{
/// 			SolutionName:        pulumi.String("SecurityInsights"),
/// 			Location:            example.Location,
/// 			ResourceGroupName:   example.Name,
/// 			WorkspaceResourceId: exampleAnalyticsWorkspace.ID(),
/// 			WorkspaceName:       exampleAnalyticsWorkspace.Name,
/// 			Plan: &operationalinsights.AnalyticsSolutionPlanArgs{
/// 				Publisher: pulumi.String("Microsoft"),
/// 				Product:   pulumi.String("OMSGallery/SecurityInsights"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAlertRuleNrt, err := sentinel.NewAlertRuleNrt(ctx, "example", &sentinel.AlertRuleNrtArgs{
/// 			Name:                    pulumi.String("example"),
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsSolution.WorkspaceResourceId,
/// 			DisplayName:             pulumi.String("example"),
/// 			Severity:                pulumi.String("High"),
/// 			Query:                   pulumi.String("AzureActivity |\n  where OperationName == \\\"Create or Update Virtual Machine\\\" or OperationName ==\\\"Create Deployment\\\" |\n  where ActivityStatus == \\\"Succeeded\\\" |\n  make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sentinel.NewMetadata(ctx, "example", &sentinel.MetadataArgs{
/// 			Name:        pulumi.String("exampl"),
/// 			WorkspaceId: exampleAnalyticsSolution.WorkspaceResourceId,
/// 			ContentId:   exampleAlertRuleNrt.Name,
/// 			Kind:        pulumi.String("AnalyticsRule"),
/// 			ParentId:    exampleAlertRuleNrt.ID(),
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.operationalinsights.AnalyticsSolution;
/// import com.pulumi.azure.operationalinsights.AnalyticsSolutionArgs;
/// import com.pulumi.azure.operationalinsights.inputs.AnalyticsSolutionPlanArgs;
/// import com.pulumi.azure.sentinel.AlertRuleNrt;
/// import com.pulumi.azure.sentinel.AlertRuleNrtArgs;
/// import com.pulumi.azure.sentinel.Metadata;
/// import com.pulumi.azure.sentinel.MetadataArgs;
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
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example-workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("pergb2018")
///             .build());
///
///         var exampleAnalyticsSolution = new AnalyticsSolution("exampleAnalyticsSolution", AnalyticsSolutionArgs.builder()
///             .solutionName("SecurityInsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .workspaceResourceId(exampleAnalyticsWorkspace.id())
///             .workspaceName(exampleAnalyticsWorkspace.name())
///             .plan(AnalyticsSolutionPlanArgs.builder()
///                 .publisher("Microsoft")
///                 .product("OMSGallery/SecurityInsights")
///                 .build())
///             .build());
///
///         var exampleAlertRuleNrt = new AlertRuleNrt("exampleAlertRuleNrt", AlertRuleNrtArgs.builder()
///             .name("example")
///             .logAnalyticsWorkspaceId(exampleAnalyticsSolution.workspaceResourceId())
///             .displayName("example")
///             .severity("High")
///             .query("""
/// AzureActivity |
///   where OperationName == \"Create or Update Virtual Machine\" or OperationName ==\"Create Deployment\" |
///   where ActivityStatus == \"Succeeded\" |
///   make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller
///             """)
///             .build());
///
///         var exampleMetadata = new Metadata("exampleMetadata", MetadataArgs.builder()
///             .name("exampl")
///             .workspaceId(exampleAnalyticsSolution.workspaceResourceId())
///             .contentId(exampleAlertRuleNrt.name())
///             .kind("AnalyticsRule")
///             .parentId(exampleAlertRuleNrt.id())
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
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example-workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: pergb2018
///   exampleAnalyticsSolution:
///     type: azure:operationalinsights:AnalyticsSolution
///     name: example
///     properties:
///       solutionName: SecurityInsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       workspaceResourceId: ${exampleAnalyticsWorkspace.id}
///       workspaceName: ${exampleAnalyticsWorkspace.name}
///       plan:
///         publisher: Microsoft
///         product: OMSGallery/SecurityInsights
///   exampleAlertRuleNrt:
///     type: azure:sentinel:AlertRuleNrt
///     name: example
///     properties:
///       name: example
///       logAnalyticsWorkspaceId: ${exampleAnalyticsSolution.workspaceResourceId}
///       displayName: example
///       severity: High
///       query: |
///         AzureActivity |
///           where OperationName == \"Create or Update Virtual Machine\" or OperationName ==\"Create Deployment\" |
///           where ActivityStatus == \"Succeeded\" |
///           make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller
///   exampleMetadata:
///     type: azure:sentinel:Metadata
///     name: example
///     properties:
///       name: exampl
///       workspaceId: ${exampleAnalyticsSolution.workspaceResourceId}
///       contentId: ${exampleAlertRuleNrt.name}
///       kind: AnalyticsRule
///       parentId: ${exampleAlertRuleNrt.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2022-10-01-preview
///
/// ## Import
///
/// Sentinel Metadata can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/metadata:Metadata example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourcegroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/metadata/metadata1
/// ```
class Metadata extends pulumi.CustomResource {
  /// An `author` blocks as defined below.
  late final pulumi.Output<MetadataAuthor?> author;
  /// A `category` block as defined below.
  late final pulumi.Output<MetadataCategory?> category;
  /// The ID of the content. Used to identify dependencies and content from solutions or community.
  late final pulumi.Output<String> contentId;
  /// Schema version of the content. Can be used to distinguish between flow based on the schema version.
  late final pulumi.Output<String?> contentSchemaVersion;
  /// The Custom version of the content.
  late final pulumi.Output<String?> customVersion;
  /// A JSON formatted `dependency` block as defined below. Dependency for the content item, what other content items it requires to work.
  late final pulumi.Output<String?> dependency;
  /// The first publish date of solution content item.
  late final pulumi.Output<String?> firstPublishDate;
  /// The ID of the icon, this id can be fetched from the solution template.
  late final pulumi.Output<String?> iconId;
  /// The kind of content the metadata is for. Possible values are `AnalyticsRule`, `AnalyticsRuleTemplate`, `AutomationRule`, `AzureFunction`, `DataConnector`, `DataType`, `HuntingQuery`, `InvestigationQuery`, `LogicAppsCustomConnector`, `Parser`, `Playbook`, `PlaybookTemplate`, `Solution`, `Watchlist`, `WatchlistTemplate`, `Workbook` and `WorkbookTemplate`.
  late final pulumi.Output<String> kind;
  /// The last publish date of solution content item.
  late final pulumi.Output<String?> lastPublishDate;
  /// The name which should be used for this Sentinel Metadata. Changing this forces a new Sentinel Metadata to be created.
  late final pulumi.Output<String> name;
  /// The ID of the parent resource ID of the content item, which the metadata belongs to.
  late final pulumi.Output<String> parentId;
  /// Specifies a list of preview image file names. These will be taken from solution artifacts.
  late final pulumi.Output<List<String>?> previewImages;
  /// Specifies a list of preview image file names used for dark theme. These will be taken from solution artifacts.
  late final pulumi.Output<List<String>?> previewImagesDarks;
  /// Specifies a list of providers for the solution content item.
  late final pulumi.Output<List<String>?> providers;
  /// A `source` block as defined below.
  late final pulumi.Output<MetadataSource> source;
  /// A `support` block as defined below.
  late final pulumi.Output<MetadataSupport?> support;
  /// Specifies a list of tactics the resource covers. Possible values are `Reconnaissance`, `ResourceDevelopment`, `InitialAccess`, `Execution`, `Persistence`, `PrivilegeEscalation`, `DefenseEvasion`, `CredentialAccess`, `Discovery`, `LateralMovement`, `Collection`, `CommandAndControl`, `Exfiltration`, `Impact`, `ImpairProcessControl` and `InhibitResponseFunction`.
  late final pulumi.Output<List<String>?> threatAnalysisTactics;
  /// Specifies a list of techniques the resource covers.
  late final pulumi.Output<List<String>?> threatAnalysisTechniques;
  /// Version of the content.
  late final pulumi.Output<String?> version;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Metadata to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [Metadata].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Metadata]. {@macro pulumi_sentinel_metadata_metadata_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Metadata(
    String name, {
    MetadataArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/metadata:Metadata',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    author = registerOutput<MetadataAuthor?>('author', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataAuthor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    category = registerOutput<MetadataCategory?>('category', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataCategory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    contentId = registerOutput<String>('contentId');
    contentSchemaVersion = registerOutput<String?>('contentSchemaVersion');
    customVersion = registerOutput<String?>('customVersion');
    dependency = registerOutput<String?>('dependency');
    firstPublishDate = registerOutput<String?>('firstPublishDate');
    iconId = registerOutput<String?>('iconId');
    kind = registerOutput<String>('kind');
    lastPublishDate = registerOutput<String?>('lastPublishDate');
    this.name = registerOutput<String>('name');
    parentId = registerOutput<String>('parentId');
    previewImages = registerOutput<List<String>?>('previewImages');
    previewImagesDarks = registerOutput<List<String>?>('previewImagesDarks');
    providers = registerOutput<List<String>?>('providers');
    source = registerOutput<MetadataSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    support = registerOutput<MetadataSupport?>('support', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataSupport.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    threatAnalysisTactics = registerOutput<List<String>?>('threatAnalysisTactics');
    threatAnalysisTechniques = registerOutput<List<String>?>('threatAnalysisTechniques');
    version = registerOutput<String?>('version');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [Metadata] resource's state with the given [name] and [id].
  static Metadata get(
    String name,
    pulumi.Input<String> id, {
    MetadataState? state,
  }) {
    return Metadata._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Metadata._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/metadata:Metadata',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    author = registerOutput<MetadataAuthor?>('author', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataAuthor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    category = registerOutput<MetadataCategory?>('category', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataCategory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    contentId = registerOutput<String>('contentId');
    contentSchemaVersion = registerOutput<String?>('contentSchemaVersion');
    customVersion = registerOutput<String?>('customVersion');
    dependency = registerOutput<String?>('dependency');
    firstPublishDate = registerOutput<String?>('firstPublishDate');
    iconId = registerOutput<String?>('iconId');
    kind = registerOutput<String>('kind');
    lastPublishDate = registerOutput<String?>('lastPublishDate');
    this.name = registerOutput<String>('name');
    parentId = registerOutput<String>('parentId');
    previewImages = registerOutput<List<String>?>('previewImages');
    previewImagesDarks = registerOutput<List<String>?>('previewImagesDarks');
    providers = registerOutput<List<String>?>('providers');
    source = registerOutput<MetadataSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    support = registerOutput<MetadataSupport?>('support', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataSupport.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    threatAnalysisTactics = registerOutput<List<String>?>('threatAnalysisTactics');
    threatAnalysisTechniques = registerOutput<List<String>?>('threatAnalysisTechniques');
    version = registerOutput<String?>('version');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
