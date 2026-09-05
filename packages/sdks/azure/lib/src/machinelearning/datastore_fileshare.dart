import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_fileshare_args.dart';
import 'datastore_fileshare_state.dart';

/// Manages a Machine Learning File Share DataStore.
///
/// ## Example Usage
///
/// ### With Azure File Share
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
///     rbacAuthorizationEnabled: false,
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
/// const exampleShare = new azure.storage.Share("example", {
///     name: "example",
///     storageAccountName: exampleAccount.name,
///     quota: 1,
/// });
/// const exampleDatastoreFileshare = new azure.machinelearning.DatastoreFileshare("example", {
///     name: "example-datastore",
///     workspaceId: exampleWorkspace.id,
///     storageFileshareId: exampleShare.resourceManagerId,
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
///     rbac_authorization_enabled=False,
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
/// example_share = azure.storage.Share("example",
///     name="example",
///     storage_account_name=example_account.name,
///     quota=1)
/// example_datastore_fileshare = azure.machinelearning.DatastoreFileshare("example",
///     name="example-datastore",
///     workspace_id=example_workspace.id,
///     storage_fileshare_id=example_share.resource_manager_id,
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
///         RbacAuthorizationEnabled = false,
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
///     var exampleShare = new Azure.Storage.Share("example", new()
///     {
///         Name = "example",
///         StorageAccountName = exampleAccount.Name,
///         Quota = 1,
///     });
///
///     var exampleDatastoreFileshare = new Azure.MachineLearning.DatastoreFileshare("example", new()
///     {
///         Name = "example-datastore",
///         WorkspaceId = exampleWorkspace.Id,
///         StorageFileshareId = exampleShare.ResourceManagerId,
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
/// 			Name:                     pulumi.String("workspaceexamplekeyvault"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			RbacAuthorizationEnabled: pulumi.Bool(false),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SkuName:                  pulumi.String("premium"),
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
/// 			ApplicationInsightsId: exampleInsights.ID().ToIDOutput().ToStringOutput(),
/// 			KeyVaultId:            exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			StorageAccountId:      exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			Identity: &machinelearning.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleShare, err := storage.NewShare(ctx, "example", &storage.ShareArgs{
/// 			Name:               pulumi.String("example"),
/// 			StorageAccountName: exampleAccount.Name,
/// 			Quota:              pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = machinelearning.NewDatastoreFileshare(ctx, "example", &machinelearning.DatastoreFileshareArgs{
/// 			Name:               pulumi.String("example-datastore"),
/// 			WorkspaceId:        exampleWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 			StorageFileshareId: exampleShare.ResourceManagerId,
/// 			AccountKey:         exampleAccount.PrimaryAccessKey,
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_appinsights_insights" "example" {
///   name                = "workspace-example-ai"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   application_type    = "web"
/// }
/// resource "azure_keyvault_keyvault" "example" {
///   name                       = "workspaceexamplekeyvault"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   rbac_authorization_enabled = false
///   tenant_id                  = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                   = "premium"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "workspacestorageaccount"
///   location                 = azure_core_resourcegroup.example.location
///   resource_group_name      = azure_core_resourcegroup.example.name
///   account_tier             = "Standard"
///   account_replication_type = "GRS"
/// }
/// resource "azure_machinelearning_workspace" "example" {
///   name                    = "example-workspace"
///   location                = azure_core_resourcegroup.example.location
///   resource_group_name     = azure_core_resourcegroup.example.name
///   application_insights_id = azure_appinsights_insights.example.id
///   key_vault_id            = azure_keyvault_keyvault.example.id
///   storage_account_id      = azure_storage_account.example.id
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_storage_share" "example" {
///   name                 = "example"
///   storage_account_name = azure_storage_account.example.name
///   quota                = 1
/// }
/// resource "azure_machinelearning_datastorefileshare" "example" {
///   name                 = "example-datastore"
///   workspace_id         = azure_machinelearning_workspace.example.id
///   storage_fileshare_id = azure_storage_share.example.resource_manager_id
///   account_key          = azure_storage_account.example.primary_access_key
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
/// import com.pulumi.azure.storage.Share;
/// import com.pulumi.azure.storage.ShareArgs;
/// import com.pulumi.azure.machinelearning.DatastoreFileshare;
/// import com.pulumi.azure.machinelearning.DatastoreFileshareArgs;
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
///             .rbacAuthorizationEnabled(false)
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
///         var exampleShare = new Share("exampleShare", ShareArgs.builder()
///             .name("example")
///             .storageAccountName(exampleAccount.name())
///             .quota(1)
///             .build());
///
///         var exampleDatastoreFileshare = new DatastoreFileshare("exampleDatastoreFileshare", DatastoreFileshareArgs.builder()
///             .name("example-datastore")
///             .workspaceId(exampleWorkspace.id())
///             .storageFileshareId(exampleShare.resourceManagerId())
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
///       rbacAuthorizationEnabled: false
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
///   exampleShare:
///     type: azure:storage:Share
///     name: example
///     properties:
///       name: example
///       storageAccountName: ${exampleAccount.name}
///       quota: 1
///   exampleDatastoreFileshare:
///     type: azure:machinelearning:DatastoreFileshare
///     name: example
///     properties:
///       name: example-datastore
///       workspaceId: ${exampleWorkspace.id}
///       storageFileshareId: ${exampleShare.resourceManagerId}
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
/// $ pulumi import azure:machinelearning/datastoreFileshare:DatastoreFileshare example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.MachineLearningServices/workspaces/mlw1/dataStores/datastore1
/// ```
class DatastoreFileshare extends pulumi.CustomResource {
  /// The access key of the Storage Account. Conflicts with `sharedAccessSignature`.
  late final pulumi.Output<String?> accountKey;
  /// Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created.
  late final pulumi.Output<String?> description;
  /// Indicate whether this Machines Learning DataStore is the default for the Workspace.
  late final pulumi.Output<bool> isDefault;
  /// The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  late final pulumi.Output<String> name;
  /// Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`.
  late final pulumi.Output<String?> serviceDataIdentity;
  /// The Shared Access Signature of the Storage Account. Conflicts with `accountKey`.
  late final pulumi.Output<String?> sharedAccessSignature;
  /// The ID of the Storage Account File Share. Changing this forces a new Machine Learning DataStore to be created.
  late final pulumi.Output<String> storageFileshareId;
  /// A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [DatastoreFileshare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatastoreFileshare]. {@macro pulumi_machinelearning_datastore_fileshare_datastore_fileshare_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatastoreFileshare(
    String name, {
    DatastoreFileshareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:machinelearning/datastoreFileshare:DatastoreFileshare',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['accountKey', 'sharedAccessSignature'],
        ) {
    accountKey = registerOutput<String?>('accountKey', isSecret: true);
    description = registerOutput<String?>('description');
    isDefault = registerOutput<bool>('isDefault');
    this.name = registerOutput<String>('name');
    serviceDataIdentity = registerOutput<String?>('serviceDataIdentity');
    sharedAccessSignature = registerOutput<String?>('sharedAccessSignature', isSecret: true);
    storageFileshareId = registerOutput<String>('storageFileshareId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [DatastoreFileshare] resource's state with the given [name] and [id].
  static DatastoreFileshare get(
    String name,
    pulumi.Input<String> id, {
    DatastoreFileshareState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DatastoreFileshare._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DatastoreFileshare._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:machinelearning/datastoreFileshare:DatastoreFileshare',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountKey = registerOutput<String?>('accountKey', isSecret: true);
    description = registerOutput<String?>('description');
    isDefault = registerOutput<bool>('isDefault');
    this.name = registerOutput<String>('name');
    serviceDataIdentity = registerOutput<String?>('serviceDataIdentity');
    sharedAccessSignature = registerOutput<String?>('sharedAccessSignature', isSecret: true);
    storageFileshareId = registerOutput<String>('storageFileshareId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Creates a typed reference to an existing [DatastoreFileshare] resource.
  DatastoreFileshare.reference(String urn)
    : super(
        'azure:machinelearning/datastoreFileshare:DatastoreFileshare',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['accountKey', 'sharedAccessSignature'],
        isResourceReference: true,
      ) {
    accountKey = registerOutput<String?>('accountKey', isSecret: true);
    description = registerOutput<String?>('description');
    isDefault = registerOutput<bool>('isDefault');
    this.name = registerOutput<String>('name');
    serviceDataIdentity = registerOutput<String?>('serviceDataIdentity');
    sharedAccessSignature = registerOutput<String?>('sharedAccessSignature', isSecret: true);
    storageFileshareId = registerOutput<String>('storageFileshareId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workspaceId = registerOutput<String>('workspaceId');
  }
}
