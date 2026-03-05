import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_storage_account_args.dart';
import 'linked_storage_account_state.dart';

/// Manages a Log Analytics Linked Storage Account.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "exampleworkspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
/// });
/// const exampleLinkedStorageAccount = new azure.loganalytics.LinkedStorageAccount("example", {
///     dataSourceType: "CustomLogs",
///     resourceGroupName: example.name,
///     workspaceId: exampleAnalyticsWorkspace.id,
///     storageAccountIds: [exampleAccount.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="GRS")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="exampleworkspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018")
/// example_linked_storage_account = azure.loganalytics.LinkedStorageAccount("example",
///     data_source_type="CustomLogs",
///     resource_group_name=example.name,
///     workspace_id=example_analytics_workspace.id,
///     storage_account_ids=[example_account.id])
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "exampleworkspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///     });
///
///     var exampleLinkedStorageAccount = new Azure.LogAnalytics.LinkedStorageAccount("example", new()
///     {
///         DataSourceType = "CustomLogs",
///         ResourceGroupName = example.Name,
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
///         StorageAccountIds = new[]
///         {
///             exampleAccount.Id,
///         },
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("exampleworkspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loganalytics.NewLinkedStorageAccount(ctx, "example", &loganalytics.LinkedStorageAccountArgs{
/// 			DataSourceType:    pulumi.String("CustomLogs"),
/// 			ResourceGroupName: example.Name,
/// 			WorkspaceId:       exampleAnalyticsWorkspace.ID(),
/// 			StorageAccountIds: pulumi.StringArray{
/// 				exampleAccount.ID(),
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.loganalytics.LinkedStorageAccount;
/// import com.pulumi.azure.loganalytics.LinkedStorageAccountArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("exampleworkspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .build());
///
///         var exampleLinkedStorageAccount = new LinkedStorageAccount("exampleLinkedStorageAccount", LinkedStorageAccountArgs.builder()
///             .dataSourceType("CustomLogs")
///             .resourceGroupName(example.name())
///             .workspaceId(exampleAnalyticsWorkspace.id())
///             .storageAccountIds(exampleAccount.id())
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: GRS
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: exampleworkspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///   exampleLinkedStorageAccount:
///     type: azure:loganalytics:LinkedStorageAccount
///     name: example
///     properties:
///       dataSourceType: CustomLogs
///       resourceGroupName: ${example.name}
///       workspaceId: ${exampleAnalyticsWorkspace.id}
///       storageAccountIds:
///         - ${exampleAccount.id}
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
/// Log Analytics Linked Storage Accounts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:loganalytics/linkedStorageAccount:LinkedStorageAccount example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/linkedStorageAccounts/{dataSourceType}
/// ```
class LinkedStorageAccount extends pulumi.CustomResource {
  /// The data source type which should be used for this Log Analytics Linked Storage Account. Possible values are `CustomLogs`, `AzureWatson`, `Query`, `Ingestion` and `Alerts`. Changing this forces a new Log Analytics Linked Storage Account to be created.
  late final pulumi.Output<String> dataSourceType;
  /// The name of the Resource Group where the Log Analytics Linked Storage Account should exist. Changing this forces a new Log Analytics Linked Storage Account to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The storage account resource ids to be linked.
  late final pulumi.Output<List<String>> storageAccountIds;
  /// The resource ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Linked Storage Account to be created.
  late final pulumi.Output<String> workspaceId;
  late final pulumi.Output<String> workspaceResourceId;

  /// Creates a new [LinkedStorageAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedStorageAccount]. {@macro pulumi_loganalytics_linked_storage_account_linked_storage_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedStorageAccount(
    String name, {
    LinkedStorageAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/linkedStorageAccount:LinkedStorageAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataSourceType = registerOutput<String>('dataSourceType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    storageAccountIds = registerOutput<List<String>>('storageAccountIds');
    workspaceId = registerOutput<String>('workspaceId');
    workspaceResourceId = registerOutput<String>('workspaceResourceId');
  }

  /// Gets an existing [LinkedStorageAccount] resource's state with the given [name] and [id].
  static LinkedStorageAccount get(
    String name,
    pulumi.Input<String> id, {
    LinkedStorageAccountState? state,
  }) {
    return LinkedStorageAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedStorageAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/linkedStorageAccount:LinkedStorageAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataSourceType = registerOutput<String>('dataSourceType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    storageAccountIds = registerOutput<List<String>>('storageAccountIds');
    workspaceId = registerOutput<String>('workspaceId');
    workspaceResourceId = registerOutput<String>('workspaceResourceId');
  }
}
