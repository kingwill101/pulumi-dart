import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hardware_security_module_role_definition_args.dart';
import 'managed_hardware_security_module_role_definition_state.dart';

/// Manages a Key Vault Managed Hardware Security Module Role Definition. This resource works together with Managed hardware security module resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.keyvault.ManagedHardwareSecurityModule("example", {
///     name: "example",
///     resourceGroupName: exampleAzurermResourceGroup.name,
///     location: exampleAzurermResourceGroup.location,
///     skuName: "Standard_B1",
///     tenantId: current.tenantId,
///     adminObjectIds: [current.objectId],
///     purgeProtectionEnabled: false,
///     activeConfig: [{
///         securityDomainCertificate: [
///             cert[0].id,
///             cert[1].id,
///             cert[2].id,
///         ],
///         securityDomainQuorum: 2,
///     }],
/// });
/// const exampleManagedHardwareSecurityModuleRoleDefinition = new azure.keyvault.ManagedHardwareSecurityModuleRoleDefinition("example", {
///     name: "7d206142-bf01-11ed-80bc-00155d61ee9e",
///     managedHsmId: example.id,
///     description: "desc foo",
///     permissions: [{
///         dataActions: ["Microsoft.KeyVault/managedHsm/keys/read/action"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.keyvault.ManagedHardwareSecurityModule("example",
///     name="example",
///     resource_group_name=example_azurerm_resource_group["name"],
///     location=example_azurerm_resource_group["location"],
///     sku_name="Standard_B1",
///     tenant_id=current["tenantId"],
///     admin_object_ids=[current["objectId"]],
///     purge_protection_enabled=False,
///     active_config=[{
///         "securityDomainCertificate": [
///             cert[0]["id"],
///             cert[1]["id"],
///             cert[2]["id"],
///         ],
///         "securityDomainQuorum": 2,
///     }])
/// example_managed_hardware_security_module_role_definition = azure.keyvault.ManagedHardwareSecurityModuleRoleDefinition("example",
///     name="7d206142-bf01-11ed-80bc-00155d61ee9e",
///     managed_hsm_id=example.id,
///     description="desc foo",
///     permissions=[{
///         "data_actions": ["Microsoft.KeyVault/managedHsm/keys/read/action"],
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
///     var example = new Azure.KeyVault.ManagedHardwareSecurityModule("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///         Location = exampleAzurermResourceGroup.Location,
///         SkuName = "Standard_B1",
///         TenantId = current.TenantId,
///         AdminObjectIds = new[]
///         {
///             current.ObjectId,
///         },
///         PurgeProtectionEnabled = false,
///         ActiveConfig = new[]
///         {
///
///             {
///                 { "securityDomainCertificate", new[]
///                 {
///                     cert[0].Id,
///                     cert[1].Id,
///                     cert[2].Id,
///                 } },
///                 { "securityDomainQuorum", 2 },
///             },
///         },
///     });
///
///     var exampleManagedHardwareSecurityModuleRoleDefinition = new Azure.KeyVault.ManagedHardwareSecurityModuleRoleDefinition("example", new()
///     {
///         Name = "7d206142-bf01-11ed-80bc-00155d61ee9e",
///         ManagedHsmId = example.Id,
///         Description = "desc foo",
///         Permissions = new[]
///         {
///             new Azure.KeyVault.Inputs.ManagedHardwareSecurityModuleRoleDefinitionPermissionArgs
///             {
///                 DataActions = new[]
///                 {
///                     "Microsoft.KeyVault/managedHsm/keys/read/action",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := keyvault.NewManagedHardwareSecurityModule(ctx, "example", &keyvault.ManagedHardwareSecurityModuleArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: pulumi.Any(exampleAzurermResourceGroup.Name),
/// 			Location:          pulumi.Any(exampleAzurermResourceGroup.Location),
/// 			SkuName:           pulumi.String("Standard_B1"),
/// 			TenantId:          pulumi.Any(current.TenantId),
/// 			AdminObjectIds: pulumi.StringArray{
/// 				current.ObjectId,
/// 			},
/// 			PurgeProtectionEnabled: pulumi.Bool(false),
/// 			ActiveConfig: []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"securityDomainCertificate": []interface{}{
/// 						cert[0].Id,
/// 						cert[1].Id,
/// 						cert[2].Id,
/// 					},
/// 					"securityDomainQuorum": 2,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewManagedHardwareSecurityModuleRoleDefinition(ctx, "example", &keyvault.ManagedHardwareSecurityModuleRoleDefinitionArgs{
/// 			Name:         pulumi.String("7d206142-bf01-11ed-80bc-00155d61ee9e"),
/// 			ManagedHsmId: example.ID(),
/// 			Description:  pulumi.String("desc foo"),
/// 			Permissions: keyvault.ManagedHardwareSecurityModuleRoleDefinitionPermissionArray{
/// 				&keyvault.ManagedHardwareSecurityModuleRoleDefinitionPermissionArgs{
/// 					DataActions: pulumi.StringArray{
/// 						pulumi.String("Microsoft.KeyVault/managedHsm/keys/read/action"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModule;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleArgs;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleRoleDefinition;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleRoleDefinitionArgs;
/// import com.pulumi.azure.keyvault.inputs.ManagedHardwareSecurityModuleRoleDefinitionPermissionArgs;
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
///         var example = new ManagedHardwareSecurityModule("example", ManagedHardwareSecurityModuleArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .location(exampleAzurermResourceGroup.location())
///             .skuName("Standard_B1")
///             .tenantId(current.tenantId())
///             .adminObjectIds(current.objectId())
///             .purgeProtectionEnabled(false)
///             .activeConfig(List.of(Map.ofEntries(
///                 Map.entry("securityDomainCertificate", List.of(
///                     cert[0].id(),
///                     cert[1].id(),
///                     cert[2].id())),
///                 Map.entry("securityDomainQuorum", 2)
///             )))
///             .build());
///
///         var exampleManagedHardwareSecurityModuleRoleDefinition = new ManagedHardwareSecurityModuleRoleDefinition("exampleManagedHardwareSecurityModuleRoleDefinition", ManagedHardwareSecurityModuleRoleDefinitionArgs.builder()
///             .name("7d206142-bf01-11ed-80bc-00155d61ee9e")
///             .managedHsmId(example.id())
///             .description("desc foo")
///             .permissions(ManagedHardwareSecurityModuleRoleDefinitionPermissionArgs.builder()
///                 .dataActions("Microsoft.KeyVault/managedHsm/keys/read/action")
///                 .build())
///             .build());
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
///       activeConfig:
///         - securityDomainCertificate:
///             - ${cert[0].id}
///             - ${cert[1].id}
///             - ${cert[2].id}
///           securityDomainQuorum: 2
///   exampleManagedHardwareSecurityModuleRoleDefinition:
///     type: azure:keyvault:ManagedHardwareSecurityModuleRoleDefinition
///     name: example
///     properties:
///       name: 7d206142-bf01-11ed-80bc-00155d61ee9e
///       managedHsmId: ${example.id}
///       description: desc foo
///       permissions:
///         - dataActions:
///             - Microsoft.KeyVault/managedHsm/keys/read/action
/// ```
///
///
/// ## Import
///
/// Key Vault Managed Hardware Security Module Role Definitions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/managedHardwareSecurityModuleRoleDefinition:ManagedHardwareSecurityModuleRoleDefinition example https://0000.managedhsm.azure.net///RoleDefinition/00000000-0000-0000-0000-000000000000
/// ```
class ManagedHardwareSecurityModuleRoleDefinition
    extends pulumi.CustomResource {
  /// Specifies a text description about this Key Vault Managed Hardware Security Module Role Definition.
  late final pulumi.Output<String?> description;

  /// The ID of the Key Vault Managed Hardware Security Module. Changing this forces a new Key Vault Managed Hardware Security Module Role Definition to be created.
  late final pulumi.Output<String> managedHsmId;

  /// The name in UUID notation of this Key Vault Managed Hardware Security Module Role Definition. Changing this forces a new Key Vault Managed Hardware Security Module Role Definition to be created.
  late final pulumi.Output<String> name;

  /// One or more `permission` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> permissions;

  /// The ID of the role definition resource without Key Vault base URL.
  late final pulumi.Output<String> resourceManagerId;

  /// Specify a display name for this Key Vault Managed Hardware Security Module Role Definition.
  late final pulumi.Output<String?> roleName;

  /// The type of the role definition. Possible values are `AKVBuiltInRole` and `CustomRole`.
  late final pulumi.Output<String> roleType;

  /// Creates a new [ManagedHardwareSecurityModuleRoleDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedHardwareSecurityModuleRoleDefinition]. {@macro pulumi_keyvault_managed_hardware_security_module_role_definition_managed_hardware_security_module_role_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedHardwareSecurityModuleRoleDefinition(
    String name, {
    ManagedHardwareSecurityModuleRoleDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:keyvault/managedHardwareSecurityModuleRoleDefinition:ManagedHardwareSecurityModuleRoleDefinition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    managedHsmId = registerOutput<String>('managedHsmId');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<List<Map<String, dynamic>>?>('permissions');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    roleName = registerOutput<String?>('roleName');
    roleType = registerOutput<String>('roleType');
  }

  /// Gets an existing [ManagedHardwareSecurityModuleRoleDefinition] resource's state with the given [name] and [id].
  static ManagedHardwareSecurityModuleRoleDefinition get(
    String name,
    pulumi.Input<String> id, {
    ManagedHardwareSecurityModuleRoleDefinitionState? state,
  }) {
    return ManagedHardwareSecurityModuleRoleDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedHardwareSecurityModuleRoleDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:keyvault/managedHardwareSecurityModuleRoleDefinition:ManagedHardwareSecurityModuleRoleDefinition',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    managedHsmId = registerOutput<String>('managedHsmId');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<List<Map<String, dynamic>>?>('permissions');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    roleName = registerOutput<String?>('roleName');
    roleType = registerOutput<String>('roleType');
  }
}
