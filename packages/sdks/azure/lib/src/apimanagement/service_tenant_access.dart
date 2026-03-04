// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTenantAccess {
  /// Should the access to the management API be enabled?
  final pulumi.Input<bool> enabled;

  /// Primary access key for the tenant access information contract.
  final pulumi.Input<String>? primaryKey;

  /// Secondary access key for the tenant access information contract.
  final pulumi.Input<String>? secondaryKey;

  /// The identifier for the tenant access information contract.
  final pulumi.Input<String>? tenantId;

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
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      primaryKey: (() {
        final guardedValue = map['primaryKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryKey: (() {
        final guardedValue = map['secondaryKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
