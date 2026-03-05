import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hardware_security_module_args.dart';
import 'managed_hardware_security_module_network_acls.dart';
import 'managed_hardware_security_module_state.dart';

/// Manages a Key Vault Managed Hardware Security Module.
///
/// &gt; **Note:** The Azure Provider includes a Feature Toggle which will purge a Key Vault Managed Hardware Security Module resource on destroy, rather than the default soft-delete. See `purge_soft_deleted_hardware_security_modules_on_destroy` for more information.
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
/// const exampleManagedHardwareSecurityModule = new azure.keyvault.ManagedHardwareSecurityModule("example", {
///     name: "exampleKVHsm",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "Standard_B1",
///     purgeProtectionEnabled: false,
///     softDeleteRetentionDays: 90,
///     tenantId: current.then(current => current.tenantId),
///     adminObjectIds: [current.then(current => current.objectId)],
///     tags: {
///         Env: "Test",
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
/// example_managed_hardware_security_module = azure.keyvault.ManagedHardwareSecurityModule("example",
///     name="exampleKVHsm",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="Standard_B1",
///     purge_protection_enabled=False,
///     soft_delete_retention_days=90,
///     tenant_id=current.tenant_id,
///     admin_object_ids=[current.object_id],
///     tags={
///         "Env": "Test",
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
///     var exampleManagedHardwareSecurityModule = new Azure.KeyVault.ManagedHardwareSecurityModule("example", new()
///     {
///         Name = "exampleKVHsm",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "Standard_B1",
///         PurgeProtectionEnabled = false,
///         SoftDeleteRetentionDays = 90,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         AdminObjectIds = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         Tags =
///         {
///             { "Env", "Test" },
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
/// 		_, err = keyvault.NewManagedHardwareSecurityModule(ctx, "example", &keyvault.ManagedHardwareSecurityModuleArgs{
/// 			Name:                    pulumi.String("exampleKVHsm"),
/// 			ResourceGroupName:       example.Name,
/// 			Location:                example.Location,
/// 			SkuName:                 pulumi.String("Standard_B1"),
/// 			PurgeProtectionEnabled:  pulumi.Bool(false),
/// 			SoftDeleteRetentionDays: pulumi.Int(90),
/// 			TenantId:                pulumi.String(current.TenantId),
/// 			AdminObjectIds: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Env": pulumi.String("Test"),
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
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModule;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleArgs;
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
///         var exampleManagedHardwareSecurityModule = new ManagedHardwareSecurityModule("exampleManagedHardwareSecurityModule", ManagedHardwareSecurityModuleArgs.builder()
///             .name("exampleKVHsm")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("Standard_B1")
///             .purgeProtectionEnabled(false)
///             .softDeleteRetentionDays(90)
///             .tenantId(current.tenantId())
///             .adminObjectIds(current.objectId())
///             .tags(Map.of("Env", "Test"))
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
///   exampleManagedHardwareSecurityModule:
///     type: azure:keyvault:ManagedHardwareSecurityModule
///     name: example
///     properties:
///       name: exampleKVHsm
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: Standard_B1
///       purgeProtectionEnabled: false
///       softDeleteRetentionDays: 90
///       tenantId: ${current.tenantId}
///       adminObjectIds:
///         - ${current.objectId}
///       tags:
///         Env: Test
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
/// * `Microsoft.KeyVault` - 2023-07-01
///
/// ## Import
///
/// Key Vault Managed Hardware Security Module can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/managedHardwareSecurityModule:ManagedHardwareSecurityModule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.KeyVault/managedHSMs/hsm1
/// ```
class ManagedHardwareSecurityModule extends pulumi.CustomResource {
  /// Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>> adminObjectIds;

  /// The URI of the Key Vault Managed Hardware Security Module, used for performing operations on keys.
  late final pulumi.Output<String> hsmUri;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A `network_acls` block as defined below.
  late final pulumi.Output<ManagedHardwareSecurityModuleNetworkAcls>
  networkAcls;

