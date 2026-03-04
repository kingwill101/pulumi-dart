import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_key_args.dart';
import 'customer_managed_key_state.dart';

/// Manages a Customer Managed Key for a Data Factory.
///
/// &gt; **Note:** The Customer Managed Key cannot be removed from the Data Factory once added. To remove the Customer Managed Key delete and recreate the parent Data Factory.
///
/// ## Example Usage
///
/// ### With System Assigned Identity
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
///     name: "example-key-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "examplekey",
///     keyVaultId: exampleKeyVault.id,
///     keyType: "RSA",
///     keySize: 2048,
///     keyOpts: [
///         "unwrapKey",
///         "wrapKey",
///     ],
/// });
/// const currentClientPolicy = new azure.keyvault.AccessPolicy("current_client_policy", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     keyPermissions: [
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "GetRotationPolicy",
///     ],
///     secretPermissions: [
///         "Delete",
///         "Get",
///         "Set",
///     ],
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example_data_factory",
///     location: example.location,
///     resourceGroupName: example.name,
///     identity: {
///         type: "SystemAssigned",
///         identityIds: [exampleAzurermUserAssignedIdentity.id],
///     },
/// });
/// const datafactory = new azure.keyvault.AccessPolicy("datafactory", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: exampleFactory.identity.apply(identity => identity?.tenantId),
///     objectId: exampleFactory.identity.apply(identity => identity?.principalId),
///     keyPermissions: [
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "GetRotationPolicy",
///         "WrapKey",
///         "UnwrapKey",
///     ],
///     secretPermissions: [
///         "Delete",
///         "Get",
///         "Set",
///     ],
/// });
/// const exampleCustomerManagedKey = new azure.datafactory.CustomerManagedKey("example", {
///     dataFactoryId: exampleFactory.id,
///     customerManagedKeyId: exampleKey.id,
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
///     name="example-key-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True)
/// example_key = azure.keyvault.Key("example",
///     name="examplekey",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "unwrapKey",
///         "wrapKey",
///     ])
/// current_client_policy = azure.keyvault.AccessPolicy("current_client_policy",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     key_permissions=[
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "GetRotationPolicy",
///     ],
///     secret_permissions=[
///         "Delete",
///         "Get",
///         "Set",
///     ])
/// example_factory = azure.datafactory.Factory("example",
///     name="example_data_factory",
///     location=example.location,
///     resource_group_name=example.name,
///     identity={
///         "type": "SystemAssigned",
///         "identity_ids": [example_azurerm_user_assigned_identity["id"]],
///     })
/// datafactory = azure.keyvault.AccessPolicy("datafactory",
///     key_vault_id=example_key_vault.id,
///     tenant_id=example_factory.identity.tenant_id,
///     object_id=example_factory.identity.principal_id,
///     key_permissions=[
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "GetRotationPolicy",
///         "WrapKey",
///         "UnwrapKey",
///     ],
///     secret_permissions=[
///         "Delete",
///         "Get",
///         "Set",
///     ])
/// example_customer_managed_key = azure.datafactory.CustomerManagedKey("example",
///     data_factory_id=example_factory.id,
///     customer_managed_key_id=example_key.id)
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
///         Name = "example-key-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "examplekey",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyType = "RSA",
///         KeySize = 2048,
///         KeyOpts = new[]
///         {
///             "unwrapKey",
///             "wrapKey",
///         },
///     });
///
///     var currentClientPolicy = new Azure.KeyVault.AccessPolicy("current_client_policy", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Delete",
///             "Get",
///             "Purge",
///             "Recover",
///             "Update",
///             "GetRotationPolicy",
///         },
///         SecretPermissions = new[]
///         {
///             "Delete",
///             "Get",
///             "Set",
///         },
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example_data_factory",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Identity = new Azure.DataFactory.Inputs.FactoryIdentityArgs
///         {
///             Type = "SystemAssigned",
///             IdentityIds = new[]
///             {
///                 exampleAzurermUserAssignedIdentity.Id,
///             },
///         },
///     });
///
///     var datafactory = new Azure.KeyVault.AccessPolicy("datafactory", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = exampleFactory.Identity.Apply(identity => identity?.TenantId),
///         ObjectId = exampleFactory.Identity.Apply(identity => identity?.PrincipalId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Delete",
///             "Get",
///             "Purge",
///             "Recover",
///             "Update",
///             "GetRotationPolicy",
///             "WrapKey",
///             "UnwrapKey",
///         },
///         SecretPermissions = new[]
///         {
///             "Delete",
///             "Get",
///             "Set",
///         },
///     });
///
///     var exampleCustomerManagedKey = new Azure.DataFactory.CustomerManagedKey("example", new()
///     {
///         DataFactoryId = exampleFactory.Id,
///         CustomerManagedKeyId = exampleKey.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
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
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                   pulumi.String("example-key-vault"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			TenantId:               pulumi.String(current.TenantId),
/// 			SkuName:                pulumi.String("standard"),
/// 			PurgeProtectionEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("examplekey"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			KeyType:    pulumi.String("RSA"),
/// 			KeySize:    pulumi.Int(2048),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("unwrapKey"),
/// 				pulumi.String("wrapKey"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewAccessPolicy(ctx, "current_client_policy", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("Update"),
/// 				pulumi.String("GetRotationPolicy"),
/// 			},
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Set"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example_data_factory"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Identity: &datafactory.FactoryIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleAzurermUserAssignedIdentity.Id,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewAccessPolicy(ctx, "datafactory", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId: pulumi.String(exampleFactory.Identity.ApplyT(func(identity datafactory.FactoryIdentity) (*string, error) {
/// 				return &identity.TenantId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ObjectId: pulumi.String(exampleFactory.Identity.ApplyT(func(identity datafactory.FactoryIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("Update"),
/// 				pulumi.String("GetRotationPolicy"),
/// 				pulumi.String("WrapKey"),
/// 				pulumi.String("UnwrapKey"),
/// 			},
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Set"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewCustomerManagedKey(ctx, "example", &datafactory.CustomerManagedKeyArgs{
/// 			DataFactoryId:        exampleFactory.ID(),
/// 			CustomerManagedKeyId: exampleKey.ID(),
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
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.inputs.FactoryIdentityArgs;
/// import com.pulumi.azure.datafactory.CustomerManagedKey;
/// import com.pulumi.azure.datafactory.CustomerManagedKeyArgs;
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
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example-key-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("examplekey")
///             .keyVaultId(exampleKeyVault.id())
///             .keyType("RSA")
///             .keySize(2048)
///             .keyOpts(
///                 "unwrapKey",
///                 "wrapKey")
///             .build());
///
///         var currentClientPolicy = new AccessPolicy("currentClientPolicy", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .keyPermissions(
///                 "Create",
///                 "Delete",
///                 "Get",
///                 "Purge",
///                 "Recover",
///                 "Update",
///                 "GetRotationPolicy")
///             .secretPermissions(
///                 "Delete",
///                 "Get",
///                 "Set")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example_data_factory")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .identity(FactoryIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .identityIds(exampleAzurermUserAssignedIdentity.id())
///                 .build())
///             .build());
///
///         var datafactory = new AccessPolicy("datafactory", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(exampleFactory.identity().applyValue(_identity -> _identity.tenantId()))
///             .objectId(exampleFactory.identity().applyValue(_identity -> _identity.principalId()))
///             .keyPermissions(
///                 "Create",
///                 "Delete",
///                 "Get",
///                 "Purge",
///                 "Recover",
///                 "Update",
///                 "GetRotationPolicy",
///                 "WrapKey",
///                 "UnwrapKey")
///             .secretPermissions(
///                 "Delete",
///                 "Get",
///                 "Set")
///             .build());
///
///         var exampleCustomerManagedKey = new CustomerManagedKey("exampleCustomerManagedKey", CustomerManagedKeyArgs.builder()
///             .dataFactoryId(exampleFactory.id())
///             .customerManagedKeyId(exampleKey.id())
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
///       name: example-key-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: examplekey
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - unwrapKey
///         - wrapKey
///   currentClientPolicy:
///     type: azure:keyvault:AccessPolicy
///     name: current_client_policy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       keyPermissions:
///         - Create
///         - Delete
///         - Get
///         - Purge
///         - Recover
///         - Update
///         - GetRotationPolicy
///       secretPermissions:
///         - Delete
///         - Get
///         - Set
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example_data_factory
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       identity:
///         type: SystemAssigned
///         identityIds:
///           - ${exampleAzurermUserAssignedIdentity.id}
///   datafactory:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${exampleFactory.identity.tenantId}
///       objectId: ${exampleFactory.identity.principalId}
///       keyPermissions:
///         - Create
///         - Delete
///         - Get
///         - Purge
///         - Recover
///         - Update
///         - GetRotationPolicy
///         - WrapKey
///         - UnwrapKey
///       secretPermissions:
///         - Delete
///         - Get
///         - Set
///   exampleCustomerManagedKey:
///     type: azure:datafactory:CustomerManagedKey
///     name: example
///     properties:
///       dataFactoryId: ${exampleFactory.id}
///       customerManagedKeyId: ${exampleKey.id}
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
/// * `Microsoft.DataFactory` - 2018-06-01
///
/// ## Import
///
/// Data Factory Customer Managed Keys can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/customerManagedKey:CustomerManagedKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example
/// ```
class CustomerManagedKey extends pulumi.CustomResource {
  /// The ID the of the Customer Managed Key to associate with the Data Factory.
  late final pulumi.Output<String> customerManagedKeyId;

  /// The ID of the Data Factory Resource the Customer Managed Key will be associated with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> dataFactoryId;

  /// The User Assigned Identity ID that will be used to access Key Vaults that contain the encryption keys.
  late final pulumi.Output<String?> userAssignedIdentityId;

  /// Creates a new [CustomerManagedKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomerManagedKey]. {@macro pulumi_datafactory_customer_managed_key_customer_managed_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomerManagedKey(
    String name, {
    CustomerManagedKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/customerManagedKey:CustomerManagedKey',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customerManagedKeyId = registerOutput<String>('customerManagedKeyId');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    userAssignedIdentityId = registerOutput<String?>('userAssignedIdentityId');
  }

  /// Gets an existing [CustomerManagedKey] resource's state with the given [name] and [id].
  static CustomerManagedKey get(
    String name,
    pulumi.Input<String> id, {
    CustomerManagedKeyState? state,
  }) {
    return CustomerManagedKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomerManagedKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/customerManagedKey:CustomerManagedKey',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customerManagedKeyId = registerOutput<String>('customerManagedKeyId');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    userAssignedIdentityId = registerOutput<String?>('userAssignedIdentityId');
  }
}
