import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_args.dart';
import 'volume_group_encryption.dart';
import 'volume_group_identity.dart';
import 'volume_group_state.dart';

/// Manages an Elastic SAN Volume Group resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleElasticSan = new azure.elasticsan.ElasticSan("example", {
///     name: "examplees-es",
///     resourceGroupName: example.name,
///     location: example.location,
///     baseSizeInTib: 1,
///     sku: {
///         name: "Premium_LRS",
///     },
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "example-uai",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
///     serviceEndpoints: ["Microsoft.Storage.Global"],
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekv",
///     location: example.location,
///     resourceGroupName: example.name,
///     enabledForDiskEncryption: true,
///     tenantId: current.then(current => current.tenantId),
///     softDeleteRetentionDays: 7,
///     purgeProtectionEnabled: true,
///     skuName: "standard",
/// });
/// const userAssignedIdentity = new azure.keyvault.AccessPolicy("userAssignedIdentity", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: exampleUserAssignedIdentity.principalId,
///     keyPermissions: [
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ],
///     secretPermissions: ["Get"],
/// });
/// const client = new azure.keyvault.AccessPolicy("client", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     keyPermissions: [
///         "Get",
///         "Create",
///         "Delete",
///         "List",
///         "Restore",
///         "Recover",
///         "UnwrapKey",
///         "WrapKey",
///         "Purge",
///         "Encrypt",
///         "Decrypt",
///         "Sign",
///         "Verify",
///         "GetRotationPolicy",
///     ],
///     secretPermissions: ["Get"],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "example-kvk",
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
/// }, {
///     dependsOn: [
///         userAssignedIdentity,
///         client,
///     ],
/// });
/// const exampleVolumeGroup = new azure.elasticsan.VolumeGroup("example", {
///     name: "example-esvg",
///     elasticSanId: exampleElasticSan.id,
///     encryptionType: "EncryptionAtRestWithCustomerManagedKey",
///     encryption: {
///         keyVaultKeyId: exampleKey.versionlessId,
///         userAssignedIdentityId: exampleUserAssignedIdentity.id,
///     },
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
///     networkRules: [{
///         subnetId: exampleSubnet.id,
///         action: "Allow",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_elastic_san = azure.elasticsan.ElasticSan("example",
///     name="examplees-es",
///     resource_group_name=example.name,
///     location=example.location,
///     base_size_in_tib=1,
///     sku={
///         "name": "Premium_LRS",
///     })
/// current = azure.core.get_client_config()
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="example-uai",
///     location=example.location,
///     resource_group_name=example.name)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"],
///     service_endpoints=["Microsoft.Storage.Global"])
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekv",
///     location=example.location,
///     resource_group_name=example.name,
///     enabled_for_disk_encryption=True,
///     tenant_id=current.tenant_id,
///     soft_delete_retention_days=7,
///     purge_protection_enabled=True,
///     sku_name="standard")
/// user_assigned_identity = azure.keyvault.AccessPolicy("userAssignedIdentity",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=example_user_assigned_identity.principal_id,
///     key_permissions=[
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ],
///     secret_permissions=["Get"])
/// client = azure.keyvault.AccessPolicy("client",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     key_permissions=[
///         "Get",
///         "Create",
///         "Delete",
///         "List",
///         "Restore",
///         "Recover",
///         "UnwrapKey",
///         "WrapKey",
///         "Purge",
///         "Encrypt",
///         "Decrypt",
///         "Sign",
///         "Verify",
///         "GetRotationPolicy",
///     ],
///     secret_permissions=["Get"])
/// example_key = azure.keyvault.Key("example",
///     name="example-kvk",
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
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[
///             user_assigned_identity,
///             client,
///         ]))
/// example_volume_group = azure.elasticsan.VolumeGroup("example",
///     name="example-esvg",
///     elastic_san_id=example_elastic_san.id,
///     encryption_type="EncryptionAtRestWithCustomerManagedKey",
///     encryption={
///         "key_vault_key_id": example_key.versionless_id,
///         "user_assigned_identity_id": example_user_assigned_identity.id,
///     },
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
///     network_rules=[{
///         "subnet_id": example_subnet.id,
///         "action": "Allow",
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleElasticSan = new Azure.ElasticSan.ElasticSan("example", new()
///     {
///         Name = "examplees-es",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         BaseSizeInTib = 1,
///         Sku = new Azure.ElasticSan.Inputs.ElasticSanSkuArgs
///         {
///             Name = "Premium_LRS",
///         },
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "example-uai",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///         ServiceEndpoints = new[]
///         {
///             "Microsoft.Storage.Global",
///         },
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         EnabledForDiskEncryption = true,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SoftDeleteRetentionDays = 7,
///         PurgeProtectionEnabled = true,
///         SkuName = "standard",
///     });
///
///     var userAssignedIdentity = new Azure.KeyVault.AccessPolicy("userAssignedIdentity", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = exampleUserAssignedIdentity.PrincipalId,
///         KeyPermissions = new[]
///         {
///             "Get",
///             "UnwrapKey",
///             "WrapKey",
///         },
///         SecretPermissions = new[]
///         {
///             "Get",
///         },
///     });
///
///     var client = new Azure.KeyVault.AccessPolicy("client", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         KeyPermissions = new[]
///         {
///             "Get",
///             "Create",
///             "Delete",
///             "List",
///             "Restore",
///             "Recover",
///             "UnwrapKey",
///             "WrapKey",
///             "Purge",
///             "Encrypt",
///             "Decrypt",
///             "Sign",
///             "Verify",
///             "GetRotationPolicy",
///         },
///         SecretPermissions = new[]
///         {
///             "Get",
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "example-kvk",
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
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             userAssignedIdentity,
///             client,
///         },
///     });
///
///     var exampleVolumeGroup = new Azure.ElasticSan.VolumeGroup("example", new()
///     {
///         Name = "example-esvg",
///         ElasticSanId = exampleElasticSan.Id,
///         EncryptionType = "EncryptionAtRestWithCustomerManagedKey",
///         Encryption = new Azure.ElasticSan.Inputs.VolumeGroupEncryptionArgs
///         {
///             KeyVaultKeyId = exampleKey.VersionlessId,
///             UserAssignedIdentityId = exampleUserAssignedIdentity.Id,
///         },
///         Identity = new Azure.ElasticSan.Inputs.VolumeGroupIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///         NetworkRules = new[]
///         {
///             new Azure.ElasticSan.Inputs.VolumeGroupNetworkRuleArgs
///             {
///                 SubnetId = exampleSubnet.Id,
///                 Action = "Allow",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/elasticsan"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleElasticSan, err := elasticsan.NewElasticSan(ctx, "example", &elasticsan.ElasticSanArgs{
/// 			Name:              pulumi.String("examplees-es"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			BaseSizeInTib:     pulumi.Int(1),
/// 			Sku: &elasticsan.ElasticSanSkuArgs{
/// 				Name: pulumi.String("Premium_LRS"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example-uai"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 			ServiceEndpoints: pulumi.StringArray{
/// 				pulumi.String("Microsoft.Storage.Global"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("examplekv"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			EnabledForDiskEncryption: pulumi.Bool(true),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SoftDeleteRetentionDays:  pulumi.Int(7),
/// 			PurgeProtectionEnabled:   pulumi.Bool(true),
/// 			SkuName:                  pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		userAssignedIdentity, err := keyvault.NewAccessPolicy(ctx, "userAssignedIdentity", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   exampleUserAssignedIdentity.PrincipalId,
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("UnwrapKey"),
/// 				pulumi.String("WrapKey"),
/// 			},
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		client, err := keyvault.NewAccessPolicy(ctx, "client", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Restore"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("UnwrapKey"),
/// 				pulumi.String("WrapKey"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Encrypt"),
/// 				pulumi.String("Decrypt"),
/// 				pulumi.String("Sign"),
/// 				pulumi.String("Verify"),
/// 				pulumi.String("GetRotationPolicy"),
/// 			},
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("example-kvk"),
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
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			userAssignedIdentity,
/// 			client,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticsan.NewVolumeGroup(ctx, "example", &elasticsan.VolumeGroupArgs{
/// 			Name:           pulumi.String("example-esvg"),
/// 			ElasticSanId:   exampleElasticSan.ID(),
/// 			EncryptionType: pulumi.String("EncryptionAtRestWithCustomerManagedKey"),
/// 			Encryption: &elasticsan.VolumeGroupEncryptionArgs{
/// 				KeyVaultKeyId:          exampleKey.VersionlessId,
/// 				UserAssignedIdentityId: exampleUserAssignedIdentity.ID(),
/// 			},
/// 			Identity: &elasticsan.VolumeGroupIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 			NetworkRules: elasticsan.VolumeGroupNetworkRuleArray{
/// 				&elasticsan.VolumeGroupNetworkRuleArgs{
/// 					SubnetId: exampleSubnet.ID(),
/// 					Action:   pulumi.String("Allow"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.elasticsan.ElasticSan;
/// import com.pulumi.azure.elasticsan.ElasticSanArgs;
/// import com.pulumi.azure.elasticsan.inputs.ElasticSanSkuArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.elasticsan.VolumeGroup;
/// import com.pulumi.azure.elasticsan.VolumeGroupArgs;
/// import com.pulumi.azure.elasticsan.inputs.VolumeGroupEncryptionArgs;
/// import com.pulumi.azure.elasticsan.inputs.VolumeGroupIdentityArgs;
/// import com.pulumi.azure.elasticsan.inputs.VolumeGroupNetworkRuleArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleElasticSan = new ElasticSan("exampleElasticSan", ElasticSanArgs.builder()
///             .name("examplees-es")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .baseSizeInTib(1)
///             .sku(ElasticSanSkuArgs.builder()
///                 .name("Premium_LRS")
///                 .build())
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example-uai")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .serviceEndpoints("Microsoft.Storage.Global")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .enabledForDiskEncryption(true)
///             .tenantId(current.tenantId())
///             .softDeleteRetentionDays(7)
///             .purgeProtectionEnabled(true)
///             .skuName("standard")
///             .build());
///
///         var userAssignedIdentity = new AccessPolicy("userAssignedIdentity", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(exampleUserAssignedIdentity.principalId())
///             .keyPermissions(
///                 "Get",
///                 "UnwrapKey",
///                 "WrapKey")
///             .secretPermissions("Get")
///             .build());
///
///         var client = new AccessPolicy("client", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .keyPermissions(
///                 "Get",
///                 "Create",
///                 "Delete",
///                 "List",
///                 "Restore",
///                 "Recover",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Purge",
///                 "Encrypt",
///                 "Decrypt",
///                 "Sign",
///                 "Verify",
///                 "GetRotationPolicy")
///             .secretPermissions("Get")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("example-kvk")
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
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     userAssignedIdentity,
///                     client)
///                 .build());
///
///         var exampleVolumeGroup = new VolumeGroup("exampleVolumeGroup", VolumeGroupArgs.builder()
///             .name("example-esvg")
///             .elasticSanId(exampleElasticSan.id())
///             .encryptionType("EncryptionAtRestWithCustomerManagedKey")
///             .encryption(VolumeGroupEncryptionArgs.builder()
///                 .keyVaultKeyId(exampleKey.versionlessId())
///                 .userAssignedIdentityId(exampleUserAssignedIdentity.id())
///                 .build())
///             .identity(VolumeGroupIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .networkRules(VolumeGroupNetworkRuleArgs.builder()
///                 .subnetId(exampleSubnet.id())
///                 .action("Allow")
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
///       name: example-rg
///       location: West Europe
///   exampleElasticSan:
///     type: azure:elasticsan:ElasticSan
///     name: example
///     properties:
///       name: examplees-es
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       baseSizeInTib: 1
///       sku:
///         name: Premium_LRS
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: example-uai
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///       serviceEndpoints:
///         - Microsoft.Storage.Global
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       enabledForDiskEncryption: true
///       tenantId: ${current.tenantId}
///       softDeleteRetentionDays: 7
///       purgeProtectionEnabled: true
///       skuName: standard
///   userAssignedIdentity:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${exampleUserAssignedIdentity.principalId}
///       keyPermissions:
///         - Get
///         - UnwrapKey
///         - WrapKey
///       secretPermissions:
///         - Get
///   client:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       keyPermissions:
///         - Get
///         - Create
///         - Delete
///         - List
///         - Restore
///         - Recover
///         - UnwrapKey
///         - WrapKey
///         - Purge
///         - Encrypt
///         - Decrypt
///         - Sign
///         - Verify
///         - GetRotationPolicy
///       secretPermissions:
///         - Get
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: example-kvk
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
///     options:
///       dependsOn:
///         - ${userAssignedIdentity}
///         - ${client}
///   exampleVolumeGroup:
///     type: azure:elasticsan:VolumeGroup
///     name: example
///     properties:
///       name: example-esvg
///       elasticSanId: ${exampleElasticSan.id}
///       encryptionType: EncryptionAtRestWithCustomerManagedKey
///       encryption:
///         keyVaultKeyId: ${exampleKey.versionlessId}
///         userAssignedIdentityId: ${exampleUserAssignedIdentity.id}
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///       networkRules:
///         - subnetId: ${exampleSubnet.id}
///           action: Allow
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
/// * `Microsoft.ElasticSan` - 2023-01-01
///
/// ## Import
///
/// An existing Elastic SAN Volume Group can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:elasticsan/volumeGroup:VolumeGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ElasticSan/elasticSans/esan1/volumeGroups/vg1
/// ```
class VolumeGroup extends pulumi.CustomResource {
  /// Specifies the Elastic SAN ID within which this Elastic SAN Volume Group should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> elasticSanId;

  /// An `encryption` block as defined below.
  ///
  /// &gt; **Note:** The `encryption` block can only be set when `encryption_type` is set to `EncryptionAtRestWithCustomerManagedKey`.
  late final pulumi.Output<VolumeGroupEncryption?> encryption;

  /// Specifies the type of the key used to encrypt the data of the disk. Possible values are `EncryptionAtRestWithCustomerManagedKey` and `EncryptionAtRestWithPlatformKey`. Defaults to `EncryptionAtRestWithPlatformKey`.
  late final pulumi.Output<String?> encryptionType;

  /// An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Elastic SAN Volume Group.
  late final pulumi.Output<VolumeGroupIdentity?> identity;

  /// Specifies the name of this Elastic SAN Volume Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// One or more `network_rule` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> networkRules;

  /// Specifies the type of the storage target. The only possible value is `Iscsi`. Defaults to `Iscsi`.
  late final pulumi.Output<String?> protocolType;

  /// Creates a new [VolumeGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeGroup]. {@macro pulumi_elasticsan_volume_group_volume_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeGroup(
    String name, {
    VolumeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:elasticsan/volumeGroup:VolumeGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    elasticSanId = registerOutput<String>('elasticSanId');
    encryption = registerOutput<VolumeGroupEncryption?>(
      'encryption',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VolumeGroupEncryption.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    encryptionType = registerOutput<String?>('encryptionType');
    identity = registerOutput<VolumeGroupIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VolumeGroupIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    networkRules = registerOutput<List<Map<String, dynamic>>?>('networkRules');
    protocolType = registerOutput<String?>('protocolType');
  }

  /// Gets an existing [VolumeGroup] resource's state with the given [name] and [id].
  static VolumeGroup get(
    String name,
    pulumi.Input<String> id, {
    VolumeGroupState? state,
  }) {
    return VolumeGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:elasticsan/volumeGroup:VolumeGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    elasticSanId = registerOutput<String>('elasticSanId');
    encryption = registerOutput<VolumeGroupEncryption?>(
      'encryption',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VolumeGroupEncryption.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    encryptionType = registerOutput<String?>('encryptionType');
    identity = registerOutput<VolumeGroupIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VolumeGroupIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    networkRules = registerOutput<List<Map<String, dynamic>>?>('networkRules');
    protocolType = registerOutput<String?>('protocolType');
  }
}
