// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_access_policy.dart';
import 'key_vault_contact.dart';
import 'key_vault_network_acls.dart';

/// Input properties used for looking up and filtering KeyVault resources.
class KeyVaultState {
  /// A list of up to 1024 objects describing access policies, as described below.
  ///
  /// > **Note:** Since `access_policy` can be configured both inline and via the separate `azure.keyvault.AccessPolicy` resource, we have to explicitly set it to empty slice (`[]`) to remove it.
  final pulumi.Input<List<KeyVaultAccessPolicy>>? accessPolicies;
  final pulumi.Input<List<KeyVaultContact>>? contacts;
  final pulumi.Input<bool>? enableRbacAuthorization;
  /// Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.
  final pulumi.Input<bool>? enabledForDeployment;
  /// Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.
  final pulumi.Input<bool>? enabledForDiskEncryption;
  /// Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault.
  final pulumi.Input<bool>? enabledForTemplateDeployment;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name.
  final pulumi.Input<String>? name;
  /// A `network_acls` block as defined below.
  final pulumi.Input<KeyVaultNetworkAcls>? networkAcls;
  /// Whether public network access is allowed for this Key Vault. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Is Purge Protection enabled for this Key Vault?
  ///
  /// !> **Note:** Once Purge Protection has been Enabled it's not possible to Disable it. Support for [disabling purge protection is being tracked in this Azure API issue](https://github.com/Azure/azure-rest-api-specs/issues/8075). Deleting the Key Vault with Purge Protection Enabled will schedule the Key Vault to be deleted (which will happen by Azure in the configured number of days, currently 90 days).
  final pulumi.Input<bool>? purgeProtectionEnabled;
  /// Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions.
  ///
  /// > **Note:** Changing the permission model requires unrestricted (no conditions on the role assignment) `Microsoft.Authorization/roleAssignments/write` permission, which is part of the `Owner` and `User Access Administrator` roles. Classic subscription administrator roles like `Service Administrator` and `Co-Administrator`, or restricted `Key Vault Data Access Administrator` cannot be used to change the permission model. For more information, please see the [product documentation](https://learn.microsoft.com/azure/key-vault/general/rbac-guide?tabs=azure-cli#using-azure-rbac-secret-key-and-certificate-permissions-with-key-vault:~:text=Enable%20Azure%20RBAC,change%20permission%20model).
  final pulumi.Input<bool>? rbacAuthorizationEnabled;
  /// The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Name of the SKU used for this Key Vault. Possible values are `standard` and `premium`.
  final pulumi.Input<String>? skuName;
  /// The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` (the default) days.
  ///
  /// > **Note:** This field can only be configured one time and cannot be updated.
  final pulumi.Input<int>? softDeleteRetentionDays;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  final pulumi.Input<String>? tenantId;
  /// The URI of the Key Vault, used for performing operations on keys and secrets.
  final pulumi.Input<String>? vaultUri;

