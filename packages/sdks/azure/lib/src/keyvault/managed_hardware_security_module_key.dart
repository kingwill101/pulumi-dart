import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hardware_security_module_key_args.dart';
import 'managed_hardware_security_module_key_state.dart';

/// Manages a Key Vault Managed Hardware Security Module Key.
///
/// &gt; **Note:** The Azure Provider includes a Feature Toggle which will purge a Key Vault Managed Hardware Security Module Key resource on destroy, rather than the default soft-delete. See `purgeSoftDeletedHardwareSecurityModulesOnDestroy` for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.keyvault.ManagedHardwareSecurityModule("example", {
///     name: "example",
///     resourceGroupName: exampleAzurermResourceGroup.name,
///     location: exampleAzurermResourceGroup.location,
///     skuName: "Standard_B1",
///     tenantId: current.then(current => current.tenantId),
///     adminObjectIds: [current.then(current => current.objectId)],
///     purgeProtectionEnabled: false,
///     securityDomainKeyVaultCertificateIds: [
///         cers["1"].id,
///         cers["2"].id,
///         cers["3"].id,
///     ],
///     securityDomainQuorum: 2,
/// });
/// // this gives your service principal the HSM Crypto User role which lets you create and destroy hsm keys
/// const hsm_crypto_user = new azure.keyvault.ManagedHardwareSecurityModuleRoleAssignment("hsm-crypto-user", {
///     managedHsmId: test.id,
///     name: "1e243909-064c-6ac3-84e9-1c8bf8d6ad22",
///     scope: "/keys",
///     roleDefinitionId: "/Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/21dbd100-6940-42c2-9190-5d6cb909625b",
///     principalId: current.then(current => current.objectId),
/// });
/// // this gives your service principal the HSM Crypto Officer role which lets you purge hsm keys
/// const hsm_crypto_officer = new azure.keyvault.ManagedHardwareSecurityModuleRoleAssignment("hsm-crypto-officer", {
///     managedHsmId: test.id,
///     name: "1e243909-064c-6ac3-84e9-1c8bf8d6ad23",
///     scope: "/keys",
///     roleDefinitionId: "/Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/515eb02d-2335-4d2d-92f2-b1cbdf9c3778",
///     principalId: current.then(current => current.objectId),
/// });
/// const exampleManagedHardwareSecurityModuleKey = new azure.keyvault.ManagedHardwareSecurityModuleKey("example", {
///     name: "example",
///     managedHsmId: test.id,
///     keyType: "EC-HSM",
///     curve: "P-521",
///     keyOpts: ["sign"],
/// }, {
///     dependsOn: [
///         testAzurermKeyVaultManagedHardwareSecurityModuleRoleAssignment,
///         test1,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.keyvault.ManagedHardwareSecurityModule("example",
///     name="example",
///     resource_group_name=example_azurerm_resource_group["name"],
///     location=example_azurerm_resource_group["location"],
///     sku_name="Standard_B1",
///     tenant_id=current.tenant_id,
///     admin_object_ids=[current.object_id],
///     purge_protection_enabled=False,
///     security_domain_key_vault_certificate_ids=[
///         cers["1"]["id"],
///         cers["2"]["id"],
///         cers["3"]["id"],
///     ],
///     security_domain_quorum=2)
/// # this gives your service principal the HSM Crypto User role which lets you create and destroy hsm keys
/// hsm_crypto_user = azure.keyvault.ManagedHardwareSecurityModuleRoleAssignment("hsm-crypto-user",
///     managed_hsm_id=test["id"],
///     name="1e243909-064c-6ac3-84e9-1c8bf8d6ad22",
///     scope="/keys",
///     role_definition_id="/Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/21dbd100-6940-42c2-9190-5d6cb909625b",
///     principal_id=current.object_id)
/// # this gives your service principal the HSM Crypto Officer role which lets you purge hsm keys
/// hsm_crypto_officer = azure.keyvault.ManagedHardwareSecurityModuleRoleAssignment("hsm-crypto-officer",
///     managed_hsm_id=test["id"],
///     name="1e243909-064c-6ac3-84e9-1c8bf8d6ad23",
///     scope="/keys",
///     role_definition_id="/Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/515eb02d-2335-4d2d-92f2-b1cbdf9c3778",
///     principal_id=current.object_id)
/// example_managed_hardware_security_module_key = azure.keyvault.ManagedHardwareSecurityModuleKey("example",
///     name="example",
///     managed_hsm_id=test["id"],
///     key_type="EC-HSM",
///     curve="P-521",
///     key_opts=["sign"],
///     opts = pulumi.ResourceOptions(depends_on=[
///             test_azurerm_key_vault_managed_hardware_security_module_role_assignment,
///             test1,
///         ]))
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
///     var example = new Azure.KeyVault.ManagedHardwareSecurityModule("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///         Location = exampleAzurermResourceGroup.Location,
///         SkuName = "Standard_B1",
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         AdminObjectIds = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         PurgeProtectionEnabled = false,
///         SecurityDomainKeyVaultCertificateIds = new[]
///         {
///             cers._1.Id,
///             cers._2.Id,
///             cers._3.Id,
///         },
///         SecurityDomainQuorum = 2,
///     });
///
///     // this gives your service principal the HSM Crypto User role which lets you create and destroy hsm keys
///     var hsm_crypto_user = new Azure.KeyVault.ManagedHardwareSecurityModuleRoleAssignment("hsm-crypto-user", new()
///     {
///         ManagedHsmId = test.Id,
///         Name = "1e243909-064c-6ac3-84e9-1c8bf8d6ad22",
///         Scope = "/keys",
///         RoleDefinitionId = "/Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/21dbd100-6940-42c2-9190-5d6cb909625b",
///         PrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     });
///
///     // this gives your service principal the HSM Crypto Officer role which lets you purge hsm keys
///     var hsm_crypto_officer = new Azure.KeyVault.ManagedHardwareSecurityModuleRoleAssignment("hsm-crypto-officer", new()
///     {
///         ManagedHsmId = test.Id,
///         Name = "1e243909-064c-6ac3-84e9-1c8bf8d6ad23",
///         Scope = "/keys",
///         RoleDefinitionId = "/Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/515eb02d-2335-4d2d-92f2-b1cbdf9c3778",
///         PrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     });
///
///     var exampleManagedHardwareSecurityModuleKey = new Azure.KeyVault.ManagedHardwareSecurityModuleKey("example", new()
///     {
///         Name = "example",
///         ManagedHsmId = test.Id,
///         KeyType = "EC-HSM",
///         Curve = "P-521",
///         KeyOpts = new[]
///         {
///             "sign",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testAzurermKeyVaultManagedHardwareSecurityModuleRoleAssignment,
///             test1,
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
/// 		_, err = keyvault.NewManagedHardwareSecurityModule(ctx, "example", &keyvault.ManagedHardwareSecurityModuleArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: pulumi.Any(exampleAzurermResourceGroup.Name),
/// 			Location:          pulumi.Any(exampleAzurermResourceGroup.Location),
/// 			SkuName:           pulumi.String("Standard_B1"),
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			AdminObjectIds: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 			PurgeProtectionEnabled: pulumi.Bool(false),
/// 			SecurityDomainKeyVaultCertificateIds: pulumi.StringArray{
/// 				cers._1.Id,
/// 				cers._2.Id,
/// 				cers._3.Id,
/// 			},
/// 			SecurityDomainQuorum: pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// this gives your service principal the HSM Crypto User role which lets you create and destroy hsm keys
/// 		_, err = keyvault.NewManagedHardwareSecurityModuleRoleAssignment(ctx, "hsm-crypto-user", &keyvault.ManagedHardwareSecurityModuleRoleAssignmentArgs{
/// 			ManagedHsmId:     pulumi.Any(test.Id),
/// 			Name:             pulumi.String("1e243909-064c-6ac3-84e9-1c8bf8d6ad22"),
/// 			Scope:            pulumi.String("/keys"),
/// 			RoleDefinitionId: pulumi.String("/Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/21dbd100-6940-42c2-9190-5d6cb909625b"),
/// 			PrincipalId:      pulumi.String(current.ObjectId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// this gives your service principal the HSM Crypto Officer role which lets you purge hsm keys
/// 		_, err = keyvault.NewManagedHardwareSecurityModuleRoleAssignment(ctx, "hsm-crypto-officer", &keyvault.ManagedHardwareSecurityModuleRoleAssignmentArgs{
/// 			ManagedHsmId:     pulumi.Any(test.Id),
/// 			Name:             pulumi.String("1e243909-064c-6ac3-84e9-1c8bf8d6ad23"),
/// 			Scope:            pulumi.String("/keys"),
/// 			RoleDefinitionId: pulumi.String("/Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/515eb02d-2335-4d2d-92f2-b1cbdf9c3778"),
/// 			PrincipalId:      pulumi.String(current.ObjectId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewManagedHardwareSecurityModuleKey(ctx, "example", &keyvault.ManagedHardwareSecurityModuleKeyArgs{
/// 			Name:         pulumi.String("example"),
/// 			ManagedHsmId: pulumi.Any(test.Id),
/// 			KeyType:      pulumi.String("EC-HSM"),
/// 			Curve:        pulumi.String("P-521"),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("sign"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testAzurermKeyVaultManagedHardwareSecurityModuleRoleAssignment,
/// 			test1,
/// 		}))
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
/// resource "azure_keyvault_managedhardwaresecuritymodule" "example" {
///   name                                      = "example"
///   resource_group_name                       = exampleAzurermResourceGroup.name
///   location                                  = exampleAzurermResourceGroup.location
///   sku_name                                  = "Standard_B1"
///   tenant_id                                 = data.azure_core_getclientconfig.current.tenant_id
///   admin_object_ids                          = [data.azure_core_getclientconfig.current.object_id]
///   purge_protection_enabled                  = false
///   security_domain_key_vault_certificate_ids = [cers["1"].id, cers["2"].id, cers["3"].id]
///   security_domain_quorum                    = 2
/// }
/// // this gives your service principal the HSM Crypto User role which lets you create and destroy hsm keys
/// resource "azure_keyvault_managedhardwaresecuritymoduleroleassignment" "hsm-crypto-user" {
///   managed_hsm_id     = test.id
///   name               = "1e243909-064c-6ac3-84e9-1c8bf8d6ad22"
///   scope              = "/keys"
///   role_definition_id = "/Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/21dbd100-6940-42c2-9190-5d6cb909625b"
///   principal_id       = data.azure_core_getclientconfig.current.object_id
/// }
/// // this gives your service principal the HSM Crypto Officer role which lets you purge hsm keys
/// resource "azure_keyvault_managedhardwaresecuritymoduleroleassignment" "hsm-crypto-officer" {
///   managed_hsm_id     = test.id
///   name               = "1e243909-064c-6ac3-84e9-1c8bf8d6ad23"
///   scope              = "/keys"
///   role_definition_id = "/Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/515eb02d-2335-4d2d-92f2-b1cbdf9c3778"
///   principal_id       = data.azure_core_getclientconfig.current.object_id
/// }
/// resource "azure_keyvault_managedhardwaresecuritymodulekey" "example" {
///   depends_on     = [testAzurermKeyVaultManagedHardwareSecurityModuleRoleAssignment, test1]
///   name           = "example"
///   managed_hsm_id = test.id
///   key_type       = "EC-HSM"
///   curve          = "P-521"
///   key_opts       = ["sign"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModule;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleArgs;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleRoleAssignment;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleRoleAssignmentArgs;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleKey;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleKeyArgs;
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
///         var example = new ManagedHardwareSecurityModule("example", ManagedHardwareSecurityModuleArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .location(exampleAzurermResourceGroup.location())
///             .skuName("Standard_B1")
///             .tenantId(current.tenantId())
///             .adminObjectIds(current.objectId())
///             .purgeProtectionEnabled(false)
///             .securityDomainKeyVaultCertificateIds(
///                 cers.1().id(),
///                 cers.2().id(),
///                 cers.3().id())
///             .securityDomainQuorum(2)
///             .build());
///
///         // this gives your service principal the HSM Crypto User role which lets you create and destroy hsm keys
///         var hsm_crypto_user = new ManagedHardwareSecurityModuleRoleAssignment("hsm-crypto-user", ManagedHardwareSecurityModuleRoleAssignmentArgs.builder()
///             .managedHsmId(test.id())
///             .name("1e243909-064c-6ac3-84e9-1c8bf8d6ad22")
///             .scope("/keys")
///             .roleDefinitionId("/Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/21dbd100-6940-42c2-9190-5d6cb909625b")
///             .principalId(current.objectId())
///             .build());
///
///         // this gives your service principal the HSM Crypto Officer role which lets you purge hsm keys
///         var hsm_crypto_officer = new ManagedHardwareSecurityModuleRoleAssignment("hsm-crypto-officer", ManagedHardwareSecurityModuleRoleAssignmentArgs.builder()
///             .managedHsmId(test.id())
///             .name("1e243909-064c-6ac3-84e9-1c8bf8d6ad23")
///             .scope("/keys")
///             .roleDefinitionId("/Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/515eb02d-2335-4d2d-92f2-b1cbdf9c3778")
///             .principalId(current.objectId())
///             .build());
///
///         var exampleManagedHardwareSecurityModuleKey = new ManagedHardwareSecurityModuleKey("exampleManagedHardwareSecurityModuleKey", ManagedHardwareSecurityModuleKeyArgs.builder()
///             .name("example")
///             .managedHsmId(test.id())
///             .keyType("EC-HSM")
///             .curve("P-521")
///             .keyOpts("sign")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     testAzurermKeyVaultManagedHardwareSecurityModuleRoleAssignment,
///                     test1)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:keyvault:ManagedHardwareSecurityModule
///     properties:
///       name: example
///       resourceGroupName: ${exampleAzurermResourceGroup.name}
///       location: ${exampleAzurermResourceGroup.location}
///       skuName: Standard_B1
///       tenantId: ${current.tenantId}
///       adminObjectIds:
///         - ${current.objectId}
///       purgeProtectionEnabled: false
///       securityDomainKeyVaultCertificateIds:
///         - ${cers["1"].id}
///         - ${cers["2"].id}
///         - ${cers["3"].id}
///       securityDomainQuorum: 2
///   # this gives your service principal the HSM Crypto User role which lets you create and destroy hsm keys
///   hsm-crypto-user:
///     type: azure:keyvault:ManagedHardwareSecurityModuleRoleAssignment
///     properties:
///       managedHsmId: ${test.id}
///       name: 1e243909-064c-6ac3-84e9-1c8bf8d6ad22
///       scope: /keys
///       roleDefinitionId: /Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/21dbd100-6940-42c2-9190-5d6cb909625b
///       principalId: ${current.objectId}
///   # this gives your service principal the HSM Crypto Officer role which lets you purge hsm keys
///   hsm-crypto-officer:
///     type: azure:keyvault:ManagedHardwareSecurityModuleRoleAssignment
///     properties:
///       managedHsmId: ${test.id}
///       name: 1e243909-064c-6ac3-84e9-1c8bf8d6ad23
///       scope: /keys
///       roleDefinitionId: /Microsoft.KeyVault/providers/Microsoft.Authorization/roleDefinitions/515eb02d-2335-4d2d-92f2-b1cbdf9c3778
///       principalId: ${current.objectId}
///   exampleManagedHardwareSecurityModuleKey:
///     type: azure:keyvault:ManagedHardwareSecurityModuleKey
///     name: example
///     properties:
///       name: example
///       managedHsmId: ${test.id}
///       keyType: EC-HSM
///       curve: P-521
///       keyOpts:
///         - sign
///     options:
///       dependsOn:
///         - ${testAzurermKeyVaultManagedHardwareSecurityModuleRoleAssignment}
///         - ${test1}
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
/// * `Microsoft.KeyVault` - 2026-02-01
///
/// ## Import
///
/// Key Vault Managed Hardware Security Module Key can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/managedHardwareSecurityModuleKey:ManagedHardwareSecurityModuleKey example https://exampleHSM.managedhsm.azure.net/keys/exampleKey
/// ```
class ManagedHardwareSecurityModuleKey extends pulumi.CustomResource {
  /// Specifies the curve to use when creating an `EC-HSM` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field is required if `keyType` is `EC-HSM`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> curve;
  /// Expiration UTC datetime (Y-m-d'T'H:M:S'Z'). When this parameter gets changed on reruns, if newer date is ahead of current date, an update is performed. If the newer date is before the current date, resource will be force created.
  late final pulumi.Output<String?> expirationDate;
  /// A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify`, `wrapKey` and `import`. Please note these values are case-sensitive.
  late final pulumi.Output<List<String>> keyOpts;
  /// Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `keyType` is `RSA-HSM` or `oct-HSM`. Changing this forces a new resource to be created.
  late final pulumi.Output<int?> keySize;
  /// Specifies the Key Type to use for this Key Vault Managed Hardware Security Module Key. Possible values are `EC-HSM`, `oct-HSM` and `RSA-HSM`. More details see [HSM-protected keys](https://learn.microsoft.com/en-us/azure/key-vault/keys/about-keys#hsm-protected-keys). Changing this forces a new resource to be created.
  late final pulumi.Output<String> keyType;
  /// Specifies the ID of the Key Vault Managed Hardware Security Module that they key will be owned by. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managedHsmId;
  /// Specifies the name of the Key Vault Managed Hardware Security Module Key. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  ///
  /// &gt; **Note:** Once `expirationDate` is set, it's not possible to unset the key even if it is deleted & recreated as underlying Azure API uses the restore of the purged key.
  late final pulumi.Output<String?> notBeforeDate;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The versioned Key Vault Secret Managed Hardware Security Module Key ID.
  late final pulumi.Output<String> versionedId;

