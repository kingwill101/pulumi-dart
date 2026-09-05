import 'package:pulumi/pulumi.dart' as pulumi;
import 'saved_search_args.dart';
import 'saved_search_state.dart';

/// Manages a Log Analytics (formally Operational Insights) Saved Search.
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
///     name: "acctest-01",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleSavedSearch = new azure.loganalytics.SavedSearch("example", {
///     name: "exampleSavedSearch",
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
///     category: "exampleCategory",
///     displayName: "exampleDisplayName",
///     query: "exampleQuery",
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
///     name="acctest-01",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_saved_search = azure.loganalytics.SavedSearch("example",
///     name="exampleSavedSearch",
///     log_analytics_workspace_id=example_analytics_workspace.id,
///     category="exampleCategory",
///     display_name="exampleDisplayName",
///     query="exampleQuery")
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
///         Name = "acctest-01",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleSavedSearch = new Azure.LogAnalytics.SavedSearch("example", new()
///     {
///         Name = "exampleSavedSearch",
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///         Category = "exampleCategory",
///         DisplayName = "exampleDisplayName",
///         Query = "exampleQuery",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/loganalytics"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
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
/// 			Name:              pulumi.String("acctest-01"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loganalytics.NewSavedSearch(ctx, "example", &loganalytics.SavedSearchArgs{
/// 			Name:                    pulumi.String("exampleSavedSearch"),
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 			Category:                pulumi.String("exampleCategory"),
/// 			DisplayName:             pulumi.String("exampleDisplayName"),
/// 			Query:                   pulumi.String("exampleQuery"),
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
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "acctest-01"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
///   retention_in_days   = 30
/// }
/// resource "azure_loganalytics_savedsearch" "example" {
///   name                       = "exampleSavedSearch"
///   log_analytics_workspace_id = azure_operationalinsights_analyticsworkspace.example.id
///   category                   = "exampleCategory"
///   display_name               = "exampleDisplayName"
///   query                      = "exampleQuery"
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
/// import com.pulumi.azure.loganalytics.SavedSearch;
/// import com.pulumi.azure.loganalytics.SavedSearchArgs;
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
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("acctest-01")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleSavedSearch = new SavedSearch("exampleSavedSearch", SavedSearchArgs.builder()
///             .name("exampleSavedSearch")
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
///             .category("exampleCategory")
///             .displayName("exampleDisplayName")
///             .query("exampleQuery")
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
///       name: acctest-01
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleSavedSearch:
///     type: azure:loganalytics:SavedSearch
///     name: example
///     properties:
///       name: exampleSavedSearch
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
///       category: exampleCategory
///       displayName: exampleDisplayName
///       query: exampleQuery
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2020-08-01
///
/// ## Import
///
/// Log Analytics Saved Searches can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:loganalytics/savedSearch:SavedSearch search1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1/savedSearches/search1
/// ```
class SavedSearch extends pulumi.CustomResource {
  /// The category that the Saved Search will be listed under. Changing this forces a new resource to be created.
  late final pulumi.Output<String> category;
  /// The name that Saved Search will be displayed as. Changing this forces a new resource to be created.
  late final pulumi.Output<String> displayName;
  /// The function alias if the query serves as a function. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> functionAlias;
  /// The function parameters if the query serves as a function. Changing this forces a new resource to be created. For more examples and proper syntax please refer to [this document](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/functions/user-defined-functions).
  late final pulumi.Output<List<String>?> functionParameters;
  /// Specifies the ID of the Log Analytics Workspace that the Saved Search will be associated with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> logAnalyticsWorkspaceId;
  /// Specifies the name of the Log Analytics Saved Search. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The query expression for the saved search. Changing this forces a new resource to be created.
  late final pulumi.Output<String> query;
  /// A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [SavedSearch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SavedSearch]. {@macro pulumi_loganalytics_saved_search_saved_search_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SavedSearch(
    String name, {
    SavedSearchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/savedSearch:SavedSearch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    category = registerOutput<String>('category');
    displayName = registerOutput<String>('displayName');
    functionAlias = registerOutput<String?>('functionAlias');
    functionParameters = registerOutput<List<String>?>('functionParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [SavedSearch] resource's state with the given [name] and [id].
  static SavedSearch get(
    String name,
    pulumi.Input<String> id, {
    SavedSearchState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SavedSearch._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SavedSearch._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/savedSearch:SavedSearch',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    category = registerOutput<String>('category');
    displayName = registerOutput<String>('displayName');
    functionAlias = registerOutput<String?>('functionAlias');
    functionParameters = registerOutput<List<String>?>('functionParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [SavedSearch] resource.
  SavedSearch.reference(String urn)
    : super(
        'azure:loganalytics/savedSearch:SavedSearch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    category = registerOutput<String>('category');
    displayName = registerOutput<String>('displayName');
    functionAlias = registerOutput<String?>('functionAlias');
    functionParameters = registerOutput<List<String>?>('functionParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
