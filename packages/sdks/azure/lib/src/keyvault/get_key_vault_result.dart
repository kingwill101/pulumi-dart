// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_vault_access_policy.dart';
import 'get_key_vault_network_acl.dart';

/// Result data returned by getKeyVault.
class GetKeyVaultResult {
  /// One or more `accessPolicy` blocks as defined below.
  final List<GetKeyVaultAccessPolicy>? accessPolicies;
  /// Is Role Based Access Control (RBAC) for authorization of data actions enabled on this Key Vault?
  final bool? enableRbacAuthorization;
  /// Can Azure Virtual Machines retrieve certificates stored as secrets from the Key Vault?
  final bool? enabledForDeployment;
  /// Can Azure Disk Encryption retrieve secrets from the Key Vault?
  final bool? enabledForDiskEncryption;
  /// Can Azure Resource Manager retrieve secrets from the Key Vault?
  final bool? enabledForTemplateDeployment;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region in which the Key Vault exists.
  final String? location;
  final String? name;
  final List<GetKeyVaultNetworkAcl>? networkAcls;
  /// Is public network access enabled on this Key Vault?
  final bool? publicNetworkAccessEnabled;
  /// Is purge protection enabled on this Key Vault?
  final bool? purgeProtectionEnabled;
  final bool? rbacAuthorizationEnabled;
  final String? resourceGroupName;
  /// The Name of the SKU used for this Key Vault.
  final String? skuName;
  /// A mapping of tags assigned to the Key Vault.
  final Map<String, String>? tags;
  /// The Azure Active Directory Tenant ID used to authenticate requests for this Key Vault.
  final String? tenantId;
  /// The URI of the vault for performing operations on keys and secrets.
  final String? vaultUri;

  /// Creates a new [GetKeyVaultResult].
  /// [accessPolicies] One or more `accessPolicy` blocks as defined below.
  /// [enableRbacAuthorization] Is Role Based Access Control (RBAC) for authorization of data actions enabled on this Key Vault?
  /// [enabledForDeployment] Can Azure Virtual Machines retrieve certificates stored as secrets from the Key Vault?
  /// [enabledForDiskEncryption] Can Azure Disk Encryption retrieve secrets from the Key Vault?
  /// [enabledForTemplateDeployment] Can Azure Resource Manager retrieve secrets from the Key Vault?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which the Key Vault exists.
  /// [name] Optional.
  /// [networkAcls] Optional.
  /// [publicNetworkAccessEnabled] Is public network access enabled on this Key Vault?
  /// [purgeProtectionEnabled] Is purge protection enabled on this Key Vault?
  /// [rbacAuthorizationEnabled] Optional.
  /// [resourceGroupName] Optional.
  /// [skuName] The Name of the SKU used for this Key Vault.
  /// [tags] A mapping of tags assigned to the Key Vault.
  /// [tenantId] The Azure Active Directory Tenant ID used to authenticate requests for this Key Vault.
  /// [vaultUri] The URI of the vault for performing operations on keys and secrets.
  const GetKeyVaultResult({
    this.accessPolicies,
    this.enableRbacAuthorization,
    this.enabledForDeployment,
    this.enabledForDiskEncryption,
    this.enabledForTemplateDeployment,
    this.id,
    this.location,
    this.name,
    this.networkAcls,
    this.publicNetworkAccessEnabled,
    this.purgeProtectionEnabled,
    this.rbacAuthorizationEnabled,
    this.resourceGroupName,
    this.skuName,
    this.tags,
    this.tenantId,
    this.vaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?(() { final guardedValue = accessPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKeyVaultAccessPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enableRbacAuthorization': ?enableRbacAuthorization,
      'enabledForDeployment': ?enabledForDeployment,
      'enabledForDiskEncryption': ?enabledForDiskEncryption,
      'enabledForTemplateDeployment': ?enabledForTemplateDeployment,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkAcls': ?(() { final guardedValue = networkAcls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKeyVaultNetworkAcl, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'purgeProtectionEnabled': ?purgeProtectionEnabled,
      'rbacAuthorizationEnabled': ?rbacAuthorizationEnabled,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'vaultUri': ?vaultUri,
    };
  }

  factory GetKeyVaultResult.fromMap(Map<String, dynamic> map) {
    return GetKeyVaultResult(
      accessPolicies: (() { final guardedValue = map['accessPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKeyVaultAccessPolicy>(guardedValue, (value) => GetKeyVaultAccessPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      enableRbacAuthorization: (() { final guardedValue = map['enableRbacAuthorization']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enabledForDeployment: (() { final guardedValue = map['enabledForDeployment']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enabledForDiskEncryption: (() { final guardedValue = map['enabledForDiskEncryption']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enabledForTemplateDeployment: (() { final guardedValue = map['enabledForTemplateDeployment']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKeyVaultNetworkAcl>(guardedValue, (value) => GetKeyVaultNetworkAcl.fromMap((value as Map).cast<String, dynamic>())); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      purgeProtectionEnabled: (() { final guardedValue = map['purgeProtectionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      rbacAuthorizationEnabled: (() { final guardedValue = map['rbacAuthorizationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vaultUri: (() { final guardedValue = map['vaultUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
