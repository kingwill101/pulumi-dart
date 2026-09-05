import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_args.dart';
import 'secret_state.dart';

/// Manages a Key Vault Secret.
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
///     rbacAuthorizationEnabled: false,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     softDeleteRetentionDays: 7,
///     accessPolicies: [{
///         tenantId: current.then(current => current.tenantId),
///         objectId: current.then(current => current.objectId),
///         keyPermissions: [
///             "Create",
///             "Get",
///         ],
///         secretPermissions: [
///             "Set",
///             "Get",
///             "Delete",
///             "Purge",
///             "Recover",
///         ],
///     }],
/// });
/// const exampleSecret = new azure.keyvault.Secret("example", {
///     name: "secret-sauce",
///     value: "szechuan",
///     keyVaultId: exampleKeyVault.id,
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
///     rbac_authorization_enabled=False,
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     soft_delete_retention_days=7,
///     access_policies=[{
///         "tenant_id": current.tenant_id,
///         "object_id": current.object_id,
///         "key_permissions": [
///             "Create",
///             "Get",
///         ],
///         "secret_permissions": [
///             "Set",
///             "Get",
///             "Delete",
///             "Purge",
///             "Recover",
///         ],
///     }])
/// example_secret = azure.keyvault.Secret("example",
///     name="secret-sauce",
///     value="szechuan",
///     key_vault_id=example_key_vault.id)
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
///         RbacAuthorizationEnabled = false,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "premium",
///         SoftDeleteRetentionDays = 7,
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Create",
///                     "Get",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Set",
///                     "Get",
///                     "Delete",
///                     "Purge",
///                     "Recover",
///                 },
///             },
///         },
///     });
///
///     var exampleSecret = new Azure.KeyVault.Secret("example", new()
///     {
///         Name = "secret-sauce",
///         Value = "szechuan",
///         KeyVaultId = exampleKeyVault.Id,
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
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("examplekeyvault"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			RbacAuthorizationEnabled: pulumi.Bool(false),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SkuName:                  pulumi.String("premium"),
/// 			SoftDeleteRetentionDays:  pulumi.Int(7),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Get"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Set"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("Recover"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewSecret(ctx, "example", &keyvault.SecretArgs{
/// 			Name:       pulumi.String("secret-sauce"),
/// 			Value:      pulumi.String("szechuan"),
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
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
///   name                       = "examplekeyvault"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   rbac_authorization_enabled = false
///   tenant_id                  = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                   = "premium"
///   soft_delete_retention_days = 7
///   access_policies {
///     tenant_id          = data.azure_core_getclientconfig.current.tenant_id
///     object_id          = data.azure_core_getclientconfig.current.object_id
///     key_permissions    = ["Create", "Get"]
///     secret_permissions = ["Set", "Get", "Delete", "Purge", "Recover"]
///   }
/// }
/// resource "azure_keyvault_secret" "example" {
///   name         = "secret-sauce"
///   value        = "szechuan"
///   key_vault_id = azure_keyvault_keyvault.example.id
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
/// import com.pulumi.azure.keyvault.Secret;
/// import com.pulumi.azure.keyvault.SecretArgs;
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
///             .rbacAuthorizationEnabled(false)
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .softDeleteRetentionDays(7)
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(current.tenantId())
///                 .objectId(current.objectId())
///                 .keyPermissions(
///                     "Create",
///                     "Get")
///                 .secretPermissions(
///                     "Set",
///                     "Get",
///                     "Delete",
///                     "Purge",
///                     "Recover")
///                 .build())
///             .build());
///
///         var exampleSecret = new Secret("exampleSecret", SecretArgs.builder()
///             .name("secret-sauce")
///             .value("szechuan")
///             .keyVaultId(exampleKeyVault.id())
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
///       rbacAuthorizationEnabled: false
///       tenantId: ${current.tenantId}
///       skuName: premium
///       softDeleteRetentionDays: 7
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Create
///             - Get
///           secretPermissions:
///             - Set
///             - Get
///             - Delete
///             - Purge
///             - Recover
///   exampleSecret:
///     type: azure:keyvault:Secret
///     name: example
///     properties:
///       name: secret-sauce
///       value: szechuan
///       keyVaultId: ${exampleKeyVault.id}
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
/// Key Vault Secrets which are Enabled can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/secret:Secret example "https://example-keyvault.vault.azure.net/secrets/example/fdf067c93bbb4b22bff4d8b7a9a56217"
/// ```
class Secret extends pulumi.CustomResource {
  /// Specifies the content type for the Key Vault Secret.
  late final pulumi.Output<String?> contentType;
  /// Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
  late final pulumi.Output<String?> expirationDate;
  /// The ID of the Key Vault where the Secret should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> keyVaultId;
  /// Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  late final pulumi.Output<String?> notBeforeDate;
  /// The (Versioned) ID for this Key Vault Secret. This property points to a specific version of a Key Vault Secret, as such using this won't auto-rotate values if used in other Azure Services.
  late final pulumi.Output<String> resourceId;
  /// The Versionless ID of the Key Vault Secret. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Secret is updated.
  late final pulumi.Output<String> resourceVersionlessId;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the value of the Key Vault Secret. Changing this will create a new version of the Key Vault Secret.
  late final pulumi.Output<String?> value;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Specifies the value of the Key Vault Secret. Changing this will create a new version of the Key Vault Secret.
  ///
  /// &gt; **Note:** One of `value` or `valueWo` must be specified.
  late final pulumi.Output<String?> valueWo;
  /// An integer value used to trigger an update for `valueWo`. This property should be incremented when updating `valueWo`.
  ///
  /// &gt; **Note:** Key Vault strips newlines. To preserve newlines in multi-line secrets try replacing them with `\n` or by base 64 encoding them with `replace(file("mySecretFile"), "/\n/", "\n")` or `base64encode(file("mySecretFile"))`, respectively.
  late final pulumi.Output<int?> valueWoVersion;
  /// The current version of the Key Vault Secret.
  late final pulumi.Output<String> version;
  /// The Base ID of the Key Vault Secret.
  late final pulumi.Output<String> versionlessId;

  /// Creates a new [Secret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Secret]. {@macro pulumi_keyvault_secret_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Secret(
    String name, {
    SecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/secret:Secret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['value', 'valueWo'],
        ) {
    contentType = registerOutput<String?>('contentType');
    expirationDate = registerOutput<String?>('expirationDate');
    keyVaultId = registerOutput<String>('keyVaultId');
    this.name = registerOutput<String>('name');
    notBeforeDate = registerOutput<String?>('notBeforeDate');
    resourceId = registerOutput<String>('resourceId');
    resourceVersionlessId = registerOutput<String>('resourceVersionlessId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    value = registerOutput<String?>('value', isSecret: true);
    valueWo = registerOutput<String?>('valueWo', isSecret: true);
    valueWoVersion = registerOutput<int?>('valueWoVersion');
    version = registerOutput<String>('version');
    versionlessId = registerOutput<String>('versionlessId');
  }

  /// Gets an existing [Secret] resource's state with the given [name] and [id].
  static Secret get(
    String name,
    pulumi.Input<String> id, {
    SecretState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Secret._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Secret._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/secret:Secret',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contentType = registerOutput<String?>('contentType');
    expirationDate = registerOutput<String?>('expirationDate');
    keyVaultId = registerOutput<String>('keyVaultId');
    this.name = registerOutput<String>('name');
    notBeforeDate = registerOutput<String?>('notBeforeDate');
    resourceId = registerOutput<String>('resourceId');
    resourceVersionlessId = registerOutput<String>('resourceVersionlessId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    value = registerOutput<String?>('value', isSecret: true);
    valueWo = registerOutput<String?>('valueWo', isSecret: true);
    valueWoVersion = registerOutput<int?>('valueWoVersion');
    version = registerOutput<String>('version');
    versionlessId = registerOutput<String>('versionlessId');
  }

  /// Creates a typed reference to an existing [Secret] resource.
  Secret.reference(String urn)
    : super(
        'azure:keyvault/secret:Secret',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['value', 'valueWo'],
        isResourceReference: true,
      ) {
    contentType = registerOutput<String?>('contentType');
    expirationDate = registerOutput<String?>('expirationDate');
    keyVaultId = registerOutput<String>('keyVaultId');
    this.name = registerOutput<String>('name');
    notBeforeDate = registerOutput<String?>('notBeforeDate');
    resourceId = registerOutput<String>('resourceId');
    resourceVersionlessId = registerOutput<String>('resourceVersionlessId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    value = registerOutput<String?>('value', isSecret: true);
    valueWo = registerOutput<String?>('valueWo', isSecret: true);
    valueWoVersion = registerOutput<int?>('valueWoVersion');
    version = registerOutput<String>('version');
    versionlessId = registerOutput<String>('versionlessId');
  }
}