  /// Creates a new [KeyVaultState].
  /// [accessPolicies] A list of up to 1024 objects describing access policies, as described below.
  /// [contacts] Optional.
  /// [enableRbacAuthorization] Optional.
  /// [enabledForDeployment] Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.
  /// [enabledForDiskEncryption] Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.
  /// [enabledForTemplateDeployment] Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name.
  /// [networkAcls] A `network_acls` block as defined below.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for this Key Vault. Defaults to `true`.
  /// [purgeProtectionEnabled] Is Purge Protection enabled for this Key Vault?
  /// [rbacAuthorizationEnabled] Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions.
  /// [resourceGroupName] The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created.
  /// [skuName] The Name of the SKU used for this Key Vault. Possible values are `standard` and `premium`.
  /// [softDeleteRetentionDays] The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` (the default) days.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  /// [vaultUri] The URI of the Key Vault, used for performing operations on keys and secrets.
  KeyVaultState({
    pulumi.Output<List<KeyVaultAccessPolicy>>? accessPolicies,
    pulumi.Output<List<KeyVaultContact>>? contacts,
    pulumi.Output<bool>? enableRbacAuthorization,
    pulumi.Output<bool>? enabledForDeployment,
    pulumi.Output<bool>? enabledForDiskEncryption,
    pulumi.Output<bool>? enabledForTemplateDeployment,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<KeyVaultNetworkAcls>? networkAcls,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<bool>? purgeProtectionEnabled,
    pulumi.Output<bool>? rbacAuthorizationEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<int>? softDeleteRetentionDays,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? vaultUri,
  }) :
      accessPolicies = pulumi.Input.asOptionalInput<List<KeyVaultAccessPolicy>>(accessPolicies),
      contacts = pulumi.Input.asOptionalInput<List<KeyVaultContact>>(contacts),
      enableRbacAuthorization = pulumi.Input.asOptionalInput<bool>(enableRbacAuthorization),
      enabledForDeployment = pulumi.Input.asOptionalInput<bool>(enabledForDeployment),
      enabledForDiskEncryption = pulumi.Input.asOptionalInput<bool>(enabledForDiskEncryption),
      enabledForTemplateDeployment = pulumi.Input.asOptionalInput<bool>(enabledForTemplateDeployment),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkAcls = pulumi.Input.asOptionalInput<KeyVaultNetworkAcls>(networkAcls),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      purgeProtectionEnabled = pulumi.Input.asOptionalInput<bool>(purgeProtectionEnabled),
      rbacAuthorizationEnabled = pulumi.Input.asOptionalInput<bool>(rbacAuthorizationEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      softDeleteRetentionDays = pulumi.Input.asOptionalInput<int>(softDeleteRetentionDays),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      vaultUri = pulumi.Input.asOptionalInput<String>(vaultUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?pulumi.Input.mapOptionalInputValue<List<KeyVaultAccessPolicy>, List<Map<String, dynamic>>>(accessPolicies, (value) => pulumi.Input.encodeList<KeyVaultAccessPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contacts': ?pulumi.Input.mapOptionalInputValue<List<KeyVaultContact>, List<Map<String, dynamic>>>(contacts, (value) => pulumi.Input.encodeList<KeyVaultContact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableRbacAuthorization': ?enableRbacAuthorization,
      'enabledForDeployment': ?enabledForDeployment,
      'enabledForDiskEncryption': ?enabledForDiskEncryption,
      'enabledForTemplateDeployment': ?enabledForTemplateDeployment,
      'location': ?location,
      'name': ?name,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<KeyVaultNetworkAcls, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'purgeProtectionEnabled': ?purgeProtectionEnabled,
      'rbacAuthorizationEnabled': ?rbacAuthorizationEnabled,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'softDeleteRetentionDays': ?softDeleteRetentionDays,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'vaultUri': ?vaultUri,
    };
  }

  factory KeyVaultState.fromMap(Map<String, dynamic> map) {
    return KeyVaultState(
      accessPolicies: map['accessPolicies'] == null ? null : pulumi.Output.create<List<KeyVaultAccessPolicy>>(pulumi.Input.decodeList<KeyVaultAccessPolicy>(map['accessPolicies'], (value) => KeyVaultAccessPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      contacts: map['contacts'] == null ? null : pulumi.Output.create<List<KeyVaultContact>>(pulumi.Input.decodeList<KeyVaultContact>(map['contacts'], (value) => KeyVaultContact.fromMap((value as Map).cast<String, dynamic>()))),
      enableRbacAuthorization: map['enableRbacAuthorization'] == null ? null : pulumi.Output.create<bool>(map['enableRbacAuthorization'] as bool),
      enabledForDeployment: map['enabledForDeployment'] == null ? null : pulumi.Output.create<bool>(map['enabledForDeployment'] as bool),
      enabledForDiskEncryption: map['enabledForDiskEncryption'] == null ? null : pulumi.Output.create<bool>(map['enabledForDiskEncryption'] as bool),
      enabledForTemplateDeployment: map['enabledForTemplateDeployment'] == null ? null : pulumi.Output.create<bool>(map['enabledForTemplateDeployment'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkAcls: map['networkAcls'] == null ? null : pulumi.Output.create<KeyVaultNetworkAcls>(KeyVaultNetworkAcls.fromMap((map['networkAcls'] as Map).cast<String, dynamic>())),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      purgeProtectionEnabled: map['purgeProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['purgeProtectionEnabled'] as bool),
      rbacAuthorizationEnabled: map['rbacAuthorizationEnabled'] == null ? null : pulumi.Output.create<bool>(map['rbacAuthorizationEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      softDeleteRetentionDays: map['softDeleteRetentionDays'] == null ? null : pulumi.Output.create<int>(map['softDeleteRetentionDays'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      vaultUri: map['vaultUri'] == null ? null : pulumi.Output.create<String>(map['vaultUri'] as String),
    );
  }
}

