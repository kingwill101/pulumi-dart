import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_customer_managed_key_args.dart';
import 'cluster_customer_managed_key_state.dart';

/// Manages a Customer Managed Key for a Kusto Cluster.
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
///     name: "examplekv",
///     location: example.location,
///     resourceGroupName: example.name,
///     rbacAuthorizationEnabled: false,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
/// });
/// const exampleCluster = new azure.kusto.Cluster("example", {
///     name: "kustocluster",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Standard_D13_v2",
///         capacity: 2,
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const cluster = new azure.keyvault.AccessPolicy("cluster", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: exampleCluster.identity.apply(identity => identity?.principalId),
///     keyPermissions: [
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ],
/// });
/// const client = new azure.keyvault.AccessPolicy("client", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     keyPermissions: [
///         "Get",
///         "List",
///         "Create",
///         "Delete",
///         "Recover",
///         "GetRotationPolicy",
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "tfex-key",
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
///         client,
///         cluster,
///     ],
/// });
/// const exampleClusterCustomerManagedKey = new azure.kusto.ClusterCustomerManagedKey("example", {
///     clusterId: exampleCluster.id,
///     keyVaultId: exampleKeyVault.id,
///     keyName: exampleKey.name,
///     keyVersion: exampleKey.version,
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
///     name="examplekv",
///     location=example.location,
///     resource_group_name=example.name,
///     rbac_authorization_enabled=False,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True)
/// example_cluster = azure.kusto.Cluster("example",
///     name="kustocluster",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Standard_D13_v2",
///         "capacity": 2,
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
/// cluster = azure.keyvault.AccessPolicy("cluster",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=example_cluster.identity.principal_id,
///     key_permissions=[
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ])
/// client = azure.keyvault.AccessPolicy("client",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     key_permissions=[
///         "Get",
///         "List",
///         "Create",
///         "Delete",
///         "Recover",
///         "GetRotationPolicy",
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="tfex-key",
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
///             client,
///             cluster,
///         ]))
/// example_cluster_customer_managed_key = azure.kusto.ClusterCustomerManagedKey("example",
///     cluster_id=example_cluster.id,
///     key_vault_id=example_key_vault.id,
///     key_name=example_key.name,
///     key_version=example_key.version)
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
///         Name = "examplekv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         RbacAuthorizationEnabled = false,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///     });
///
///     var exampleCluster = new Azure.Kusto.Cluster("example", new()
///     {
///         Name = "kustocluster",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Standard_D13_v2",
///             Capacity = 2,
///         },
///         Identity = new Azure.Kusto.Inputs.ClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var cluster = new Azure.KeyVault.AccessPolicy("cluster", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = exampleCluster.Identity.Apply(identity => identity?.PrincipalId),
///         KeyPermissions = new[]
///         {
///             "Get",
///             "UnwrapKey",
///             "WrapKey",
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
///             "List",
///             "Create",
///             "Delete",
///             "Recover",
///             "GetRotationPolicy",
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "tfex-key",
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
///             client,
///             cluster,
///         },
///     });
///
///     var exampleClusterCustomerManagedKey = new Azure.Kusto.ClusterCustomerManagedKey("example", new()
///     {
///         ClusterId = exampleCluster.Id,
///         KeyVaultId = exampleKeyVault.Id,
///         KeyName = exampleKey.Name,
///         KeyVersion = exampleKey.Version,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
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
/// 		exampleCluster, err := kusto.NewCluster(ctx, "example", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("kustocluster"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Standard_D13_v2"),
/// 				Capacity: pulumi.Int(2),
/// 			},
/// 			Identity: &kusto.ClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster, err := keyvault.NewAccessPolicy(ctx, "cluster", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   exampleCluster.Identity.PrincipalId(),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("UnwrapKey"),
/// 				pulumi.String("WrapKey"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		client, err := keyvault.NewAccessPolicy(ctx, "client", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("GetRotationPolicy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("tfex-key"),
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
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
/// 			client,
/// 			cluster,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewClusterCustomerManagedKey(ctx, "example", &kusto.ClusterCustomerManagedKeyArgs{
/// 			ClusterId:  exampleCluster.ID().ToIDOutput().ToStringOutput(),
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			KeyName:    exampleKey.Name,
/// 			KeyVersion: exampleKey.Version,
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
///   name                       = "examplekv"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   rbac_authorization_enabled = false
///   tenant_id                  = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                   = "standard"
///   purge_protection_enabled   = true
/// }
/// resource "azure_keyvault_accesspolicy" "cluster" {
///   key_vault_id    = azure_keyvault_keyvault.example.id
///   tenant_id       = data.azure_core_getclientconfig.current.tenant_id
///   object_id       = azure_kusto_cluster.example.identity.principal_id
///   key_permissions = ["Get", "UnwrapKey", "WrapKey"]
/// }
/// resource "azure_keyvault_accesspolicy" "client" {
///   key_vault_id    = azure_keyvault_keyvault.example.id
///   tenant_id       = data.azure_core_getclientconfig.current.tenant_id
///   object_id       = data.azure_core_getclientconfig.current.object_id
///   key_permissions = ["Get", "List", "Create", "Delete", "Recover", "GetRotationPolicy"]
/// }
/// resource "azure_keyvault_key" "example" {
///   depends_on   = [azure_keyvault_accesspolicy.client, azure_keyvault_accesspolicy.cluster]
///   name         = "tfex-key"
///   key_vault_id = azure_keyvault_keyvault.example.id
///   key_type     = "RSA"
///   key_size     = 2048
///   key_opts     = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
/// }
/// resource "azure_kusto_cluster" "example" {
///   name                = "kustocluster"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku = {
///     name     = "Standard_D13_v2"
///     capacity = 2
///   }
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_kusto_clustercustomermanagedkey" "example" {
///   cluster_id   = azure_kusto_cluster.example.id
///   key_vault_id = azure_keyvault_keyvault.example.id
///   key_name     = azure_keyvault_key.example.name
///   key_version  = azure_keyvault_key.example.version
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
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterIdentityArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.kusto.ClusterCustomerManagedKey;
/// import com.pulumi.azure.kusto.ClusterCustomerManagedKeyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .name("examplekv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .rbacAuthorizationEnabled(false)
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("kustocluster")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Standard_D13_v2")
///                 .capacity(2)
///                 .build())
///             .identity(ClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var cluster = new AccessPolicy("cluster", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(exampleCluster.identity().applyValue(_identity -> _identity.principalId()))
///             .keyPermissions(
///                 "Get",
///                 "UnwrapKey",
///                 "WrapKey")
///             .build());
///
///         var client = new AccessPolicy("client", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .keyPermissions(
///                 "Get",
///                 "List",
///                 "Create",
///                 "Delete",
///                 "Recover",
///                 "GetRotationPolicy")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("tfex-key")
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
///                     client,
///                     cluster)
///                 .build());
///
///         var exampleClusterCustomerManagedKey = new ClusterCustomerManagedKey("exampleClusterCustomerManagedKey", ClusterCustomerManagedKeyArgs.builder()
///             .clusterId(exampleCluster.id())
///             .keyVaultId(exampleKeyVault.id())
///             .keyName(exampleKey.name())
///             .keyVersion(exampleKey.version())
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
///       name: examplekv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       rbacAuthorizationEnabled: false
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///   cluster:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${exampleCluster.identity.principalId}
///       keyPermissions:
///         - Get
///         - UnwrapKey
///         - WrapKey
///   client:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       keyPermissions:
///         - Get
///         - List
///         - Create
///         - Delete
///         - Recover
///         - GetRotationPolicy
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: tfex-key
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
///         - ${client}
///         - ${cluster}
///   exampleCluster:
///     type: azure:kusto:Cluster
///     name: example
///     properties:
///       name: kustocluster
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Standard_D13_v2
///         capacity: 2
///       identity:
///         type: SystemAssigned
///   exampleClusterCustomerManagedKey:
///     type: azure:kusto:ClusterCustomerManagedKey
///     name: example
///     properties:
///       clusterId: ${exampleCluster.id}
///       keyVaultId: ${exampleKeyVault.id}
///       keyName: ${exampleKey.name}
///       keyVersion: ${exampleKey.version}
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
/// * `Microsoft.Kusto` - 2024-04-13
///
/// ## Import
///
/// Customer Managed Keys for a Kusto Cluster can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/clusterCustomerManagedKey:ClusterCustomerManagedKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Kusto/clusters/cluster1
/// ```
class ClusterCustomerManagedKey extends pulumi.CustomResource {
  /// The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterId;
  /// The name of Key Vault Key.
  late final pulumi.Output<String?> keyName;
  /// The ID of the Key Vault for CMK encryption.
  late final pulumi.Output<String?> keyVaultId;
  /// The version of Key Vault Key.
  late final pulumi.Output<String?> keyVersion;
  /// The Managed HSM Key ID for CMK encryption.
  ///
  /// &gt; **Note:** Exactly one of `managedHsmKeyId` or `keyVaultId` must be specified.
  late final pulumi.Output<String?> managedHsmKeyId;
  /// The user assigned identity that has access to the Key Vault Key. If not specified, system assigned identity will be used.
  late final pulumi.Output<String?> userIdentity;

