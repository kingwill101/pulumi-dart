// ignore_for_file: unused_element, unnecessary_cast


class ServiceTenantAccess {
  /// Should the access to the management API be enabled?
  final bool enabled;
  /// Primary access key for the tenant access information contract.
  final String? primaryKey;
  /// Secondary access key for the tenant access information contract.
  final String? secondaryKey;
  /// The identifier for the tenant access information contract.
  final String? tenantId;

  /// Creates a new [ServiceTenantAccess].
  /// [enabled] Should the access to the management API be enabled?
  /// [primaryKey] Primary access key for the tenant access information contract.
  /// [secondaryKey] Secondary access key for the tenant access information contract.
  /// [tenantId] The identifier for the tenant access information contract.
  ServiceTenantAccess({
    required this.enabled,
    this.primaryKey,
    this.secondaryKey,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'primaryKey': ?primaryKey,
      'secondaryKey': ?secondaryKey,
      'tenantId': ?tenantId,
    };
  }

  factory ServiceTenantAccess.fromMap(Map<String, dynamic> map) {
    return ServiceTenantAccess(
      enabled: map['enabled'] as bool,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

