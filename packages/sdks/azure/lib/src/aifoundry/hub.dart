import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_args.dart';
import 'hub_encryption.dart';
import 'hub_identity.dart';
import 'hub_managed_network.dart';
import 'hub_state.dart';

/// Manages an AI Foundry Hub.
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
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
/// });
/// const test = new azure.keyvault.AccessPolicy("test", {
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
/// const exampleAIServices = new azure.cognitive.AIServices("example", {
///     name: "exampleaiservices",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "S0",
/// });
/// const exampleHub = new azure.aifoundry.Hub("example", {
///     name: "exampleaihub",
///     location: exampleAIServices.location,
///     resourceGroupName: example.name,
///     storageAccountId: exampleAccount.id,
///     keyVaultId: exampleKeyVault.id,
///     identity: {
///         type: "SystemAssigned",
///     },
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
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True)
/// test = azure.keyvault.AccessPolicy("test",
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
/// example_ai_services = azure.cognitive.AIServices("example",
///     name="exampleaiservices",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="S0")
/// example_hub = azure.aifoundry.Hub("example",
///     name="exampleaihub",
///     location=example_ai_services.location,
///     resource_group_name=example.name,
///     storage_account_id=example_account.id,
///     key_vault_id=example_key_vault.id,
///     identity={
///         "type": "SystemAssigned",
///     })
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
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///     });
///
///     var test = new Azure.KeyVault.AccessPolicy("test", new()
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
///     var exampleAIServices = new Azure.Cognitive.AIServices("example", new()
///     {
///         Name = "exampleaiservices",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "S0",
///     });
///
///     var exampleHub = new Azure.AIFoundry.Hub("example", new()
///     {
///         Name = "exampleaihub",
///         Location = exampleAIServices.Location,
///         ResourceGroupName = example.Name,
///         StorageAccountId = exampleAccount.Id,
///         KeyVaultId = exampleKeyVault.Id,
///         Identity = new Azure.AIFoundry.Inputs.HubIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/aifoundry"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cognitive"
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
/// 			Name:                   pulumi.String("examplekv"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			TenantId:               pulumi.String(current.TenantId),
/// 			SkuName:                pulumi.String("standard"),
/// 			PurgeProtectionEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewAccessPolicy(ctx, "test", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
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
/// 		exampleAIServices, err := cognitive.NewAIServices(ctx, "example", &cognitive.AIServicesArgs{
/// 			Name:              pulumi.String("exampleaiservices"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("S0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aifoundry.NewHub(ctx, "example", &aifoundry.HubArgs{
/// 			Name:              pulumi.String("exampleaihub"),
/// 			Location:          exampleAIServices.Location,
/// 			ResourceGroupName: example.Name,
/// 			StorageAccountId:  exampleAccount.ID(),
/// 			KeyVaultId:        exampleKeyVault.ID(),
/// 			Identity: &aifoundry.HubIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.cognitive.AIServices;
/// import com.pulumi.azure.cognitive.AIServicesArgs;
/// import com.pulumi.azure.aifoundry.Hub;
/// import com.pulumi.azure.aifoundry.HubArgs;
/// import com.pulumi.azure.aifoundry.inputs.HubIdentityArgs;
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
///             .name("example")
///             .location("westeurope")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var test = new AccessPolicy("test", AccessPolicyArgs.builder()
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
///         var exampleAIServices = new AIServices("exampleAIServices", AIServicesArgs.builder()
///             .name("exampleaiservices")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("S0")
///             .build());
///
///         var exampleHub = new Hub("exampleHub", HubArgs.builder()
///             .name("exampleaihub")
///             .location(exampleAIServices.location())
///             .resourceGroupName(example.name())
///             .storageAccountId(exampleAccount.id())
///             .keyVaultId(exampleKeyVault.id())
///             .identity(HubIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
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
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///   test:
///     type: azure:keyvault:AccessPolicy
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
///   exampleAIServices:
///     type: azure:cognitive:AIServices
///     name: example
///     properties:
///       name: exampleaiservices
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: S0
///   exampleHub:
///     type: azure:aifoundry:Hub
///     name: example
///     properties:
///       name: exampleaihub
///       location: ${exampleAIServices.location}
///       resourceGroupName: ${example.name}
///       storageAccountId: ${exampleAccount.id}
///       keyVaultId: ${exampleKeyVault.id}
///       identity:
///         type: SystemAssigned
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
/// AI Foundry Hubs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:aifoundry/hub:Hub example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.MachineLearningServices/workspaces/hub1
/// ```
class Hub extends pulumi.CustomResource {
  /// The Application Insights ID that should be used by this AI Foundry Hub.
  late final pulumi.Output<String?> applicationInsightsId;

