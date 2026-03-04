import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_customer_managed_key_args.dart';
import 'namespace_customer_managed_key_state.dart';

/// Manages a Customer Managed Key for a EventHub Namespace.
///
/// !&gt; **Note:** In 2.x versions of the Azure Provider during deletion this resource will **delete and recreate the parent EventHub Namespace which may involve data loss** as it's not possible to remove the Customer Managed Key from the EventHub Namespace once it's been added. Version 3.0 of the Azure Provider will change this so that the Delete operation is a noop, requiring the parent EventHub Namespace is deleted/recreated to remove the Customer Managed Key.
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
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleCluster = new azure.eventhub.Cluster("example", {
///     name: "example-cluster",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "Dedicated_1",
/// });
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "example-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     dedicatedClusterId: exampleCluster.id,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekv",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
/// });
/// const exampleAccessPolicy = new azure.keyvault.AccessPolicy("example", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: exampleEventHubNamespace.identity.apply(identity => identity?.tenantId),
///     objectId: exampleEventHubNamespace.identity.apply(identity => identity?.principalId),
///     keyPermissions: [
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ],
/// });
/// const example2 = new azure.keyvault.AccessPolicy("example2", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     keyPermissions: [
///         "Create",
///         "Delete",
///         "Get",
///         "List",
///         "Purge",
///         "Recover",
///         "GetRotationPolicy",
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "examplekvkey",
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
///         exampleAccessPolicy,
///         example2,
///     ],
/// });
/// const exampleNamespaceCustomerManagedKey = new azure.eventhub.NamespaceCustomerManagedKey("example", {
///     eventhubNamespaceId: exampleEventHubNamespace.id,
///     keyVaultKeyIds: [exampleKey.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_cluster = azure.eventhub.Cluster("example",
///     name="example-cluster",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="Dedicated_1")
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="example-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     dedicated_cluster_id=example_cluster.id,
///     identity={
///         "type": "SystemAssigned",
///     })
/// current = azure.core.get_client_config()
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekv",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True)
/// example_access_policy = azure.keyvault.AccessPolicy("example",
///     key_vault_id=example_key_vault.id,
///     tenant_id=example_event_hub_namespace.identity.tenant_id,
///     object_id=example_event_hub_namespace.identity.principal_id,
///     key_permissions=[
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ])
/// example2 = azure.keyvault.AccessPolicy("example2",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     key_permissions=[
///         "Create",
///         "Delete",
///         "Get",
///         "List",
///         "Purge",
///         "Recover",
///         "GetRotationPolicy",
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="examplekvkey",
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
///             example_access_policy,
///             example2,
///         ]))
/// example_namespace_customer_managed_key = azure.eventhub.NamespaceCustomerManagedKey("example",
///     eventhub_namespace_id=example_event_hub_namespace.id,
///     key_vault_key_ids=[example_key.id])
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
///     var exampleCluster = new Azure.EventHub.Cluster("example", new()
///     {
///         Name = "example-cluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "Dedicated_1",
///     });
///
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "example-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         DedicatedClusterId = exampleCluster.Id,
///         Identity = new Azure.EventHub.Inputs.EventHubNamespaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
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
///     var exampleAccessPolicy = new Azure.KeyVault.AccessPolicy("example", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = exampleEventHubNamespace.Identity.Apply(identity => identity?.TenantId),
///         ObjectId = exampleEventHubNamespace.Identity.Apply(identity => identity?.PrincipalId),
///         KeyPermissions = new[]
///         {
///             "Get",
///             "UnwrapKey",
///             "WrapKey",
///         },
///     });
///
///     var example2 = new Azure.KeyVault.AccessPolicy("example2", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Delete",
///             "Get",
///             "List",
///             "Purge",
///             "Recover",
///             "GetRotationPolicy",
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "examplekvkey",
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
///             exampleAccessPolicy,
///             example2,
///         },
///     });
///
///     var exampleNamespaceCustomerManagedKey = new Azure.EventHub.NamespaceCustomerManagedKey("example", new()
///     {
///         EventhubNamespaceId = exampleEventHubNamespace.Id,
///         KeyVaultKeyIds = new[]
///         {
///             exampleKey.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
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
/// 		exampleCluster, err := eventhub.NewCluster(ctx, "example", &eventhub.ClusterArgs{
/// 			Name:              pulumi.String("example-cluster"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("Dedicated_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:               pulumi.String("example-namespace"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			Sku:                pulumi.String("Standard"),
/// 			DedicatedClusterId: exampleCluster.ID(),
/// 			Identity: &eventhub.EventHubNamespaceIdentityArgs{
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
/// 		exampleAccessPolicy, err := keyvault.NewAccessPolicy(ctx, "example", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId: pulumi.String(exampleEventHubNamespace.Identity.ApplyT(func(identity eventhub.EventHubNamespaceIdentity) (*string, error) {
/// 				return &identity.TenantId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ObjectId: pulumi.String(exampleEventHubNamespace.Identity.ApplyT(func(identity eventhub.EventHubNamespaceIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("UnwrapKey"),
/// 				pulumi.String("WrapKey"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := keyvault.NewAccessPolicy(ctx, "example2", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("GetRotationPolicy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("examplekvkey"),
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
/// 			exampleAccessPolicy,
/// 			example2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventhub.NewNamespaceCustomerManagedKey(ctx, "example", &eventhub.NamespaceCustomerManagedKeyArgs{
/// 			EventhubNamespaceId: exampleEventHubNamespace.ID(),
/// 			KeyVaultKeyIds: pulumi.StringArray{
/// 				exampleKey.ID(),
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
/// import com.pulumi.azure.eventhub.Cluster;
/// import com.pulumi.azure.eventhub.ClusterArgs;
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.inputs.EventHubNamespaceIdentityArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.eventhub.NamespaceCustomerManagedKey;
/// import com.pulumi.azure.eventhub.NamespaceCustomerManagedKeyArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("example-cluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("Dedicated_1")
///             .build());
///
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("example-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .dedicatedClusterId(exampleCluster.id())
///             .identity(EventHubNamespaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
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
///         var exampleAccessPolicy = new AccessPolicy("exampleAccessPolicy", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(exampleEventHubNamespace.identity().applyValue(_identity -> _identity.tenantId()))
///             .objectId(exampleEventHubNamespace.identity().applyValue(_identity -> _identity.principalId()))
///             .keyPermissions(
///                 "Get",
///                 "UnwrapKey",
///                 "WrapKey")
///             .build());
///
///         var example2 = new AccessPolicy("example2", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .keyPermissions(
///                 "Create",
///                 "Delete",
///                 "Get",
///                 "List",
///                 "Purge",
///                 "Recover",
///                 "GetRotationPolicy")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("examplekvkey")
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
///                     exampleAccessPolicy,
///                     example2)
///                 .build());
///
///         var exampleNamespaceCustomerManagedKey = new NamespaceCustomerManagedKey("exampleNamespaceCustomerManagedKey", NamespaceCustomerManagedKeyArgs.builder()
///             .eventhubNamespaceId(exampleEventHubNamespace.id())
///             .keyVaultKeyIds(exampleKey.id())
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
///   exampleCluster:
///     type: azure:eventhub:Cluster
///     name: example
///     properties:
///       name: example-cluster
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: Dedicated_1
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: example-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       dedicatedClusterId: ${exampleCluster.id}
///       identity:
///         type: SystemAssigned
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
///   exampleAccessPolicy:
///     type: azure:keyvault:AccessPolicy
///     name: example
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${exampleEventHubNamespace.identity.tenantId}
///       objectId: ${exampleEventHubNamespace.identity.principalId}
///       keyPermissions:
///         - Get
///         - UnwrapKey
///         - WrapKey
///   example2:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       keyPermissions:
///         - Create
///         - Delete
///         - Get
///         - List
///         - Purge
///         - Recover
///         - GetRotationPolicy
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: examplekvkey
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
///         - ${exampleAccessPolicy}
///         - ${example2}
///   exampleNamespaceCustomerManagedKey:
///     type: azure:eventhub:NamespaceCustomerManagedKey
///     name: example
///     properties:
///       eventhubNamespaceId: ${exampleEventHubNamespace.id}
///       keyVaultKeyIds:
///         - ${exampleKey.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
///
/// ### With User Assigned Identity
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
/// const exampleCluster = new azure.eventhub.Cluster("example", {
///     name: "example-cluster",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "Dedicated_1",
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     location: example.location,
///     name: "example",
///     resourceGroupName: example.name,
/// });
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "example-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     dedicatedClusterId: exampleCluster.id,
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekv",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
/// });
/// const exampleAccessPolicy = new azure.keyvault.AccessPolicy("example", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: test.tenantId,
///     objectId: test.principalId,
///     keyPermissions: [
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ],
/// });
/// const example2 = new azure.keyvault.AccessPolicy("example2", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     keyPermissions: [
///         "Create",
///         "Delete",
///         "Get",
///         "List",
///         "Purge",
///         "Recover",
///         "GetRotationPolicy",
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "examplekvkey",
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
///         exampleAccessPolicy,
///         example2,
///     ],
/// });
/// const exampleNamespaceCustomerManagedKey = new azure.eventhub.NamespaceCustomerManagedKey("example", {
///     eventhubNamespaceId: exampleEventHubNamespace.id,
///     keyVaultKeyIds: [exampleKey.id],
///     userAssignedIdentityId: exampleUserAssignedIdentity.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_cluster = azure.eventhub.Cluster("example",
///     name="example-cluster",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="Dedicated_1")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     location=example.location,
///     name="example",
///     resource_group_name=example.name)
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="example-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     dedicated_cluster_id=example_cluster.id,
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     })
/// current = azure.core.get_client_config()
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekv",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True)
/// example_access_policy = azure.keyvault.AccessPolicy("example",
///     key_vault_id=example_key_vault.id,
///     tenant_id=test["tenantId"],
///     object_id=test["principalId"],
///     key_permissions=[
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ])
/// example2 = azure.keyvault.AccessPolicy("example2",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     key_permissions=[
///         "Create",
///         "Delete",
///         "Get",
///         "List",
///         "Purge",
///         "Recover",
///         "GetRotationPolicy",
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="examplekvkey",
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
///             example_access_policy,
///             example2,
///         ]))
/// example_namespace_customer_managed_key = azure.eventhub.NamespaceCustomerManagedKey("example",
///     eventhub_namespace_id=example_event_hub_namespace.id,
///     key_vault_key_ids=[example_key.id],
///     user_assigned_identity_id=example_user_assigned_identity.id)
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
///     var exampleCluster = new Azure.EventHub.Cluster("example", new()
///     {
///         Name = "example-cluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "Dedicated_1",
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Location = example.Location,
///         Name = "example",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "example-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         DedicatedClusterId = exampleCluster.Id,
///         Identity = new Azure.EventHub.Inputs.EventHubNamespaceIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
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
///     var exampleAccessPolicy = new Azure.KeyVault.AccessPolicy("example", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = test.TenantId,
///         ObjectId = test.PrincipalId,
///         KeyPermissions = new[]
///         {
///             "Get",
///             "UnwrapKey",
///             "WrapKey",
///         },
///     });
///
///     var example2 = new Azure.KeyVault.AccessPolicy("example2", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Delete",
///             "Get",
///             "List",
///             "Purge",
///             "Recover",
///             "GetRotationPolicy",
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "examplekvkey",
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
///             exampleAccessPolicy,
///             example2,
///         },
///     });
///
///     var exampleNamespaceCustomerManagedKey = new Azure.EventHub.NamespaceCustomerManagedKey("example", new()
///     {
///         EventhubNamespaceId = exampleEventHubNamespace.Id,
///         KeyVaultKeyIds = new[]
///         {
///             exampleKey.Id,
///         },
///         UserAssignedIdentityId = exampleUserAssignedIdentity.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
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
/// 		exampleCluster, err := eventhub.NewCluster(ctx, "example", &eventhub.ClusterArgs{
/// 			Name:              pulumi.String("example-cluster"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("Dedicated_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:               pulumi.String("example-namespace"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			Sku:                pulumi.String("Standard"),
/// 			DedicatedClusterId: exampleCluster.ID(),
/// 			Identity: &eventhub.EventHubNamespaceIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
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
/// 		exampleAccessPolicy, err := keyvault.NewAccessPolicy(ctx, "example", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.Any(test.TenantId),
/// 			ObjectId:   pulumi.Any(test.PrincipalId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("UnwrapKey"),
/// 				pulumi.String("WrapKey"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := keyvault.NewAccessPolicy(ctx, "example2", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("GetRotationPolicy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("examplekvkey"),
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
/// 			exampleAccessPolicy,
/// 			example2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventhub.NewNamespaceCustomerManagedKey(ctx, "example", &eventhub.NamespaceCustomerManagedKeyArgs{
/// 			EventhubNamespaceId: exampleEventHubNamespace.ID(),
/// 			KeyVaultKeyIds: pulumi.StringArray{
/// 				exampleKey.ID(),
/// 			},
/// 			UserAssignedIdentityId: exampleUserAssignedIdentity.ID(),
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
/// import com.pulumi.azure.eventhub.Cluster;
/// import com.pulumi.azure.eventhub.ClusterArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.inputs.EventHubNamespaceIdentityArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.eventhub.NamespaceCustomerManagedKey;
/// import com.pulumi.azure.eventhub.NamespaceCustomerManagedKeyArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("example-cluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("Dedicated_1")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .location(example.location())
///             .name("example")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("example-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .dedicatedClusterId(exampleCluster.id())
///             .identity(EventHubNamespaceIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
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
///         var exampleAccessPolicy = new AccessPolicy("exampleAccessPolicy", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(test.tenantId())
///             .objectId(test.principalId())
///             .keyPermissions(
///                 "Get",
///                 "UnwrapKey",
///                 "WrapKey")
///             .build());
///
///         var example2 = new AccessPolicy("example2", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .keyPermissions(
///                 "Create",
///                 "Delete",
///                 "Get",
///                 "List",
///                 "Purge",
///                 "Recover",
///                 "GetRotationPolicy")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("examplekvkey")
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
///                     exampleAccessPolicy,
///                     example2)
///                 .build());
///
///         var exampleNamespaceCustomerManagedKey = new NamespaceCustomerManagedKey("exampleNamespaceCustomerManagedKey", NamespaceCustomerManagedKeyArgs.builder()
///             .eventhubNamespaceId(exampleEventHubNamespace.id())
///             .keyVaultKeyIds(exampleKey.id())
///             .userAssignedIdentityId(exampleUserAssignedIdentity.id())
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
///   exampleCluster:
///     type: azure:eventhub:Cluster
///     name: example
///     properties:
///       name: example-cluster
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: Dedicated_1
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       location: ${example.location}
///       name: example
///       resourceGroupName: ${example.name}
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: example-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       dedicatedClusterId: ${exampleCluster.id}
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
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
///   exampleAccessPolicy:
///     type: azure:keyvault:AccessPolicy
///     name: example
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${test.tenantId}
///       objectId: ${test.principalId}
///       keyPermissions:
///         - Get
///         - UnwrapKey
///         - WrapKey
///   example2:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       keyPermissions:
///         - Create
///         - Delete
///         - Get
///         - List
///         - Purge
///         - Recover
///         - GetRotationPolicy
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: examplekvkey
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
///         - ${exampleAccessPolicy}
///         - ${example2}
///   exampleNamespaceCustomerManagedKey:
///     type: azure:eventhub:NamespaceCustomerManagedKey
///     name: example
///     properties:
///       eventhubNamespaceId: ${exampleEventHubNamespace.id}
///       keyVaultKeyIds:
///         - ${exampleKey.id}
///       userAssignedIdentityId: ${exampleUserAssignedIdentity.id}
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
/// * `Microsoft.EventHub` - 2024-01-01
///
/// ## Import
///
/// Customer Managed Keys for a EventHub Namespace can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/namespaceCustomerManagedKey:NamespaceCustomerManagedKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventHub/namespaces/namespace1
/// ```
class NamespaceCustomerManagedKeyEventhub extends pulumi.CustomResource {
  /// The ID of the EventHub Namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> eventhubNamespaceId;

