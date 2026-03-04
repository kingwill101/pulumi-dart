import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_redis_args.dart';
import 'managed_redis_customer_managed_key.dart';
import 'managed_redis_default_database.dart';
import 'managed_redis_identity.dart';
import 'managed_redis_state.dart';

/// Manages a [Managed Redis](https://learn.microsoft.com/azure/redis/overview). This resource supersedes azure.redis.EnterpriseCluster and azure.redis.EnterpriseDatabase resources. Please refer to the migration guide for more information on migrating from Redis Enterprise to Managed Redis: [Migrating from Redis Enterprise to Managed Redis](https://learn.microsoft.com/azure/redis/migrate/migrate-overview).
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
/// const exampleManagedRedis = new azure.managedredis.ManagedRedis("example", {
///     name: "example-managed-redis",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "Balanced_B3",
///     defaultDatabase: {
///         geoReplicationGroupName: "myGeoGroup",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_managed_redis = azure.managedredis.ManagedRedis("example",
///     name="example-managed-redis",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="Balanced_B3",
///     default_database={
///         "geo_replication_group_name": "myGeoGroup",
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleManagedRedis = new Azure.ManagedRedis.ManagedRedis("example", new()
///     {
///         Name = "example-managed-redis",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "Balanced_B3",
///         DefaultDatabase = new Azure.ManagedRedis.Inputs.ManagedRedisDefaultDatabaseArgs
///         {
///             GeoReplicationGroupName = "myGeoGroup",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/managedredis"
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
/// 		_, err = managedredis.NewManagedRedis(ctx, "example", &managedredis.ManagedRedisArgs{
/// 			Name:              pulumi.String("example-managed-redis"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("Balanced_B3"),
/// 			DefaultDatabase: &managedredis.ManagedRedisDefaultDatabaseArgs{
/// 				GeoReplicationGroupName: pulumi.String("myGeoGroup"),
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
/// import com.pulumi.azure.managedredis.ManagedRedis;
/// import com.pulumi.azure.managedredis.ManagedRedisArgs;
/// import com.pulumi.azure.managedredis.inputs.ManagedRedisDefaultDatabaseArgs;
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
///         var exampleManagedRedis = new ManagedRedis("exampleManagedRedis", ManagedRedisArgs.builder()
///             .name("example-managed-redis")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("Balanced_B3")
///             .defaultDatabase(ManagedRedisDefaultDatabaseArgs.builder()
///                 .geoReplicationGroupName("myGeoGroup")
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
///   exampleManagedRedis:
///     type: azure:managedredis:ManagedRedis
///     name: example
///     properties:
///       name: example-managed-redis
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: Balanced_B3
///       defaultDatabase:
///         geoReplicationGroupName: myGeoGroup
/// ```
///
///
///
/// ### With Customer Managed Key
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
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
///     accessPolicies: [
///         {
///             tenantId: current.then(current => current.tenantId),
///             objectId: current.then(current => current.objectId),
///             keyPermissions: [
///                 "Create",
///                 "Delete",
///                 "Get",
///                 "List",
///                 "Purge",
///                 "Recover",
///                 "Update",
///                 "GetRotationPolicy",
///                 "SetRotationPolicy",
///             ],
///         },
///         {
///             tenantId: current.then(current => current.tenantId),
///             objectId: exampleUserAssignedIdentity.principalId,
///             keyPermissions: [
///                 "Get",
///                 "WrapKey",
///                 "UnwrapKey",
///             ],
///         },
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "managedrediscmk",
///     keyVaultId: exampleKeyVault.id,
///     keyType: "RSA",
///     keySize: 2048,
///     keyOpts: [
///         "unwrapKey",
///         "wrapKey",
///     ],
/// });
/// const exampleManagedRedis = new azure.managedredis.ManagedRedis("example", {
///     name: "example-managed-redis",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "Balanced_B3",
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
///     customerManagedKey: {
///         keyVaultKeyId: exampleKey.id,
///         userAssignedIdentityId: exampleUserAssignedIdentity.id,
///     },
///     defaultDatabase: {
///         geoReplicationGroupName: "myGeoGroup",
///     },
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
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True,
///     access_policies=[
///         {
///             "tenant_id": current.tenant_id,
///             "object_id": current.object_id,
///             "key_permissions": [
///                 "Create",
///                 "Delete",
///                 "Get",
///                 "List",
///                 "Purge",
///                 "Recover",
///                 "Update",
///                 "GetRotationPolicy",
///                 "SetRotationPolicy",
///             ],
///         },
///         {
///             "tenant_id": current.tenant_id,
///             "object_id": example_user_assigned_identity.principal_id,
///             "key_permissions": [
///                 "Get",
///                 "WrapKey",
///                 "UnwrapKey",
///             ],
///         },
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="managedrediscmk",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "unwrapKey",
///         "wrapKey",
///     ])
/// example_managed_redis = azure.managedredis.ManagedRedis("example",
///     name="example-managed-redis",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="Balanced_B3",
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
///     customer_managed_key={
///         "key_vault_key_id": example_key.id,
///         "user_assigned_identity_id": example_user_assigned_identity.id,
///     },
///     default_database={
///         "geo_replication_group_name": "myGeoGroup",
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Create",
///                     "Delete",
///                     "Get",
///                     "List",
///                     "Purge",
///                     "Recover",
///                     "Update",
///                     "GetRotationPolicy",
///                     "SetRotationPolicy",
///                 },
///             },
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = exampleUserAssignedIdentity.PrincipalId,
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "WrapKey",
///                     "UnwrapKey",
///                 },
///             },
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "managedrediscmk",
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
///     var exampleManagedRedis = new Azure.ManagedRedis.ManagedRedis("example", new()
///     {
///         Name = "example-managed-redis",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "Balanced_B3",
///         Identity = new Azure.ManagedRedis.Inputs.ManagedRedisIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///         CustomerManagedKey = new Azure.ManagedRedis.Inputs.ManagedRedisCustomerManagedKeyArgs
///         {
///             KeyVaultKeyId = exampleKey.Id,
///             UserAssignedIdentityId = exampleUserAssignedIdentity.Id,
///         },
///         DefaultDatabase = new Azure.ManagedRedis.Inputs.ManagedRedisDefaultDatabaseArgs
///         {
///             GeoReplicationGroupName = "myGeoGroup",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/managedredis"
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
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                   pulumi.String("example"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			TenantId:               pulumi.String(current.TenantId),
/// 			SkuName:                pulumi.String("standard"),
/// 			PurgeProtectionEnabled: pulumi.Bool(true),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("Recover"),
/// 						pulumi.String("Update"),
/// 						pulumi.String("GetRotationPolicy"),
/// 						pulumi.String("SetRotationPolicy"),
/// 					},
/// 				},
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: exampleUserAssignedIdentity.PrincipalId,
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("WrapKey"),
/// 						pulumi.String("UnwrapKey"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("managedrediscmk"),
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
/// 		_, err = managedredis.NewManagedRedis(ctx, "example", &managedredis.ManagedRedisArgs{
/// 			Name:              pulumi.String("example-managed-redis"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("Balanced_B3"),
/// 			Identity: &managedredis.ManagedRedisIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 			CustomerManagedKey: &managedredis.ManagedRedisCustomerManagedKeyArgs{
/// 				KeyVaultKeyId:          exampleKey.ID(),
/// 				UserAssignedIdentityId: exampleUserAssignedIdentity.ID(),
/// 			},
/// 			DefaultDatabase: &managedredis.ManagedRedisDefaultDatabaseArgs{
/// 				GeoReplicationGroupName: pulumi.String("myGeoGroup"),
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.managedredis.ManagedRedis;
/// import com.pulumi.azure.managedredis.ManagedRedisArgs;
/// import com.pulumi.azure.managedredis.inputs.ManagedRedisIdentityArgs;
/// import com.pulumi.azure.managedredis.inputs.ManagedRedisCustomerManagedKeyArgs;
/// import com.pulumi.azure.managedredis.inputs.ManagedRedisDefaultDatabaseArgs;
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
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .accessPolicies(
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(current.tenantId())
///                     .objectId(current.objectId())
///                     .keyPermissions(
///                         "Create",
///                         "Delete",
///                         "Get",
///                         "List",
///                         "Purge",
///                         "Recover",
///                         "Update",
///                         "GetRotationPolicy",
///                         "SetRotationPolicy")
///                     .build(),
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(current.tenantId())
///                     .objectId(exampleUserAssignedIdentity.principalId())
///                     .keyPermissions(
///                         "Get",
///                         "WrapKey",
///                         "UnwrapKey")
///                     .build())
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("managedrediscmk")
///             .keyVaultId(exampleKeyVault.id())
///             .keyType("RSA")
///             .keySize(2048)
///             .keyOpts(
///                 "unwrapKey",
///                 "wrapKey")
///             .build());
///
///         var exampleManagedRedis = new ManagedRedis("exampleManagedRedis", ManagedRedisArgs.builder()
///             .name("example-managed-redis")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("Balanced_B3")
///             .identity(ManagedRedisIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .customerManagedKey(ManagedRedisCustomerManagedKeyArgs.builder()
///                 .keyVaultKeyId(exampleKey.id())
///                 .userAssignedIdentityId(exampleUserAssignedIdentity.id())
///                 .build())
///             .defaultDatabase(ManagedRedisDefaultDatabaseArgs.builder()
///                 .geoReplicationGroupName("myGeoGroup")
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
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Create
///             - Delete
///             - Get
///             - List
///             - Purge
///             - Recover
///             - Update
///             - GetRotationPolicy
///             - SetRotationPolicy
///         - tenantId: ${current.tenantId}
///           objectId: ${exampleUserAssignedIdentity.principalId}
///           keyPermissions:
///             - Get
///             - WrapKey
///             - UnwrapKey
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: managedrediscmk
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - unwrapKey
///         - wrapKey
///   exampleManagedRedis:
///     type: azure:managedredis:ManagedRedis
///     name: example
///     properties:
///       name: example-managed-redis
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: Balanced_B3
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///       customerManagedKey:
///         keyVaultKeyId: ${exampleKey.id}
///         userAssignedIdentityId: ${exampleUserAssignedIdentity.id}
///       defaultDatabase:
///         geoReplicationGroupName: myGeoGroup
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
/// * `Microsoft.Cache` - 2025-07-01
///
/// ## Import
///
/// Managed Redis instances can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:managedredis/managedRedis:ManagedRedis example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Cache/redisEnterprise/cluster1
/// ```
class ManagedRedis extends pulumi.CustomResource {
  /// A `customer_managed_key` block as defined below.
  late final pulumi.Output<ManagedRedisCustomerManagedKey?> customerManagedKey;

  /// A `default_database` block as defined below.
  ///
  /// &gt; **Note:** `default_database` is Required when creating a new Managed Redis.
  ///
  /// &gt; **Note:** A `default_database` can be deleted or recreated in-place but most properties will trigger an entire cluster replacement if changed. Data will be lost and Managed Redis will be unavailable during recreation.
  late final pulumi.Output<ManagedRedisDefaultDatabase?> defaultDatabase;

  /// Whether to enable high availability for the Managed Redis instance. Defaults to `true`. Changing this forces a new Managed Redis instance to be created.
  late final pulumi.Output<bool?> highAvailabilityEnabled;

  /// DNS name of the cluster endpoint.
  late final pulumi.Output<String> hostname;

  /// An `identity` block as defined below.
  late final pulumi.Output<ManagedRedisIdentity?> identity;

  /// The Azure Region where the Managed Redis instance should exist. Refer to "Redis Cache" on the [product availability documentation](https://azure.microsoft.com/explore/global-infrastructure/products-by-region/table) for supported locations. Changing this forces a new Managed Redis instance to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this Managed Redis instance. Changing this forces a new Managed Redis instance to be created.
  late final pulumi.Output<String> name;

  /// The public network access setting for the Managed Redis instance. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  late final pulumi.Output<String?> publicNetworkAccess;

  /// The name of the Resource Group where the Managed Redis instance should exist. Changing this forces a new Managed Redis instance to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The features and specification of the Managed Redis instance to deploy. Possible values are `Balanced_B0`, `Balanced_B1`, `Balanced_B10`, `Balanced_B100`, `Balanced_B1000`, `Balanced_B150`, `Balanced_B20`, `Balanced_B250`, `Balanced_B3`, `Balanced_B350`, `Balanced_B5`, `Balanced_B50`, `Balanced_B500`, `Balanced_B700`, `ComputeOptimized_X10`, `ComputeOptimized_X100`, `ComputeOptimized_X150`, `ComputeOptimized_X20`, `ComputeOptimized_X250`, `ComputeOptimized_X3`, `ComputeOptimized_X350`, `ComputeOptimized_X5`, `ComputeOptimized_X50`, `ComputeOptimized_X500`, `ComputeOptimized_X700`, `FlashOptimized_A1000`, `FlashOptimized_A1500`, `FlashOptimized_A2000`, `FlashOptimized_A250`, `FlashOptimized_A4500`, `FlashOptimized_A500`, `FlashOptimized_A700`, `MemoryOptimized_M10`, `MemoryOptimized_M100`, `MemoryOptimized_M1000`, `MemoryOptimized_M150`, `MemoryOptimized_M1500`, `MemoryOptimized_M20`, `MemoryOptimized_M2000`, `MemoryOptimized_M250`, `MemoryOptimized_M350`, `MemoryOptimized_M50`, `MemoryOptimized_M500` and `MemoryOptimized_M700`. `Balanced_B3` SKU or higher is required for geo-replication.
  ///
  /// &gt; **Note:** `Enterprise_` and `EnterpriseFlash_` prefixed SKUs were previously used by Redis Enterprise, and [not supported by Managed Redis](https://learn.microsoft.com/azure/redis/migrate/migrate-overview).
  ///
  /// &gt; **Note:** Changing `sku_name` to a lower tier is restricted by Azure under certain conditions, in which case the resource will be marked for recreation. Validation for this is on a best-effort basis, if the provider is unable to determine whether it can change the SKU in-place, it will attempt to do regardless and this request may fail. Please refer to the [Azure documentation](https://learn.microsoft.com/en-us/azure/redis/how-to-scale) for more information.
  late final pulumi.Output<String> skuName;

  /// A mapping of tags which should be assigned to the Managed Redis instance.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ManagedRedis].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedRedis]. {@macro pulumi_managedredis_managed_redis_managed_redis_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedRedis(
    String name, {
    ManagedRedisArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:managedredis/managedRedis:ManagedRedis',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customerManagedKey = registerOutput<ManagedRedisCustomerManagedKey?>(
      'customerManagedKey',
    );
    defaultDatabase = registerOutput<ManagedRedisDefaultDatabase?>(
      'defaultDatabase',
    );
    highAvailabilityEnabled = registerOutput<bool?>('highAvailabilityEnabled');
    hostname = registerOutput<String>('hostname');
    identity = registerOutput<ManagedRedisIdentity?>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ManagedRedis] resource's state with the given [name] and [id].
  static ManagedRedis get(
    String name,
    pulumi.Input<String> id, {
    ManagedRedisState? state,
  }) {
    return ManagedRedis._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedRedis._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:managedredis/managedRedis:ManagedRedis',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customerManagedKey = registerOutput<ManagedRedisCustomerManagedKey?>(
      'customerManagedKey',
    );
    defaultDatabase = registerOutput<ManagedRedisDefaultDatabase?>(
      'defaultDatabase',
    );
    highAvailabilityEnabled = registerOutput<bool?>('highAvailabilityEnabled');
    hostname = registerOutput<String>('hostname');
    identity = registerOutput<ManagedRedisIdentity?>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