  /// The Container Registry ID that should be used by this AI Foundry Hub.
  late final pulumi.Output<String?> containerRegistryId;

  /// The description of this AI Foundry Hub.
  late final pulumi.Output<String?> description;

  /// The URL for the discovery service to identify regional endpoints for AI Foundry Hub services.
  late final pulumi.Output<String> discoveryUrl;

  /// An `encryption` block as defined below. Changing this forces a new AI Foundry Hub to be created.
  late final pulumi.Output<HubEncryption?> encryption;

  /// The display name of this AI Foundry Hub.
  late final pulumi.Output<String?> friendlyName;

  /// Whether High Business Impact (HBI) should be enabled or not. Enabling this setting will reduce diagnostic data collected by the service. Changing this forces a new AI Foundry Hub to be created. Defaults to `false`.
  ///
  /// &gt; **Note:** `high_business_impact_enabled` will be enabled by default when creating an AI Foundry Hub with `encryption` enabled.
  late final pulumi.Output<bool> highBusinessImpactEnabled;

  /// A `identity` block as defined below.
  late final pulumi.Output<HubIdentity> identity;

  /// The Key Vault ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  late final pulumi.Output<String> keyVaultId;

  /// The Azure Region where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  late final pulumi.Output<String> location;

  /// A `managed_network` block as defined below.
  late final pulumi.Output<HubManagedNetwork> managedNetwork;

  /// The name which should be used for this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  late final pulumi.Output<String> name;

  /// The user assigned identity ID that represents the AI Foundry Hub identity. This must be set when enabling encryption with a user assigned identity.
  late final pulumi.Output<String?> primaryUserAssignedIdentity;

  /// Whether public network access for this AI Service Hub should be enabled. Possible values include `Enabled` and `Disabled`. Defaults to `Enabled`.
  late final pulumi.Output<String?> publicNetworkAccess;

  /// The name of the Resource Group where the AI Foundry Hub should exist. Changing this forces a new AI Foundry Hub to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The Storage Account ID that should be used by this AI Foundry Hub. Changing this forces a new AI Foundry Hub to be created.
  late final pulumi.Output<String> storageAccountId;

  /// A mapping of tags which should be assigned to the AI Foundry Hub.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The immutable ID associated with this AI Foundry Hub.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [Hub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Hub]. {@macro pulumi_aifoundry_hub_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Hub(String name, {HubArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:aifoundry/hub:Hub',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    applicationInsightsId = registerOutput<String?>('applicationInsightsId');
    containerRegistryId = registerOutput<String?>('containerRegistryId');
    description = registerOutput<String?>('description');
    discoveryUrl = registerOutput<String>('discoveryUrl');
    encryption = registerOutput<HubEncryption?>(
      'encryption',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HubEncryption.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    friendlyName = registerOutput<String?>('friendlyName');
    highBusinessImpactEnabled = registerOutput<bool>(
      'highBusinessImpactEnabled',
    );
    identity = registerOutput<HubIdentity>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HubIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyVaultId = registerOutput<String>('keyVaultId');
    location = registerOutput<String>('location');
    managedNetwork = registerOutput<HubManagedNetwork>(
      'managedNetwork',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HubManagedNetwork.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    primaryUserAssignedIdentity = registerOutput<String?>(
      'primaryUserAssignedIdentity',
    );
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    storageAccountId = registerOutput<String>('storageAccountId');
    tags = registerOutput<Map<String, String>?>('tags');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [Hub] resource's state with the given [name] and [id].
  static Hub get(String name, pulumi.Input<String> id, {HubState? state}) {
    return Hub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Hub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:aifoundry/hub:Hub',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationInsightsId = registerOutput<String?>('applicationInsightsId');
    containerRegistryId = registerOutput<String?>('containerRegistryId');
    description = registerOutput<String?>('description');
    discoveryUrl = registerOutput<String>('discoveryUrl');
    encryption = registerOutput<HubEncryption?>(
      'encryption',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HubEncryption.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    friendlyName = registerOutput<String?>('friendlyName');
    highBusinessImpactEnabled = registerOutput<bool>(
      'highBusinessImpactEnabled',
    );
    identity = registerOutput<HubIdentity>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HubIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyVaultId = registerOutput<String>('keyVaultId');
    location = registerOutput<String>('location');
    managedNetwork = registerOutput<HubManagedNetwork>(
      'managedNetwork',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HubManagedNetwork.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    primaryUserAssignedIdentity = registerOutput<String?>(
      'primaryUserAssignedIdentity',
    );
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    storageAccountId = registerOutput<String>('storageAccountId');
    tags = registerOutput<Map<String, String>?>('tags');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
