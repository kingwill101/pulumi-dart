// ignore_for_file: unused_element, unnecessary_cast


/// Managed Virtual Network Settings
class ManagedVirtualNetworkSettings {
  /// Allowed Aad Tenant Ids For Linking
  final List<String>? allowedAadTenantIdsForLinking;
  /// Linked Access Check On Target Resource
  final bool? linkedAccessCheckOnTargetResource;
  /// Prevent Data Exfiltration
  final bool? preventDataExfiltration;

  /// Creates a new [ManagedVirtualNetworkSettings].
  /// [allowedAadTenantIdsForLinking] Allowed Aad Tenant Ids For Linking
  /// [linkedAccessCheckOnTargetResource] Linked Access Check On Target Resource
  /// [preventDataExfiltration] Prevent Data Exfiltration
  ManagedVirtualNetworkSettings({
    this.allowedAadTenantIdsForLinking,
    this.linkedAccessCheckOnTargetResource,
    this.preventDataExfiltration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAadTenantIdsForLinking': ?allowedAadTenantIdsForLinking,
      'linkedAccessCheckOnTargetResource': ?linkedAccessCheckOnTargetResource,
      'preventDataExfiltration': ?preventDataExfiltration,
    };
  }

  factory ManagedVirtualNetworkSettings.fromMap(Map<String, dynamic> map) {
    return ManagedVirtualNetworkSettings(
      allowedAadTenantIdsForLinking: map['allowedAadTenantIdsForLinking'] == null ? null : (map['allowedAadTenantIdsForLinking'] as List).cast<String>(),
      linkedAccessCheckOnTargetResource: map['linkedAccessCheckOnTargetResource'] == null ? null : map['linkedAccessCheckOnTargetResource'] as bool,
      preventDataExfiltration: map['preventDataExfiltration'] == null ? null : map['preventDataExfiltration'] as bool,
    );
  }
}

