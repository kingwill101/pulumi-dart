import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_args.dart';
import 'key_rotation_policy.dart';
import 'key_state.dart';

/// Manages a Key Vault Key.
///
/// ## Example Usage
///
/// &gt; **Note:** To use this resource, your client should have RBAC roles with permissions like `Key Vault Crypto Officer` or `Key Vault Administrator` or an assigned Key Vault Access Policy with permissions `Create`,`Delete`,`Get`,`Purge`,`Recover`,`Update` and `GetRotationPolicy` for keys without Rotation Policy. Include `SetRotationPolicy` for keys with Rotation Policy.
///
/// &gt; **Note:** The Azure Provider includes a Feature Toggle which will purge a Key Vault Key resource on destroy, rather than the default soft-delete. See `purge_soft_deleted_keys_on_destroy` for more information.
///
///
/// ### Additional Examples
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
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     softDeleteRetentionDays: 7,
///     accessPolicies: [{
///         tenantId: current.then(current => current.tenantId),
///         objectId: current.then(current => current.objectId),
///         keyPermissions: [
///             "Create",
///             "Delete",
///             "Get",
///             "Purge",
///             "Recover",
///             "Update",
///             "GetRotationPolicy",
///             "SetRotationPolicy",
///         ],
///         secretPermissions: ["Set"],
///     }],
/// });
/// const generated = new azure.keyvault.Key("generated", {
///     name: "generated-certificate",
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
///     rotationPolicy: {
///         automatic: {
///             timeBeforeExpiry: "P30D",
///         },
///         expireAfter: "P90D",
///         notifyBeforeExpiry: "P29D",
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
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     soft_delete_retention_days=7,
///     access_policies=[{
///         "tenant_id": current.tenant_id,
///         "object_id": current.object_id,
///         "key_permissions": [
///             "Create",
///             "Delete",
///             "Get",
///             "Purge",
///             "Recover",
///             "Update",
///             "GetRotationPolicy",
///             "SetRotationPolicy",
///         ],
///         "secret_permissions": ["Set"],
///     }])
/// generated = azure.keyvault.Key("generated",
///     name="generated-certificate",
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
///     rotation_policy={
///         "automatic": {
///             "time_before_expiry": "P30D",
///         },
///         "expire_after": "P90D",
///         "notify_before_expiry": "P29D",
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
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
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
///                     "Delete",
///                     "Get",
///                     "Purge",
///                     "Recover",
///                     "Update",
///                     "GetRotationPolicy",
///                     "SetRotationPolicy",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Set",
///                 },
///             },
///         },
///     });
///
///     var generated = new Azure.KeyVault.Key("generated", new()
///     {
///         Name = "generated-certificate",
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
///         RotationPolicy = new Azure.KeyVault.Inputs.KeyRotationPolicyArgs
///         {
///             Automatic = new Azure.KeyVault.Inputs.KeyRotationPolicyAutomaticArgs
///             {
///                 TimeBeforeExpiry = "P30D",
///             },
///             ExpireAfter = "P90D",
///             NotifyBeforeExpiry = "P29D",
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
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                    pulumi.String("examplekeyvault"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			TenantId:                pulumi.String(current.TenantId),
/// 			SkuName:                 pulumi.String("premium"),
/// 			SoftDeleteRetentionDays: pulumi.Int(7),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("Recover"),
/// 						pulumi.String("Update"),
/// 						pulumi.String("GetRotationPolicy"),
/// 						pulumi.String("SetRotationPolicy"),
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
/// 		_, err = keyvault.NewKey(ctx, "generated", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("generated-certificate"),
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
/// 			RotationPolicy: &keyvault.KeyRotationPolicyArgs{
/// 				Automatic: &keyvault.KeyRotationPolicyAutomaticArgs{
/// 					TimeBeforeExpiry: pulumi.String("P30D"),
/// 				},
/// 				ExpireAfter:        pulumi.String("P90D"),
/// 				NotifyBeforeExpiry: pulumi.String("P29D"),
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
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyRotationPolicyArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyRotationPolicyAutomaticArgs;
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
///             .name("examplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .softDeleteRetentionDays(7)
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(current.tenantId())
///                 .objectId(current.objectId())
///                 .keyPermissions(
///                     "Create",
///                     "Delete",
///                     "Get",
///                     "Purge",
///                     "Recover",
///                     "Update",
///                     "GetRotationPolicy",
///                     "SetRotationPolicy")
///                 .secretPermissions("Set")
///                 .build())
///             .build());
///
///         var generated = new Key("generated", KeyArgs.builder()
///             .name("generated-certificate")
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
///             .rotationPolicy(KeyRotationPolicyArgs.builder()
///                 .automatic(KeyRotationPolicyAutomaticArgs.builder()
///                     .timeBeforeExpiry("P30D")
///                     .build())
///                 .expireAfter("P90D")
///                 .notifyBeforeExpiry("P29D")
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
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: premium
///       softDeleteRetentionDays: 7
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Create
///             - Delete
///             - Get
///             - Purge
///             - Recover
///             - Update
///             - GetRotationPolicy
///             - SetRotationPolicy
///           secretPermissions:
///             - Set
///   generated:
///     type: azure:keyvault:Key
///     properties:
///       name: generated-certificate
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
///       rotationPolicy:
///         automatic:
///           timeBeforeExpiry: P30D
///         expireAfter: P90D
///         notifyBeforeExpiry: P29D
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
/// Key Vault Key which is Enabled can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/key:Key example "https://example-keyvault.vault.azure.net/keys/example/fdf067c93bbb4b22bff4d8b7a9a56217"
/// ```
class Key extends pulumi.CustomResource {
  /// Specifies the curve to use when creating an `EC` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field will be required in a future release if `key_type` is `EC` or `EC-HSM`. The API will default to `P-256` if nothing is specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String> curve;

  /// The RSA public exponent of this Key Vault Key.
  late final pulumi.Output<String> e;

  /// Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
  ///
  /// &gt; **Note:** Removing this field from the config forces a new resource to be created.
  late final pulumi.Output<String?> expirationDate;

  /// A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify` and `wrapKey`. Please note these values are case sensitive.
  late final pulumi.Output<List<String>> keyOpts;

  /// Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `key_type` is `RSA` or `RSA-HSM`. Changing this forces a new resource to be created.
  late final pulumi.Output<int?> keySize;

  /// Specifies the Key Type to use for this Key Vault Key. Possible values are `EC` (Elliptic Curve), `EC-HSM`, `RSA` and `RSA-HSM`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> keyType;

  /// The ID of the Key Vault where the Key should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> keyVaultId;

  /// The RSA modulus of this Key Vault Key.
  late final pulumi.Output<String> n;

  /// Specifies the name of the Key Vault Key. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  ///
  /// &gt; **Note:** Once `expiration_date` is set, it's not possible to unset the key even if it is deleted & recreated as underlying Azure API uses the restore of the purged key.
  late final pulumi.Output<String?> notBeforeDate;

  /// The OpenSSH encoded public key of this Key Vault Key.
  late final pulumi.Output<String> publicKeyOpenssh;

  /// The PEM encoded public key of this Key Vault Key.
  late final pulumi.Output<String> publicKeyPem;

  /// The (Versioned) ID for this Key Vault Key. This property points to a specific version of a Key Vault Key, as such using this won't auto-rotate values if used in other Azure Services.
  late final pulumi.Output<String> resourceId;

  /// The Versionless ID of the Key Vault Key. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Key is updated.
  late final pulumi.Output<String> resourceVersionlessId;

  /// A `rotation_policy` block as defined below.
  late final pulumi.Output<KeyRotationPolicy?> rotationPolicy;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The current version of the Key Vault Key.
  late final pulumi.Output<String> version;

  /// The Base ID of the Key Vault Key.
  late final pulumi.Output<String> versionlessId;

  /// The EC X component of this Key Vault Key.
  late final pulumi.Output<String> x;

  /// The EC Y component of this Key Vault Key.
  late final pulumi.Output<String> y;

  /// Creates a new [Key].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Key]. {@macro pulumi_keyvault_key_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Key(String name, {KeyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:keyvault/key:Key',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    curve = registerOutput<String>('curve');
    e = registerOutput<String>('e');
    expirationDate = registerOutput<String?>('expirationDate');
    keyOpts = registerOutput<List<String>>('keyOpts');
    keySize = registerOutput<int?>('keySize');
    keyType = registerOutput<String>('keyType');
    keyVaultId = registerOutput<String>('keyVaultId');
    n = registerOutput<String>('n');
    this.name = registerOutput<String>('name');
    notBeforeDate = registerOutput<String?>('notBeforeDate');
    publicKeyOpenssh = registerOutput<String>('publicKeyOpenssh');
    publicKeyPem = registerOutput<String>('publicKeyPem');
    resourceId = registerOutput<String>('resourceId');
    resourceVersionlessId = registerOutput<String>('resourceVersionlessId');
    rotationPolicy = registerOutput<KeyRotationPolicy?>(
      'rotationPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KeyRotationPolicy.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String>('version');
    versionlessId = registerOutput<String>('versionlessId');
    x = registerOutput<String>('x');
    y = registerOutput<String>('y');
  }

  /// Gets an existing [Key] resource's state with the given [name] and [id].
  static Key get(String name, pulumi.Input<String> id, {KeyState? state}) {
    return Key._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Key._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:keyvault/key:Key',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    curve = registerOutput<String>('curve');
    e = registerOutput<String>('e');
    expirationDate = registerOutput<String?>('expirationDate');
    keyOpts = registerOutput<List<String>>('keyOpts');
    keySize = registerOutput<int?>('keySize');
    keyType = registerOutput<String>('keyType');
    keyVaultId = registerOutput<String>('keyVaultId');
    n = registerOutput<String>('n');
    this.name = registerOutput<String>('name');
    notBeforeDate = registerOutput<String?>('notBeforeDate');
    publicKeyOpenssh = registerOutput<String>('publicKeyOpenssh');
    publicKeyPem = registerOutput<String>('publicKeyPem');
    resourceId = registerOutput<String>('resourceId');
    resourceVersionlessId = registerOutput<String>('resourceVersionlessId');
    rotationPolicy = registerOutput<KeyRotationPolicy?>(
      'rotationPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KeyRotationPolicy.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String>('version');
    versionlessId = registerOutput<String>('versionlessId');
    x = registerOutput<String>('x');
    y = registerOutput<String>('y');
  }
}
