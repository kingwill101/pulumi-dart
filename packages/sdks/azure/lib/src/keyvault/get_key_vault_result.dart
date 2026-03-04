// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_vault_access_policy.dart';
import 'get_key_vault_network_acl.dart';

/// Result data returned by getKeyVault.
class GetKeyVaultResult {
  /// One or more `access_policy` blocks as defined below.
  final List<GetKeyVaultAccessPolicy> accessPolicies;

  /// Is Role Based Access Control (RBAC) for authorization of data actions enabled on this Key Vault?
  final bool enableRbacAuthorization;

  /// Can Azure Virtual Machines retrieve certificates stored as secrets from the Key Vault?
  final bool enabledForDeployment;

  /// Can Azure Disk Encryption retrieve secrets from the Key Vault?
  final bool enabledForDiskEncryption;

  /// Can Azure Resource Manager retrieve secrets from the Key Vault?
  final bool enabledForTemplateDeployment;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Azure Region in which the Key Vault exists.
  final String location;
  final String name;
  final List<GetKeyVaultNetworkAcl> networkAcls;

  /// Is public network access enabled on this Key Vault?
  final bool publicNetworkAccessEnabled;

  /// Is purge protection enabled on this Key Vault?
  final bool purgeProtectionEnabled;
  final bool rbacAuthorizationEnabled;
  final String resourceGroupName;

  /// The Name of the SKU used for this Key Vault.
  final String skuName;

  /// A mapping of tags assigned to the Key Vault.
  final Map<String, String> tags;

  /// The Azure Active Directory Tenant ID used to authenticate requests for this Key Vault.
  final String tenantId;

  /// The URI of the vault for performing operations on keys and secrets.
  final String vaultUri;

  /// Creates a new [GetKeyVaultResult].
  /// [accessPolicies] One or more `access_policy` blocks as defined below.
  /// [enableRbacAuthorization] Is Role Based Access Control (RBAC) for authorization of data actions enabled on this Key Vault?
  /// [enabledForDeployment] Can Azure Virtual Machines retrieve certificates stored as secrets from the Key Vault?
  /// [enabledForDiskEncryption] Can Azure Disk Encryption retrieve secrets from the Key Vault?
  /// [enabledForTemplateDeployment] Can Azure Resource Manager retrieve secrets from the Key Vault?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which the Key Vault exists.
  /// [name] Required.
  /// [networkAcls] Required.
  /// [publicNetworkAccessEnabled] Is public network access enabled on this Key Vault?
  /// [purgeProtectionEnabled] Is purge protection enabled on this Key Vault?
  /// [rbacAuthorizationEnabled] Required.
  /// [resourceGroupName] Required.
  /// [skuName] The Name of the SKU used for this Key Vault.
  /// [tags] A mapping of tags assigned to the Key Vault.
  /// [tenantId] The Azure Active Directory Tenant ID used to authenticate requests for this Key Vault.
  /// [vaultUri] The URI of the vault for performing operations on keys and secrets.
  GetKeyVaultResult({
    required this.accessPolicies,
    required this.enableRbacAuthorization,
    required this.enabledForDeployment,
    required this.enabledForDiskEncryption,
    required this.enabledForTemplateDeployment,
    required this.id,
    required this.location,
    required this.name,
    required this.networkAcls,
    required this.publicNetworkAccessEnabled,
    required this.purgeProtectionEnabled,
    required this.rbacAuthorizationEnabled,
    required this.resourceGroupName,
    required this.skuName,
    required this.tags,
    required this.tenantId,
    required this.vaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies':
          pulumi.Input.encodeList<
            GetKeyVaultAccessPolicy,
            Map<String, dynamic>
          >(accessPolicies, (value) => value.toMap()),
      'enableRbacAuthorization': enableRbacAuthorization,
      'enabledForDeployment': enabledForDeployment,
      'enabledForDiskEncryption': enabledForDiskEncryption,
      'enabledForTemplateDeployment': enabledForTemplateDeployment,
      'id': id,
      'location': location,
      'name': name,
      'networkAcls':
          pulumi.Input.encodeList<GetKeyVaultNetworkAcl, Map<String, dynamic>>(
            networkAcls,
            (value) => value.toMap(),
          ),
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'purgeProtectionEnabled': purgeProtectionEnabled,
      'rbacAuthorizationEnabled': rbacAuthorizationEnabled,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': tags,
      'tenantId': tenantId,
      'vaultUri': vaultUri,
    };
  }

  factory GetKeyVaultResult.fromMap(Map<String, dynamic> map) {
    return GetKeyVaultResult(
      accessPolicies: pulumi.Input.decodeList<GetKeyVaultAccessPolicy>(
        map['accessPolicies']!,
        (value) => GetKeyVaultAccessPolicy.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      enableRbacAuthorization: map['enableRbacAuthorization'] as bool,
      enabledForDeployment: map['enabledForDeployment'] as bool,
      enabledForDiskEncryption: map['enabledForDiskEncryption'] as bool,
      enabledForTemplateDeployment: map['enabledForTemplateDeployment'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkAcls: pulumi.Input.decodeList<GetKeyVaultNetworkAcl>(
        map['networkAcls']!,
        (value) => GetKeyVaultNetworkAcl.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      purgeProtectionEnabled: map['purgeProtectionEnabled'] as bool,
      rbacAuthorizationEnabled: map['rbacAuthorizationEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tenantId: map['tenantId'] as String,
      vaultUri: map['vaultUri'] as String,
    );
  }
}
