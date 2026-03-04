import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_blobstorage_args.dart';
import 'datastore_blobstorage_state.dart';

/// Manages a Machine Learning Blob Storage DataStore.
///
/// ## Example Usage
///
/// ### With Azure Blob
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "workspace-example-ai",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "workspaceexamplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "workspacestorageaccount",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
/// });
/// const exampleWorkspace = new azure.machinelearning.Workspace("example", {
///     name: "example-workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationInsightsId: exampleInsights.id,
///     keyVaultId: exampleKeyVault.id,
///     storageAccountId: exampleAccount.id,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "example-container",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleDatastoreBlobstorage = new azure.machinelearning.DatastoreBlobstorage("example", {
///     name: "example-datastore",
///     workspaceId: exampleWorkspace.id,
///     storageContainerId: exampleContainer.id,
///     accountKey: exampleAccount.primaryAccessKey,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="workspace-example-ai",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="workspaceexamplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="premium")
/// example_account = azure.storage.Account("example",
///     name="workspacestorageaccount",
///     location=example.location,
///     resource_group_name=example.name,
///     account_tier="Standard",
///     account_replication_type="GRS")
/// example_workspace = azure.machinelearning.Workspace("example",
///     name="example-workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     application_insights_id=example_insights.id,
///     key_vault_id=example_key_vault.id,
///     storage_account_id=example_account.id,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_container = azure.storage.Container("example",
///     name="example-container",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_datastore_blobstorage = azure.machinelearning.DatastoreBlobstorage("example",
///     name="example-datastore",
///     workspace_id=example_workspace.id,
///     storage_container_id=example_container.id,
///     account_key=example_account.primary_access_key)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "workspace-example-ai",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "workspaceexamplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "premium",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "workspacestorageaccount",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///     });
///
///     var exampleWorkspace = new Azure.MachineLearning.Workspace("example", new()
///     {
///         Name = "example-workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationInsightsId = exampleInsights.Id,
///         KeyVaultId = exampleKeyVault.Id,
///         StorageAccountId = exampleAccount.Id,
///         Identity = new Azure.MachineLearning.Inputs.WorkspaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "example-container",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleDatastoreBlobstorage = new Azure.MachineLearning.DatastoreBlobstorage("example", new()
///     {
///         Name = "example-datastore",
///         WorkspaceId = exampleWorkspace.Id,
///         StorageContainerId = exampleContainer.Id,
///         AccountKey = exampleAccount.PrimaryAccessKey,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/machinelearning"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("workspace-example-ai"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:              pulumi.String("workspaceexamplekeyvault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			SkuName:           pulumi.String("premium"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("workspacestorageaccount"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := machinelearning.NewWorkspace(ctx, "example", &machinelearning.WorkspaceArgs{
/// 			Name:                  pulumi.String("example-workspace"),
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			ApplicationInsightsId: exampleInsights.ID(),
/// 			KeyVaultId:            exampleKeyVault.ID(),
/// 			StorageAccountId:      exampleAccount.ID(),
/// 			Identity: &machinelearning.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("example-container"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = machinelearning.NewDatastoreBlobstorage(ctx, "example", &machinelearning.DatastoreBlobstorageArgs{
/// 			Name:               pulumi.String("example-datastore"),
/// 			WorkspaceId:        exampleWorkspace.ID(),
/// 			StorageContainerId: exampleContainer.ID(),
/// 			AccountKey:         exampleAccount.PrimaryAccessKey,
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.machinelearning.Workspace;
/// import com.pulumi.azure.machinelearning.WorkspaceArgs;
/// import com.pulumi.azure.machinelearning.inputs.WorkspaceIdentityArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.machinelearning.DatastoreBlobstorage;
/// import com.pulumi.azure.machinelearning.DatastoreBlobstorageArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("workspace-example-ai")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("workspaceexamplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("workspacestorageaccount")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationInsightsId(exampleInsights.id())
///             .keyVaultId(exampleKeyVault.id())
///             .storageAccountId(exampleAccount.id())
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("example-container")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleDatastoreBlobstorage = new DatastoreBlobstorage("exampleDatastoreBlobstorage", DatastoreBlobstorageArgs.builder()
///             .name("example-datastore")
///             .workspaceId(exampleWorkspace.id())
///             .storageContainerId(exampleContainer.id())
///             .accountKey(exampleAccount.primaryAccessKey())
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
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: workspace-example-ai
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: workspaceexamplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: premium
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: workspacestorageaccount
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountTier: Standard
///       accountReplicationType: GRS
///   exampleWorkspace:
///     type: azure:machinelearning:Workspace
///     name: example
///     properties:
///       name: example-workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationInsightsId: ${exampleInsights.id}
///       keyVaultId: ${exampleKeyVault.id}
///       storageAccountId: ${exampleAccount.id}
///       identity:
///         type: SystemAssigned
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: example-container
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleDatastoreBlobstorage:
///     type: azure:machinelearning:DatastoreBlobstorage
///     name: example
///     properties:
///       name: example-datastore
///       workspaceId: ${exampleWorkspace.id}
///       storageContainerId: ${exampleContainer.id}
///       accountKey: ${exampleAccount.primaryAccessKey}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.MachineLearningServices` - 2025-06-01
///
/// ## Import
///
/// Machine Learning DataStores can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:machinelearning/datastoreBlobstorage:DatastoreBlobstorage example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.MachineLearningServices/workspaces/mlw1/dataStores/datastore1
/// ```
class DatastoreBlobstorage extends pulumi.CustomResource {
  /// The access key of the Storage Account. Conflicts with `shared_access_signature`.
  late final pulumi.Output<String?> accountKey;

  /// Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created.
  late final pulumi.Output<String?> description;

  /// Specifies whether this Machines Learning DataStore is the default for the Workspace. Defaults to `false`.
  ///
  /// &gt; **Note:** `is_default` can only be set to `true` on update.
  late final pulumi.Output<bool?> isDefault;

  /// The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  late final pulumi.Output<String> name;

  /// Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`.
  late final pulumi.Output<String?> serviceDataAuthIdentity;

  /// The Shared Access Signature of the Storage Account. Conflicts with `account_key`.
  ///
  /// &gt; **Note:** If `service_data_auth_identity` is set to `None` or omitted, one of `account_key` or `shared_access_signature` must be specified.
  late final pulumi.Output<String?> sharedAccessSignature;

  /// The ID of the Storage Account Container. Changing this forces a new Machine Learning DataStore to be created.
  late final pulumi.Output<String> storageContainerId;

  /// A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [DatastoreBlobstorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatastoreBlobstorage]. {@macro pulumi_machinelearning_datastore_blobstorage_datastore_blobstorage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatastoreBlobstorage(
    String name, {
    DatastoreBlobstorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:machinelearning/datastoreBlobstorage:DatastoreBlobstorage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountKey = registerOutput<String?>('accountKey');
    description = registerOutput<String?>('description');
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    serviceDataAuthIdentity = registerOutput<String?>(
      'serviceDataAuthIdentity',
    );
    sharedAccessSignature = registerOutput<String?>('sharedAccessSignature');
    storageContainerId = registerOutput<String>('storageContainerId');
    tags = registerOutput<Map<String, String>?>('tags');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [DatastoreBlobstorage] resource's state with the given [name] and [id].
  static DatastoreBlobstorage get(
    String name,
    pulumi.Input<String> id, {
    DatastoreBlobstorageState? state,
  }) {
    return DatastoreBlobstorage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatastoreBlobstorage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:machinelearning/datastoreBlobstorage:DatastoreBlobstorage',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountKey = registerOutput<String?>('accountKey');
    description = registerOutput<String?>('description');
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    serviceDataAuthIdentity = registerOutput<String?>(
      'serviceDataAuthIdentity',
    );
    sharedAccessSignature = registerOutput<String?>('sharedAccessSignature');
    storageContainerId = registerOutput<String>('storageContainerId');
    tags = registerOutput<Map<String, String>?>('tags');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
