import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_args.dart';
import 'key_vault_network_acls.dart';
import 'key_vault_state.dart';

/// Manages a Key Vault.
///
/// ## Disclaimers
///
/// &gt; **Note:** It's possible to define Key Vault Access Policies both within the `azure.keyvault.KeyVault` resource via the `accessPolicy` block and by using the `azure.keyvault.AccessPolicy` resource. However it's not possible to use both methods to manage Access Policies within a KeyVault, since there'll be conflicts.
///
/// &gt; **Note:** It's possible to define Key Vault Certificate Contacts both within the `azure.keyvault.KeyVault` resource via the `contact` block and by using the `azure.keyvault.CertificateContacts` resource. However it's not possible to use both methods to manage Certificate Contacts within a KeyVault, since there'll be conflicts.
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
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     enabledForDiskEncryption: true,
///     tenantId: current.then(current => current.tenantId),
///     softDeleteRetentionDays: 7,
///     purgeProtectionEnabled: false,
///     skuName: "standard",
///     accessPolicies: [{
///         tenantId: current.then(current => current.tenantId),
///         objectId: current.then(current => current.objectId),
///         keyPermissions: ["Get"],
///         secretPermissions: ["Get"],
///         storagePermissions: ["Get"],
///     }],
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
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     enabled_for_disk_encryption=True,
///     tenant_id=current.tenant_id,
///     soft_delete_retention_days=7,
///     purge_protection_enabled=False,
///     sku_name="standard",
///     access_policies=[{
///         "tenant_id": current.tenant_id,
///         "object_id": current.object_id,
///         "key_permissions": ["Get"],
///         "secret_permissions": ["Get"],
///         "storage_permissions": ["Get"],
///     }])
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
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         EnabledForDiskEncryption = true,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SoftDeleteRetentionDays = 7,
///         PurgeProtectionEnabled = false,
///         SkuName = "standard",
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Get",
///                 },
///                 StoragePermissions = new[]
///                 {
///                     "Get",
///                 },
///             },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
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
/// 		_, err = keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("examplekeyvault"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			EnabledForDiskEncryption: pulumi.Bool(true),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SoftDeleteRetentionDays:  pulumi.Int(7),
/// 			PurgeProtectionEnabled:   pulumi.Bool(false),
/// 			SkuName:                  pulumi.String("standard"),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 					},
/// 					StoragePermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 					},
/// 				},
/// 			},
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
/// resource "azure_keyvault_keyvault" "example" {
///   name                        = "examplekeyvault"
///   location                    = azure_core_resourcegroup.example.location
///   resource_group_name         = azure_core_resourcegroup.example.name
///   enabled_for_disk_encryption = true
///   tenant_id                   = data.azure_core_getclientconfig.current.tenant_id
///   soft_delete_retention_days  = 7
///   purge_protection_enabled    = false
///   sku_name                    = "standard"
///   access_policies {
///     tenant_id           = data.azure_core_getclientconfig.current.tenant_id
///     object_id           = data.azure_core_getclientconfig.current.object_id
///     key_permissions     = ["Get"]
///     secret_permissions  = ["Get"]
///     storage_permissions = ["Get"]
///   }
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
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
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
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .enabledForDiskEncryption(true)
///             .tenantId(current.tenantId())
///             .softDeleteRetentionDays(7)
///             .purgeProtectionEnabled(false)
///             .skuName("standard")
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(current.tenantId())
///                 .objectId(current.objectId())
///                 .keyPermissions("Get")
///                 .secretPermissions("Get")
///                 .storagePermissions("Get")
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
///       name: example-resources
///       location: West Europe
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       enabledForDiskEncryption: true
///       tenantId: ${current.tenantId}
///       softDeleteRetentionDays: 7
///       purgeProtectionEnabled: false
///       skuName: standard
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Get
///           secretPermissions:
///             - Get
///           storagePermissions:
///             - Get
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Key Vault's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/keyVault:KeyVault example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.KeyVault/vaults/vault1
/// ```
class KeyVault extends pulumi.CustomResource {
  /// A list of up to 1024 objects describing access policies, as described below.
  ///
  /// &gt; **Note:** Since `accessPolicy` can be configured both inline and via the separate `azure.keyvault.AccessPolicy` resource, we have to explicitly set it to empty slice (`[]`) to remove it.
  late final pulumi.Output<List<Map<String, dynamic>>> accessPolicies;
  late final pulumi.Output<List<Map<String, dynamic>>> contacts;
  late final pulumi.Output<bool> enableRbacAuthorization;
  /// Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.
  late final pulumi.Output<bool?> enabledForDeployment;
  /// Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.
  late final pulumi.Output<bool?> enabledForDiskEncryption;
  /// Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault.
  late final pulumi.Output<bool?> enabledForTemplateDeployment;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name.
  late final pulumi.Output<String> name;
  /// A `networkAcls` block as defined below.
  late final pulumi.Output<KeyVaultNetworkAcls> networkAcls;
  /// Whether public network access is allowed for this Key Vault. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// Is Purge Protection enabled for this Key Vault?
  ///
  /// &gt; **Note:** Once Purge Protection has been Enabled it's not possible to Disable it. Support for [disabling purge protection is being tracked in this Azure API issue](https://github.com/Azure/azure-rest-api-specs/issues/8075). Deleting the Key Vault with Purge Protection Enabled will schedule the Key Vault to be deleted (which will happen by Azure in the configured number of days, currently 90 days).
  late final pulumi.Output<bool?> purgeProtectionEnabled;
  /// Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions.
  ///
  /// &gt; **Note:** Changing the permission model requires unrestricted (no conditions on the role assignment) `Microsoft.Authorization/roleAssignments/write` permission, which is part of the `Owner` and `User Access Administrator` roles. Classic subscription administrator roles like `Service Administrator` and `Co-Administrator`, or restricted `Key Vault Data Access Administrator` cannot be used to change the permission model. For more information, please see the [product documentation](https://learn.microsoft.com/azure/key-vault/general/rbac-guide?tabs=azure-cli#using-azure-rbac-secret-key-and-certificate-permissions-with-key-vault:~:text=Enable%20Azure%20RBAC,change%20permission%20model).
  late final pulumi.Output<bool> rbacAuthorizationEnabled;
  /// The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Name of the SKU used for this Key Vault. Possible values are `standard` and `premium`.
  late final pulumi.Output<String> skuName;
  /// The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` (the default) days.
  ///
  /// &gt; **Note:** This field can only be configured one time and cannot be updated.
  late final pulumi.Output<int?> softDeleteRetentionDays;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  late final pulumi.Output<String> tenantId;
  /// The URI of the Key Vault, used for performing operations on keys and secrets.
  late final pulumi.Output<String> vaultUri;