  /// Creates a new [ManagedHardwareSecurityModuleKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedHardwareSecurityModuleKey]. {@macro pulumi_keyvault_managed_hardware_security_module_key_managed_hardware_security_module_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedHardwareSecurityModuleKey(
    String name, {
    ManagedHardwareSecurityModuleKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/managedHardwareSecurityModuleKey:ManagedHardwareSecurityModuleKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    curve = registerOutput<String?>('curve');
    expirationDate = registerOutput<String?>('expirationDate');
    keyOpts = registerOutput<List<String>>('keyOpts');
    keySize = registerOutput<int?>('keySize');
    keyType = registerOutput<String>('keyType');
    managedHsmId = registerOutput<String>('managedHsmId');
    this.name = registerOutput<String>('name');
    notBeforeDate = registerOutput<String?>('notBeforeDate');
    tags = registerOutput<Map<String, String>?>('tags');
    versionedId = registerOutput<String>('versionedId');
  }

  /// Gets an existing [ManagedHardwareSecurityModuleKey] resource's state with the given [name] and [id].
  static ManagedHardwareSecurityModuleKey get(
    String name,
    pulumi.Input<String> id, {
    ManagedHardwareSecurityModuleKeyState? state,
  }) {
    return ManagedHardwareSecurityModuleKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedHardwareSecurityModuleKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/managedHardwareSecurityModuleKey:ManagedHardwareSecurityModuleKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    curve = registerOutput<String?>('curve');
    expirationDate = registerOutput<String?>('expirationDate');
    keyOpts = registerOutput<List<String>>('keyOpts');
    keySize = registerOutput<int?>('keySize');
    keyType = registerOutput<String>('keyType');
    managedHsmId = registerOutput<String>('managedHsmId');
    this.name = registerOutput<String>('name');
    notBeforeDate = registerOutput<String?>('notBeforeDate');
    tags = registerOutput<Map<String, String>?>('tags');
    versionedId = registerOutput<String>('versionedId');
  }
}
