// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedHardwareSecurityModule.
class GetManagedHardwareSecurityModuleResult {
  /// Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module.
  final List<String>? adminObjectIds;
  /// The URI of the Hardware Security Module for performing operations on keys and secrets.
  final String? hsmUri;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region in which the Key Vault managed Hardware Security Module exists.
  final String? location;
  final String? name;
  /// Is purge protection enabled on this Key Vault Managed Hardware Security Module?
  final bool? purgeProtectionEnabled;
  final String? resourceGroupName;
  /// The Name of the SKU used for this Key Vault Managed Hardware Security Module.
  final String? skuName;
  /// The number of days that items should be retained for soft-deleted.
  final int? softDeleteRetentionDays;
  /// A mapping of tags assigned to the Key Vault Managed Hardware Security Module.
  final Map<String, String>? tags;
  /// The Azure Active Directory Tenant ID used for authenticating requests to the Key Vault Managed Hardware Security Module.
  final String? tenantId;

  /// Creates a new [GetManagedHardwareSecurityModuleResult].
  /// [adminObjectIds] Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module.
  /// [hsmUri] The URI of the Hardware Security Module for performing operations on keys and secrets.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which the Key Vault managed Hardware Security Module exists.
  /// [name] Optional.
  /// [purgeProtectionEnabled] Is purge protection enabled on this Key Vault Managed Hardware Security Module?
  /// [resourceGroupName] Optional.
  /// [skuName] The Name of the SKU used for this Key Vault Managed Hardware Security Module.
  /// [softDeleteRetentionDays] The number of days that items should be retained for soft-deleted.
  /// [tags] A mapping of tags assigned to the Key Vault Managed Hardware Security Module.
  /// [tenantId] The Azure Active Directory Tenant ID used for authenticating requests to the Key Vault Managed Hardware Security Module.
  const GetManagedHardwareSecurityModuleResult({
    this.adminObjectIds,
    this.hsmUri,
    this.id,
    this.location,
    this.name,
    this.purgeProtectionEnabled,
    this.resourceGroupName,
    this.skuName,
    this.softDeleteRetentionDays,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminObjectIds': ?adminObjectIds,
      'hsmUri': ?hsmUri,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'purgeProtectionEnabled': ?purgeProtectionEnabled,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'softDeleteRetentionDays': ?softDeleteRetentionDays,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetManagedHardwareSecurityModuleResult.fromMap(Map<String, dynamic> map) {
    return GetManagedHardwareSecurityModuleResult(
      adminObjectIds: (() { final guardedValue = map['adminObjectIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      hsmUri: (() { final guardedValue = map['hsmUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      purgeProtectionEnabled: (() { final guardedValue = map['purgeProtectionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      softDeleteRetentionDays: (() { final guardedValue = map['softDeleteRetentionDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