  /// Creates a new [KeyVault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyVault]. {@macro pulumi_keyvault_key_vault_key_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyVault(
    String name, {
    KeyVaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/keyVault:KeyVault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicies = registerOutput<List<Map<String, dynamic>>>('accessPolicies');
    contacts = registerOutput<List<Map<String, dynamic>>>('contacts');
    enableRbacAuthorization = registerOutput<bool>('enableRbacAuthorization');
    enabledForDeployment = registerOutput<bool?>('enabledForDeployment');
    enabledForDiskEncryption = registerOutput<bool?>('enabledForDiskEncryption');
    enabledForTemplateDeployment = registerOutput<bool?>('enabledForTemplateDeployment');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkAcls = registerOutput<KeyVaultNetworkAcls>('networkAcls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyVaultNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    purgeProtectionEnabled = registerOutput<bool?>('purgeProtectionEnabled');
    rbacAuthorizationEnabled = registerOutput<bool>('rbacAuthorizationEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    softDeleteRetentionDays = registerOutput<int?>('softDeleteRetentionDays');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    vaultUri = registerOutput<String>('vaultUri');
  }

  /// Gets an existing [KeyVault] resource's state with the given [name] and [id].
  static KeyVault get(
    String name,
    pulumi.Input<String> id, {
    KeyVaultState? state,
  }) {
    return KeyVault._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KeyVault._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/keyVault:KeyVault',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicies = registerOutput<List<Map<String, dynamic>>>('accessPolicies');
    contacts = registerOutput<List<Map<String, dynamic>>>('contacts');
    enableRbacAuthorization = registerOutput<bool>('enableRbacAuthorization');
    enabledForDeployment = registerOutput<bool?>('enabledForDeployment');
    enabledForDiskEncryption = registerOutput<bool?>('enabledForDiskEncryption');
    enabledForTemplateDeployment = registerOutput<bool?>('enabledForTemplateDeployment');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkAcls = registerOutput<KeyVaultNetworkAcls>('networkAcls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyVaultNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    purgeProtectionEnabled = registerOutput<bool?>('purgeProtectionEnabled');
    rbacAuthorizationEnabled = registerOutput<bool>('rbacAuthorizationEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    softDeleteRetentionDays = registerOutput<int?>('softDeleteRetentionDays');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    vaultUri = registerOutput<String>('vaultUri');
  }
}
