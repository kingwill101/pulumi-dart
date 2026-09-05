import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_identity.dart';
import 'project_state.dart';

/// Manages a Microsoft Foundry Hub (classic) Project resource.
///
/// &gt; **Note:** Hub‑based projects are considered legacy and are not compatible with the new Foundry experience. Microsoft recommends using the new Microsoft Foundry project resource, which should be provisioned using
/// `azure.cognitive.Account` and `azure.cognitive.AccountProject`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "westeurope",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekv",
///     location: example.location,
///     resourceGroupName: example.name,
///     rbacAuthorizationEnabled: false,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
/// });
/// const exampleAccessPolicy = new azure.keyvault.AccessPolicy("example", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     keyPermissions: [
///         "Create",
///         "Get",
///         "Delete",
///         "Purge",
///         "GetRotationPolicy",
///     ],
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleHub = new azure.aifoundry.Hub("example", {
///     name: "exampleaihub",
///     location: example.location,
///     resourceGroupName: example.name,
///     storageAccountId: exampleAccount.id,
///     keyVaultId: exampleKeyVault.id,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleProject = new azure.aifoundry.Project("example", {
///     name: "example",
///     location: exampleHub.location,
///     aiServicesHubId: exampleHub.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="westeurope")
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekv",
///     location=example.location,
///     resource_group_name=example.name,
///     rbac_authorization_enabled=False,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True)
/// example_access_policy = azure.keyvault.AccessPolicy("example",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     key_permissions=[
///         "Create",
///         "Get",
///         "Delete",
///         "Purge",
///         "GetRotationPolicy",
///     ])
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     location=example.location,
///     resource_group_name=example.name,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_hub = azure.aifoundry.Hub("example",
///     name="exampleaihub",
///     location=example.location,
///     resource_group_name=example.name,
///     storage_account_id=example_account.id,
///     key_vault_id=example_key_vault.id,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_project = azure.aifoundry.Project("example",
///     name="example",
///     location=example_hub.location,
///     ai_services_hub_id=example_hub.id)
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
///         Name = "example",
///         Location = "westeurope",
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         RbacAuthorizationEnabled = false,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///     });
///
///     var exampleAccessPolicy = new Azure.KeyVault.AccessPolicy("example", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Get",
///             "Delete",
///             "Purge",
///             "GetRotationPolicy",
///         },
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleHub = new Azure.AIFoundry.Hub("example", new()
///     {
///         Name = "exampleaihub",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         StorageAccountId = exampleAccount.Id,
///         KeyVaultId = exampleKeyVault.Id,
///         Identity = new Azure.AIFoundry.Inputs.HubIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleProject = new Azure.AIFoundry.Project("example", new()
///     {
///         Name = "example",
///         Location = exampleHub.Location,
///         AiServicesHubId = exampleHub.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/aifoundry"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
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
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("westeurope"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("examplekv"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			RbacAuthorizationEnabled: pulumi.Bool(false),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SkuName:                  pulumi.String("standard"),
/// 			PurgeProtectionEnabled:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewAccessPolicy(ctx, "example", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("GetRotationPolicy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHub, err := aifoundry.NewHub(ctx, "example", &aifoundry.HubArgs{
/// 			Name:              pulumi.String("exampleaihub"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			StorageAccountId:  exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			KeyVaultId:        exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			Identity: &aifoundry.HubIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aifoundry.NewProject(ctx, "example", &aifoundry.ProjectArgs{
/// 			Name:            pulumi.String("example"),
/// 			Location:        exampleHub.Location,
/// 			AiServicesHubId: exampleHub.ID().ToIDOutput().ToStringOutput(),
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
///   name     = "example"
///   location = "westeurope"
/// }
/// resource "azure_keyvault_keyvault" "example" {
///   name                       = "examplekv"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   rbac_authorization_enabled = false
///   tenant_id                  = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                   = "standard"
///   purge_protection_enabled   = true
/// }
/// resource "azure_keyvault_accesspolicy" "example" {
///   key_vault_id    = azure_keyvault_keyvault.example.id
///   tenant_id       = data.azure_core_getclientconfig.current.tenant_id
///   object_id       = data.azure_core_getclientconfig.current.object_id
///   key_permissions = ["Create", "Get", "Delete", "Purge", "GetRotationPolicy"]
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "examplesa"
///   location                 = azure_core_resourcegroup.example.location
///   resource_group_name      = azure_core_resourcegroup.example.name
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_aifoundry_hub" "example" {
///   name                = "exampleaihub"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   storage_account_id  = azure_storage_account.example.id
///   key_vault_id        = azure_keyvault_keyvault.example.id
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_aifoundry_project" "example" {
///   name               = "example"
///   location           = azure_aifoundry_hub.example.location
///   ai_services_hub_id = azure_aifoundry_hub.example.id
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
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.aifoundry.Hub;
/// import com.pulumi.azure.aifoundry.HubArgs;
/// import com.pulumi.azure.aifoundry.inputs.HubIdentityArgs;
/// import com.pulumi.azure.aifoundry.Project;
/// import com.pulumi.azure.aifoundry.ProjectArgs;
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
///             .name("example")
///             .location("westeurope")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .rbacAuthorizationEnabled(false)
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var exampleAccessPolicy = new AccessPolicy("exampleAccessPolicy", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .keyPermissions(
///                 "Create",
///                 "Get",
///                 "Delete",
///                 "Purge",
///                 "GetRotationPolicy")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleHub = new Hub("exampleHub", HubArgs.builder()
///             .name("exampleaihub")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .storageAccountId(exampleAccount.id())
///             .keyVaultId(exampleKeyVault.id())
///             .identity(HubIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleProject = new Project("exampleProject", ProjectArgs.builder()
///             .name("example")
///             .location(exampleHub.location())
///             .aiServicesHubId(exampleHub.id())
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
///       name: example
///       location: westeurope
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       rbacAuthorizationEnabled: false
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///   exampleAccessPolicy:
///     type: azure:keyvault:AccessPolicy
///     name: example
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       keyPermissions:
///         - Create
///         - Get
///         - Delete
///         - Purge
///         - GetRotationPolicy
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleHub:
///     type: azure:aifoundry:Hub
///     name: example
///     properties:
///       name: exampleaihub
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       storageAccountId: ${exampleAccount.id}
///       keyVaultId: ${exampleKeyVault.id}
///       identity:
///         type: SystemAssigned
///   exampleProject:
///     type: azure:aifoundry:Project
///     name: example
///     properties:
///       name: example
///       location: ${exampleHub.location}
///       aiServicesHubId: ${exampleHub.id}
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
/// AI Foundry Projects can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:aifoundry/project:Project example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.MachineLearningServices/workspaces/project1
/// ```
class Project extends pulumi.CustomResource {
  /// The AI Foundry ID under which this Project should be created. Changing this forces a new AI Foundry Project to be created.
  late final pulumi.Output<String> aiServicesHubId;
  /// The description of this AI Foundry Project.
  late final pulumi.Output<String?> description;
  /// The display name of this AI Foundry Project.
  late final pulumi.Output<String?> friendlyName;
  /// Whether High Business Impact (HBI) should be enabled or not. Enabling this setting will reduce diagnostic data collected by the service. Changing this forces a new AI Foundry Project to be created. Defaults to `false`.
  late final pulumi.Output<bool> highBusinessImpactEnabled;
  /// A `identity` block as defined below.
  late final pulumi.Output<ProjectIdentity?> identity;
  /// The Azure Region where the AI Foundry Project should exist. Changing this forces a new AI Foundry Project to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this AI Foundry Project. Changing this forces a new AI Foundry Project to be created.
  late final pulumi.Output<String> name;
  /// The user assigned identity ID that represents the AI Foundry Hub identity. This must be set when enabling encryption with a user assigned identity.
  late final pulumi.Output<String?> primaryUserAssignedIdentity;
  /// The immutable project ID associated with this AI Foundry Project.
  late final pulumi.Output<String> projectId;
  /// A mapping of tags which should be assigned to the AI Foundry Project.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_aifoundry_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:aifoundry/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    aiServicesHubId = registerOutput<String>('aiServicesHubId');
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String?>('friendlyName');
    highBusinessImpactEnabled = registerOutput<bool>('highBusinessImpactEnabled');
    identity = registerOutput<ProjectIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryUserAssignedIdentity = registerOutput<String?>('primaryUserAssignedIdentity');
    projectId = registerOutput<String>('projectId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:aifoundry/project:Project',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aiServicesHubId = registerOutput<String>('aiServicesHubId');
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String?>('friendlyName');
    highBusinessImpactEnabled = registerOutput<bool>('highBusinessImpactEnabled');
    identity = registerOutput<ProjectIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryUserAssignedIdentity = registerOutput<String?>('primaryUserAssignedIdentity');
    projectId = registerOutput<String>('projectId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Project] resource.
  Project.reference(String urn)
    : super(
        'azure:aifoundry/project:Project',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aiServicesHubId = registerOutput<String>('aiServicesHubId');
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String?>('friendlyName');
    highBusinessImpactEnabled = registerOutput<bool>('highBusinessImpactEnabled');
    identity = registerOutput<ProjectIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryUserAssignedIdentity = registerOutput<String?>('primaryUserAssignedIdentity');
    projectId = registerOutput<String>('projectId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