  /// Whether to enable Infrastructure Encryption (Double Encryption). Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> infrastructureEncryptionEnabled;

  /// The list of keys of Key Vault.
  late final pulumi.Output<List<String>> keyVaultKeyIds;

  /// The ID of a User Managed Identity that will be used to access Key Vaults that contain the encryption keys.
  ///
  /// &gt; **Note:** If using `user_assigned_identity_id`, ensure the User Assigned Identity is also assigned to the parent Event Hub.
  ///
  /// &gt; **Note:** If using `user_assigned_identity_id`, make sure to assign the identity the appropriate permissions to access the Key Vault key. Failure to grant `Get, UnwrapKey, and WrapKey` will cause this resource to fail to apply.
  late final pulumi.Output<String?> userAssignedIdentityId;

  /// Creates a new [NamespaceCustomerManagedKeyEventhub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceCustomerManagedKeyEventhub]. {@macro pulumi_eventhub_namespace_customer_managed_key_namespace_customer_managed_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceCustomerManagedKeyEventhub(
    String name, {
    NamespaceCustomerManagedKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:eventhub/namespaceCustomerManagedKey:NamespaceCustomerManagedKey',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    eventhubNamespaceId = registerOutput<String>('eventhubNamespaceId');
    infrastructureEncryptionEnabled = registerOutput<bool?>(
      'infrastructureEncryptionEnabled',
    );
    keyVaultKeyIds = registerOutput<List<String>>('keyVaultKeyIds');
    userAssignedIdentityId = registerOutput<String?>('userAssignedIdentityId');
  }

  /// Gets an existing [NamespaceCustomerManagedKeyEventhub] resource's state with the given [name] and [id].
  static NamespaceCustomerManagedKeyEventhub get(
    String name,
    pulumi.Input<String> id, {
    NamespaceCustomerManagedKeyState? state,
  }) {
    return NamespaceCustomerManagedKeyEventhub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NamespaceCustomerManagedKeyEventhub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:eventhub/namespaceCustomerManagedKey:NamespaceCustomerManagedKey',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    eventhubNamespaceId = registerOutput<String>('eventhubNamespaceId');
    infrastructureEncryptionEnabled = registerOutput<bool?>(
      'infrastructureEncryptionEnabled',
    );
    keyVaultKeyIds = registerOutput<List<String>>('keyVaultKeyIds');
    userAssignedIdentityId = registerOutput<String?>('userAssignedIdentityId');
  }
}
