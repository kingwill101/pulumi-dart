import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_customer_managed_key_args.dart';
import 'namespace_customer_managed_key_state.dart';

/// Manages a Service Bus Namespace Customer Managed Key.
///
/// !&gt; **Note:** It is not possible to remove the Customer Managed Key from the Service Bus Namespace once it's been added. To remove the Customer Managed Key, the parent Service Bus Namespace must be deleted and recreated.
///
/// &gt; **Note:** This resource should only be used to create a Customer Managed Key for Service Bus Namespaces with System Assigned identities. The `customer_managed_key` block in `azure.servicebus.Namespace` should be used to create a Customer Managed Key for a Service Bus Namespace with a User Assigned identity.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resource-group",
///     location: "West Europe",
/// });
/// const exampleNamespace = new azure.servicebus.Namespace("example", {
///     name: "example-servicebus-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Premium",
///     premiumMessagingPartitions: 1,
///     capacity: 1,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example-key-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     enabledForDiskEncryption: true,
///     tenantId: current.then(current => current.tenantId),
///     softDeleteRetentionDays: 7,
///     purgeProtectionEnabled: true,
///     skuName: "standard",
///     accessPolicies: [
///         {
///             tenantId: current.then(current => current.tenantId),
///             objectId: current.then(current => current.objectId),
///             keyPermissions: [
///                 "Create",
///                 "Decrypt",
///                 "Encrypt",
///                 "Delete",
///                 "Get",
///                 "List",
///                 "Purge",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Verify",
///                 "GetRotationPolicy",
///             ],
///             secretPermissions: ["Set"],
///         },
///         {
///             tenantId: exampleNamespace.identity.apply(identity => identity?.tenantId),
///             objectId: exampleNamespace.identity.apply(identity => identity?.principalId),
///             keyPermissions: [
///                 "Create",
///                 "Decrypt",
///                 "Encrypt",
///                 "Delete",
///                 "Get",
///                 "List",
///                 "Purge",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Verify",
///                 "GetRotationPolicy",
///             ],
///             secretPermissions: ["Set"],
///         },
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "example-key-vault-key",
///     keyVaultId: exampleKeyVault.id,
///     keyType: "RSA",
///     keySize: 2048,
///     keyOpts: [
///         "decrypt",
///         "encrypt",
///         "sign",
///         "unwrapKey",
///         "verify",
///         "wrapKey",
///     ],
/// });
/// const exampleNamespaceCustomerManagedKey = new azure.servicebus.NamespaceCustomerManagedKey("example", {
///     namespaceId: exampleNamespace.id,
///     keyVaultKeyId: exampleKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resource-group",
///     location="West Europe")
/// example_namespace = azure.servicebus.Namespace("example",
///     name="example-servicebus-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Premium",
///     premium_messaging_partitions=1,
///     capacity=1,
///     identity={
///         "type": "SystemAssigned",
///     })
/// current = azure.core.get_client_config()
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example-key-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     enabled_for_disk_encryption=True,
///     tenant_id=current.tenant_id,
///     soft_delete_retention_days=7,
///     purge_protection_enabled=True,
///     sku_name="standard",
///     access_policies=[
///         {
///             "tenant_id": current.tenant_id,
///             "object_id": current.object_id,
///             "key_permissions": [
///                 "Create",
///                 "Decrypt",
///                 "Encrypt",
///                 "Delete",
///                 "Get",
///                 "List",
///                 "Purge",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Verify",
///                 "GetRotationPolicy",
///             ],
///             "secret_permissions": ["Set"],
///         },
///         {
///             "tenant_id": example_namespace.identity.tenant_id,
///             "object_id": example_namespace.identity.principal_id,
///             "key_permissions": [
///                 "Create",
///                 "Decrypt",
///                 "Encrypt",
///                 "Delete",
///                 "Get",
///                 "List",
///                 "Purge",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Verify",
///                 "GetRotationPolicy",
///             ],
///             "secret_permissions": ["Set"],
///         },
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="example-key-vault-key",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "decrypt",
///         "encrypt",
///         "sign",
///         "unwrapKey",
///         "verify",
///         "wrapKey",
///     ])
/// example_namespace_customer_managed_key = azure.servicebus.NamespaceCustomerManagedKey("example",
///     namespace_id=example_namespace.id,
///     key_vault_key_id=example_key.id)
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
///         Name = "example-resource-group",
///         Location = "West Europe",
///     });
///
///     var exampleNamespace = new Azure.ServiceBus.Namespace("example", new()
///     {
///         Name = "example-servicebus-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Premium",
///         PremiumMessagingPartitions = 1,
///         Capacity = 1,
///         Identity = new Azure.ServiceBus.Inputs.NamespaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example-key-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         EnabledForDiskEncryption = true,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SoftDeleteRetentionDays = 7,
///         PurgeProtectionEnabled = true,
///         SkuName = "standard",
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Create",
///                     "Decrypt",
///                     "Encrypt",
///                     "Delete",
///                     "Get",
///                     "List",
///                     "Purge",
///                     "UnwrapKey",
///                     "WrapKey",
///                     "Verify",
///                     "GetRotationPolicy",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Set",
///                 },
///             },
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = exampleNamespace.Identity.Apply(identity => identity?.TenantId),
///                 ObjectId = exampleNamespace.Identity.Apply(identity => identity?.PrincipalId),
///                 KeyPermissions = new[]
///                 {
///                     "Create",
///                     "Decrypt",
///                     "Encrypt",
///                     "Delete",
///                     "Get",
///                     "List",
///                     "Purge",
///                     "UnwrapKey",
///                     "WrapKey",
///                     "Verify",
///                     "GetRotationPolicy",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Set",
///                 },
///             },
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "example-key-vault-key",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyType = "RSA",
///         KeySize = 2048,
///         KeyOpts = new[]
///         {
///             "decrypt",
///             "encrypt",
///             "sign",
///             "unwrapKey",
///             "verify",
///             "wrapKey",
///         },
///     });
///
///     var exampleNamespaceCustomerManagedKey = new Azure.ServiceBus.NamespaceCustomerManagedKey("example", new()
///     {
///         NamespaceId = exampleNamespace.Id,
///         KeyVaultKeyId = exampleKey.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicebus"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
/// 			Name:                       pulumi.String("example-servicebus-namespace"),
/// 			Location:                   example.Location,
/// 			ResourceGroupName:          example.Name,
/// 			Sku:                        pulumi.String("Premium"),
/// 			PremiumMessagingPartitions: pulumi.Int(1),
/// 			Capacity:                   pulumi.Int(1),
/// 			Identity: &servicebus.NamespaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("example-key-vault"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			EnabledForDiskEncryption: pulumi.Bool(true),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SoftDeleteRetentionDays:  pulumi.Int(7),
/// 			PurgeProtectionEnabled:   pulumi.Bool(true),
/// 			SkuName:                  pulumi.String("standard"),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Decrypt"),
/// 						pulumi.String("Encrypt"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("UnwrapKey"),
/// 						pulumi.String("WrapKey"),
/// 						pulumi.String("Verify"),
/// 						pulumi.String("GetRotationPolicy"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Set"),
/// 					},
/// 				},
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: exampleNamespace.Identity.ApplyT(func(identity servicebus.NamespaceIdentity) (*string, error) {
/// 						return &identity.TenantId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					ObjectId: exampleNamespace.Identity.ApplyT(func(identity servicebus.NamespaceIdentity) (*string, error) {
/// 						return &identity.PrincipalId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Decrypt"),
/// 						pulumi.String("Encrypt"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("UnwrapKey"),
/// 						pulumi.String("WrapKey"),
/// 						pulumi.String("Verify"),
/// 						pulumi.String("GetRotationPolicy"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Set"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("example-key-vault-key"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			KeyType:    pulumi.String("RSA"),
/// 			KeySize:    pulumi.Int(2048),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("decrypt"),
/// 				pulumi.String("encrypt"),
/// 				pulumi.String("sign"),
/// 				pulumi.String("unwrapKey"),
/// 				pulumi.String("verify"),
/// 				pulumi.String("wrapKey"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicebus.NewNamespaceCustomerManagedKey(ctx, "example", &servicebus.NamespaceCustomerManagedKeyArgs{
/// 			NamespaceId:   exampleNamespace.ID(),
/// 			KeyVaultKeyId: exampleKey.ID(),
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
/// import com.pulumi.azure.servicebus.Namespace;
/// import com.pulumi.azure.servicebus.NamespaceArgs;
/// import com.pulumi.azure.servicebus.inputs.NamespaceIdentityArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.servicebus.NamespaceCustomerManagedKey;
/// import com.pulumi.azure.servicebus.NamespaceCustomerManagedKeyArgs;
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
///             .name("example-resource-group")
///             .location("West Europe")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("example-servicebus-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Premium")
///             .premiumMessagingPartitions(1)
///             .capacity(1)
///             .identity(NamespaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example-key-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .enabledForDiskEncryption(true)
///             .tenantId(current.tenantId())
///             .softDeleteRetentionDays(7)
///             .purgeProtectionEnabled(true)
///             .skuName("standard")
///             .accessPolicies(
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(current.tenantId())
///                     .objectId(current.objectId())
///                     .keyPermissions(
///                         "Create",
///                         "Decrypt",
///                         "Encrypt",
///                         "Delete",
///                         "Get",
///                         "List",
///                         "Purge",
///                         "UnwrapKey",
///                         "WrapKey",
///                         "Verify",
///                         "GetRotationPolicy")
///                     .secretPermissions("Set")
///                     .build(),
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(exampleNamespace.identity().applyValue(_identity -> _identity.tenantId()))
///                     .objectId(exampleNamespace.identity().applyValue(_identity -> _identity.principalId()))
///                     .keyPermissions(
///                         "Create",
///                         "Decrypt",
///                         "Encrypt",
///                         "Delete",
///                         "Get",
///                         "List",
///                         "Purge",
///                         "UnwrapKey",
///                         "WrapKey",
///                         "Verify",
///                         "GetRotationPolicy")
///                     .secretPermissions("Set")
///                     .build())
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("example-key-vault-key")
///             .keyVaultId(exampleKeyVault.id())
///             .keyType("RSA")
///             .keySize(2048)
///             .keyOpts(
///                 "decrypt",
///                 "encrypt",
///                 "sign",
///                 "unwrapKey",
///                 "verify",
///                 "wrapKey")
///             .build());
///
///         var exampleNamespaceCustomerManagedKey = new NamespaceCustomerManagedKey("exampleNamespaceCustomerManagedKey", NamespaceCustomerManagedKeyArgs.builder()
///             .namespaceId(exampleNamespace.id())
///             .keyVaultKeyId(exampleKey.id())
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
///       name: example-resource-group
///       location: West Europe
///   exampleNamespace:
///     type: azure:servicebus:Namespace
///     name: example
///     properties:
///       name: example-servicebus-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Premium
///       premiumMessagingPartitions: 1
///       capacity: 1
///       identity:
///         type: SystemAssigned
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example-key-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       enabledForDiskEncryption: true
///       tenantId: ${current.tenantId}
///       softDeleteRetentionDays: 7
///       purgeProtectionEnabled: true
///       skuName: standard
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Create
///             - Decrypt
///             - Encrypt
///             - Delete
///             - Get
///             - List
///             - Purge
///             - UnwrapKey
///             - WrapKey
///             - Verify
///             - GetRotationPolicy
///           secretPermissions:
///             - Set
///         - tenantId: ${exampleNamespace.identity.tenantId}
///           objectId: ${exampleNamespace.identity.principalId}
///           keyPermissions:
///             - Create
///             - Decrypt
///             - Encrypt
///             - Delete
///             - Get
///             - List
///             - Purge
///             - UnwrapKey
///             - WrapKey
///             - Verify
///             - GetRotationPolicy
///           secretPermissions:
///             - Set
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: example-key-vault-key
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - decrypt
///         - encrypt
///         - sign
///         - unwrapKey
///         - verify
///         - wrapKey
///   exampleNamespaceCustomerManagedKey:
///     type: azure:servicebus:NamespaceCustomerManagedKey
///     name: example
///     properties:
///       namespaceId: ${exampleNamespace.id}
///       keyVaultKeyId: ${exampleKey.id}
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
/// * `Microsoft.ServiceBus` - 2024-01-01
///
/// ## Import
///
/// Service Bus Namespace Customer Managed Key can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:servicebus/namespaceCustomerManagedKey:NamespaceCustomerManagedKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ServiceBus/namespaces/sbns1
/// ```
class NamespaceCustomerManagedKeyServicebus extends pulumi.CustomResource {
  /// Used to specify whether enable Infrastructure Encryption. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> infrastructureEncryptionEnabled;

  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Service Bus Namespace.
  late final pulumi.Output<String> keyVaultKeyId;

  /// The ID of the Service Bus namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> namespaceId;

  /// Creates a new [NamespaceCustomerManagedKeyServicebus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceCustomerManagedKeyServicebus]. {@macro pulumi_servicebus_namespace_customer_managed_key_namespace_customer_managed_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceCustomerManagedKeyServicebus(
    String name, {
    NamespaceCustomerManagedKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:servicebus/namespaceCustomerManagedKey:NamespaceCustomerManagedKey',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    infrastructureEncryptionEnabled = registerOutput<bool?>(
      'infrastructureEncryptionEnabled',
    );
    keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    namespaceId = registerOutput<String>('namespaceId');
  }

  /// Gets an existing [NamespaceCustomerManagedKeyServicebus] resource's state with the given [name] and [id].
  static NamespaceCustomerManagedKeyServicebus get(
    String name,
    pulumi.Input<String> id, {
    NamespaceCustomerManagedKeyState? state,
  }) {
    return NamespaceCustomerManagedKeyServicebus._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NamespaceCustomerManagedKeyServicebus._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:servicebus/namespaceCustomerManagedKey:NamespaceCustomerManagedKey',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    infrastructureEncryptionEnabled = registerOutput<bool?>(
      'infrastructureEncryptionEnabled',
    );
    keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    namespaceId = registerOutput<String>('namespaceId');
  }
}
