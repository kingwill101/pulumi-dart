// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getManagedHardwareSecurityModule.
class GetManagedHardwareSecurityModuleResult {
  /// Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module.
  final List<String> adminObjectIds;

  /// The URI of the Hardware Security Module for performing operations on keys and secrets.
  final String hsmUri;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Azure Region in which the Key Vault managed Hardware Security Module exists.
  final String location;
  final String name;

  /// Is purge protection enabled on this Key Vault Managed Hardware Security Module?
  final bool purgeProtectionEnabled;
  final String resourceGroupName;

  /// The Name of the SKU used for this Key Vault Managed Hardware Security Module.
  final String skuName;

  /// The number of days that items should be retained for soft-deleted.
  final int softDeleteRetentionDays;

  /// A mapping of tags assigned to the Key Vault Managed Hardware Security Module.
  final Map<String, String> tags;

  /// The Azure Active Directory Tenant ID used for authenticating requests to the Key Vault Managed Hardware Security Module.
  final String tenantId;

  /// Creates a new [GetManagedHardwareSecurityModuleResult].
  /// [adminObjectIds] Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module.
  /// [hsmUri] The URI of the Hardware Security Module for performing operations on keys and secrets.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which the Key Vault managed Hardware Security Module exists.
  /// [name] Required.
  /// [purgeProtectionEnabled] Is purge protection enabled on this Key Vault Managed Hardware Security Module?
  /// [resourceGroupName] Required.
  /// [skuName] The Name of the SKU used for this Key Vault Managed Hardware Security Module.
  /// [softDeleteRetentionDays] The number of days that items should be retained for soft-deleted.
  /// [tags] A mapping of tags assigned to the Key Vault Managed Hardware Security Module.
  /// [tenantId] The Azure Active Directory Tenant ID used for authenticating requests to the Key Vault Managed Hardware Security Module.
  GetManagedHardwareSecurityModuleResult({
    required this.adminObjectIds,
    required this.hsmUri,
    required this.id,
    required this.location,
    required this.name,
    required this.purgeProtectionEnabled,
    required this.resourceGroupName,
    required this.skuName,
    required this.softDeleteRetentionDays,
    required this.tags,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminObjectIds': adminObjectIds,
      'hsmUri': hsmUri,
      'id': id,
      'location': location,
      'name': name,
      'purgeProtectionEnabled': purgeProtectionEnabled,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'softDeleteRetentionDays': softDeleteRetentionDays,
      'tags': tags,
      'tenantId': tenantId,
    };
  }

  factory GetManagedHardwareSecurityModuleResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagedHardwareSecurityModuleResult(
      adminObjectIds: (map['adminObjectIds'] as List).cast<String>(),
      hsmUri: map['hsmUri'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      purgeProtectionEnabled: map['purgeProtectionEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      softDeleteRetentionDays: map['softDeleteRetentionDays'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      tenantId: map['tenantId'] as String,
    );
  }
}