  /// Creates a new [ClusterCustomerManagedKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterCustomerManagedKey]. {@macro pulumi_kusto_cluster_customer_managed_key_cluster_customer_managed_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterCustomerManagedKey(
    String name, {
    ClusterCustomerManagedKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/clusterCustomerManagedKey:ClusterCustomerManagedKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    clusterId = registerOutput<String>('clusterId');
    keyName = registerOutput<String?>('keyName');
    keyVaultId = registerOutput<String?>('keyVaultId');
    keyVersion = registerOutput<String?>('keyVersion');
    managedHsmKeyId = registerOutput<String?>('managedHsmKeyId');
    userIdentity = registerOutput<String?>('userIdentity');
  }

  /// Gets an existing [ClusterCustomerManagedKey] resource's state with the given [name] and [id].
  static ClusterCustomerManagedKey get(
    String name,
    pulumi.Input<String> id, {
    ClusterCustomerManagedKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ClusterCustomerManagedKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ClusterCustomerManagedKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/clusterCustomerManagedKey:ClusterCustomerManagedKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterId = registerOutput<String>('clusterId');
    keyName = registerOutput<String?>('keyName');
    keyVaultId = registerOutput<String?>('keyVaultId');
    keyVersion = registerOutput<String?>('keyVersion');
    managedHsmKeyId = registerOutput<String?>('managedHsmKeyId');
    userIdentity = registerOutput<String?>('userIdentity');
  }

  /// Creates a typed reference to an existing [ClusterCustomerManagedKey] resource.
  ClusterCustomerManagedKey.reference(String urn)
    : super(
        'azure:kusto/clusterCustomerManagedKey:ClusterCustomerManagedKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    clusterId = registerOutput<String>('clusterId');
    keyName = registerOutput<String?>('keyName');
    keyVaultId = registerOutput<String?>('keyVaultId');
    keyVersion = registerOutput<String?>('keyVersion');
    managedHsmKeyId = registerOutput<String?>('managedHsmKeyId');
    userIdentity = registerOutput<String?>('userIdentity');
  }
}