  /// Whether traffic from public networks is permitted. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;

  /// Is Purge Protection enabled for this Key Vault Managed Hardware Security Module? Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> purgeProtectionEnabled;

  /// The name of the resource group in which to create the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// This attribute can be used for disaster recovery or when creating another Managed HSM that shares the same security domain.
  late final pulumi.Output<String> securityDomainEncryptedData;

  /// A list of KeyVault certificates resource IDs (minimum of three and up to a maximum of 10) to activate this Managed HSM. More information see [activate-your-managed-hsm](https://learn.microsoft.com/azure/key-vault/managed-hsm/quick-create-cli#activate-your-managed-hsm)
  late final pulumi.Output<List<String>?> securityDomainKeyVaultCertificateIds;

  /// Specifies the minimum number of shares required to decrypt the security domain for recovery. This is required when `security_domain_key_vault_certificate_ids` is specified. Valid values are between 2 and 10.
  late final pulumi.Output<int?> securityDomainQuorum;

  /// The Name of the SKU used for this Key Vault Managed Hardware Security Module. Possible value is `Standard_B1`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> skuName;

  /// The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` days. Defaults to `90`. Changing this forces a new resource to be created.
  late final pulumi.Output<int?> softDeleteRetentionDays;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The Azure Active Directory Tenant ID that should be used for authenticating requests to the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [ManagedHardwareSecurityModule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedHardwareSecurityModule]. {@macro pulumi_keyvault_managed_hardware_security_module_managed_hardware_security_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedHardwareSecurityModule(
    String name, {
    ManagedHardwareSecurityModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:keyvault/managedHardwareSecurityModule:ManagedHardwareSecurityModule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminObjectIds = registerOutput<List<String>>('adminObjectIds');
    hsmUri = registerOutput<String>('hsmUri');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkAcls = registerOutput<ManagedHardwareSecurityModuleNetworkAcls>(
      'networkAcls',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedHardwareSecurityModuleNetworkAcls.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    purgeProtectionEnabled = registerOutput<bool?>('purgeProtectionEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    securityDomainEncryptedData = registerOutput<String>(
      'securityDomainEncryptedData',
    );
    securityDomainKeyVaultCertificateIds = registerOutput<List<String>?>(
      'securityDomainKeyVaultCertificateIds',
    );
    securityDomainQuorum = registerOutput<int?>('securityDomainQuorum');
    skuName = registerOutput<String>('skuName');
    softDeleteRetentionDays = registerOutput<int?>('softDeleteRetentionDays');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [ManagedHardwareSecurityModule] resource's state with the given [name] and [id].
  static ManagedHardwareSecurityModule get(
    String name,
    pulumi.Input<String> id, {
    ManagedHardwareSecurityModuleState? state,
  }) {
    return ManagedHardwareSecurityModule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedHardwareSecurityModule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:keyvault/managedHardwareSecurityModule:ManagedHardwareSecurityModule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminObjectIds = registerOutput<List<String>>('adminObjectIds');
    hsmUri = registerOutput<String>('hsmUri');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkAcls = registerOutput<ManagedHardwareSecurityModuleNetworkAcls>(
      'networkAcls',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedHardwareSecurityModuleNetworkAcls.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    purgeProtectionEnabled = registerOutput<bool?>('purgeProtectionEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    securityDomainEncryptedData = registerOutput<String>(
      'securityDomainEncryptedData',
    );
    securityDomainKeyVaultCertificateIds = registerOutput<List<String>?>(
      'securityDomainKeyVaultCertificateIds',
    );
    securityDomainQuorum = registerOutput<int?>('securityDomainQuorum');
    skuName = registerOutput<String>('skuName');
    softDeleteRetentionDays = registerOutput<int?>('softDeleteRetentionDays');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
  }
}
