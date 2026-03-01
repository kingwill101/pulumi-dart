import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_insights_args.dart';
import 'storage_insights_state.dart';

/// Manages a Log Analytics Storage Insights resource.
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
///     name: "exampleworkspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestoracc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleStorageInsights = new azure.loganalytics.StorageInsights("example", {
///     name: "example-storageinsightconfig",
///     resourceGroupName: example.name,
///     workspaceId: exampleAnalyticsWorkspace.id,
///     storageAccountId: exampleAccount.id,
///     storageAccountKey: exampleAccount.primaryAccessKey,
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
///     name="exampleworkspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_account = azure.storage.Account("example",
///     name="examplestoracc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_storage_insights = azure.loganalytics.StorageInsights("example",
///     name="example-storageinsightconfig",
///     resource_group_name=example.name,
///     workspace_id=example_analytics_workspace.id,
///     storage_account_id=example_account.id,
///     storage_account_key=example_account.primary_access_key)
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
///         Name = "exampleworkspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestoracc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleStorageInsights = new Azure.LogAnalytics.StorageInsights("example", new()
///     {
///         Name = "example-storageinsightconfig",
///         ResourceGroupName = example.Name,
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
///         StorageAccountId = exampleAccount.Id,
///         StorageAccountKey = exampleAccount.PrimaryAccessKey,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 			Name:              pulumi.String("exampleworkspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestoracc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loganalytics.NewStorageInsights(ctx, "example", &loganalytics.StorageInsightsArgs{
/// 			Name:              pulumi.String("example-storageinsightconfig"),
/// 			ResourceGroupName: example.Name,
/// 			WorkspaceId:       exampleAnalyticsWorkspace.ID(),
/// 			StorageAccountId:  exampleAccount.ID(),
/// 			StorageAccountKey: exampleAccount.PrimaryAccessKey,
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.loganalytics.StorageInsights;
/// import com.pulumi.azure.loganalytics.StorageInsightsArgs;
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
///             .name("exampleworkspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestoracc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleStorageInsights = new StorageInsights("exampleStorageInsights", StorageInsightsArgs.builder()
///             .name("example-storageinsightconfig")
///             .resourceGroupName(example.name())
///             .workspaceId(exampleAnalyticsWorkspace.id())
///             .storageAccountId(exampleAccount.id())
///             .storageAccountKey(exampleAccount.primaryAccessKey())
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
///       name: exampleworkspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestoracc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleStorageInsights:
///     type: azure:loganalytics:StorageInsights
///     name: example
///     properties:
///       name: example-storageinsightconfig
///       resourceGroupName: ${example.name}
///       workspaceId: ${exampleAnalyticsWorkspace.id}
///       storageAccountId: ${exampleAccount.id}
///       storageAccountKey: ${exampleAccount.primaryAccessKey}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2020-08-01
///
/// ## Import
///
/// Log Analytics Storage Insight Configs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:loganalytics/storageInsights:StorageInsights example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/storageInsightConfigs/storageInsight1
/// ```
class StorageInsights extends pulumi.CustomResource {
  /// The names of the blob containers that the workspace should read.
  late final pulumi.Output<List<String>?> blobContainerNames;
  /// The name which should be used for this Log Analytics Storage Insights. Changing this forces a new Log Analytics Storage Insights to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Log Analytics Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the Storage Account used by this Log Analytics Storage Insights.
  late final pulumi.Output<String> storageAccountId;
  /// The storage access key to be used to connect to the storage account.
  late final pulumi.Output<String> storageAccountKey;
  /// The names of the Azure tables that the workspace should read.
  late final pulumi.Output<List<String>?> tableNames;
  /// The ID of the Log Analytics Workspace within which the Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [StorageInsights].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageInsights]. {@macro pulumi_loganalytics_storage_insights_storage_insights_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageInsights(
    String name, {
    StorageInsightsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/storageInsights:StorageInsights',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blobContainerNames = registerOutput<List<String>?>('blobContainerNames');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.storageAccountId = registerOutput<String>('storageAccountId');
    this.storageAccountKey = registerOutput<String>('storageAccountKey');
    this.tableNames = registerOutput<List<String>?>('tableNames');
    this.workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [StorageInsights] resource's state with the given [name] and [id].
  static StorageInsights get(
    String name,
    pulumi.Input<String> id, {
    StorageInsightsState? state,
  }) {
    return StorageInsights._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StorageInsights._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/storageInsights:StorageInsights',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blobContainerNames = registerOutput<List<String>?>('blobContainerNames');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.storageAccountId = registerOutput<String>('storageAccountId');
    this.storageAccountKey = registerOutput<String>('storageAccountKey');
    this.tableNames = registerOutput<List<String>?>('tableNames');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
