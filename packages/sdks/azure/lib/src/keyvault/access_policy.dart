import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_args.dart';
import 'access_policy_state.dart';

/// Manages a Key Vault Access Policy.
///
/// &gt; **NOTE:** It's possible to define Key Vault Access Policies both within the `azure.keyvault.KeyVault` resource via the `access_policy` block and by using the `azure.keyvault.AccessPolicy` resource. However it's not possible to use both methods to manage Access Policies within a KeyVault, since there'll be conflicts.
///
/// &gt; **NOTE:** Azure permits a maximum of 1024 Access Policies per Key Vault - [more information can be found in this document](https://docs.microsoft.com/azure/key-vault/key-vault-secure-your-key-vault#data-plane-access-control).
///
/// ## Import
///
/// Key Vault Access Policies can be imported using the Resource ID of the Key Vault, plus some additional metadata.
///
/// If both an `object_id` and `application_id` are specified, then the Access Policy can be imported using the following code:
///
/// ```sh
/// $ pulumi import azure:keyvault/accessPolicy:AccessPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.KeyVault/vaults/test-vault/objectId/11111111-1111-1111-1111-111111111111/applicationId/22222222-2222-2222-2222-222222222222
/// ```
///
/// where `11111111-1111-1111-1111-111111111111` is the `object_id` and `22222222-2222-2222-2222-222222222222` is the `application_id`.
///
/// ---
///
/// Access Policies with an `object_id` but no `application_id` can be imported using the following command:
///
/// ```sh
/// $ pulumi import azure:keyvault/accessPolicy:AccessPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.KeyVault/vaults/test-vault/objectId/11111111-1111-1111-1111-111111111111
/// ```
///
/// where `11111111-1111-1111-1111-111111111111` is the `object_id`.
///
/// &gt; **NOTE:** Both Identifiers are unique to this provider and don't map to an existing object within Azure.
class AccessPolicy extends pulumi.CustomResource {
  /// The object ID of an Application in Azure Active Directory. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> applicationId;

  /// List of certificate permissions, must be one or more from the following: `Backup`, `Create`, `Delete`, `DeleteIssuers`, `Get`, `GetIssuers`, `Import`, `List`, `ListIssuers`, `ManageContacts`, `ManageIssuers`, `Purge`, `Recover`, `Restore`, `SetIssuers` and `Update`.
  late final pulumi.Output<List<String>?> certificatePermissions;

  /// List of key permissions, must be one or more from the following: `Backup`, `Create`, `Decrypt`, `Delete`, `Encrypt`, `Get`, `Import`, `List`, `Purge`, `Recover`, `Restore`, `Sign`, `UnwrapKey`, `Update`, `Verify`, `WrapKey`, `Release`, `Rotate`, `GetRotationPolicy` and `SetRotationPolicy`.
  late final pulumi.Output<List<String>?> keyPermissions;

  /// Specifies the id of the Key Vault resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> keyVaultId;

  /// The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID of a service principal can be fetched from `azuread_service_principal.object_id`. The object ID must be unique for the list of access policies. Changing this forces a new resource to be created.
  late final pulumi.Output<String> objectId;

  /// List of secret permissions, must be one or more from the following: `Backup`, `Delete`, `Get`, `List`, `Purge`, `Recover`, `Restore` and `Set`.
  late final pulumi.Output<List<String>?> secretPermissions;

  /// List of storage permissions, must be one or more from the following: `Backup`, `Delete`, `DeleteSAS`, `Get`, `GetSAS`, `List`, `ListSAS`, `Purge`, `Recover`, `RegenerateKey`, `Restore`, `Set`, `SetSAS` and `Update`.
  late final pulumi.Output<List<String>?> storagePermissions;

  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Changing this forces a new resource to be created.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [AccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPolicy]. {@macro pulumi_keyvault_access_policy_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPolicy(
    String name, {
    AccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:keyvault/accessPolicy:AccessPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationId = registerOutput<String?>('applicationId');
    certificatePermissions = registerOutput<List<String>?>(
      'certificatePermissions',
    );
    keyPermissions = registerOutput<List<String>?>('keyPermissions');
    keyVaultId = registerOutput<String>('keyVaultId');
    objectId = registerOutput<String>('objectId');
    secretPermissions = registerOutput<List<String>?>('secretPermissions');
    storagePermissions = registerOutput<List<String>?>('storagePermissions');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [AccessPolicy] resource's state with the given [name] and [id].
  static AccessPolicy get(
    String name,
    pulumi.Input<String> id, {
    AccessPolicyState? state,
  }) {
    return AccessPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:keyvault/accessPolicy:AccessPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationId = registerOutput<String?>('applicationId');
    certificatePermissions = registerOutput<List<String>?>(
      'certificatePermissions',
    );
    keyPermissions = registerOutput<List<String>?>('keyPermissions');
    keyVaultId = registerOutput<String>('keyVaultId');
    objectId = registerOutput<String>('objectId');
    secretPermissions = registerOutput<List<String>?>('secretPermissions');
    storagePermissions = registerOutput<List<String>?>('storagePermissions');
    tenantId = registerOutput<String>('tenantId');
  }
}
