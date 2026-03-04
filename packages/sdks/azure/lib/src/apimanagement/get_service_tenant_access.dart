// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTenantAccess {
  /// Is access to the Management API enabled (presumably "for this Tenant")?
  final pulumi.Input<bool> enabled;

  /// Primary access key for the tenant access information contract.
  final pulumi.Input<String> primaryKey;

  /// Secondary access key for the tenant access information contract.
  final pulumi.Input<String> secondaryKey;

  /// The ID of the Tenant which has access to this API Management instance.
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetServiceTenantAccess].
  /// [enabled] Is access to the Management API enabled (presumably "for this Tenant")?
  /// [primaryKey] Primary access key for the tenant access information contract.
  /// [secondaryKey] Secondary access key for the tenant access information contract.
  /// [tenantId] The ID of the Tenant which has access to this API Management instance.
  GetServiceTenantAccess({
    required this.enabled,
    required this.primaryKey,
    required this.secondaryKey,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'primaryKey': primaryKey,
      'secondaryKey': secondaryKey,
      'tenantId': tenantId,
    };
  }

  factory GetServiceTenantAccess.fromMap(Map<String, dynamic> map) {
    return GetServiceTenantAccess(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      primaryKey: pulumi.Input.fromValue(map['primaryKey'] as String),
      secondaryKey: pulumi.Input.fromValue(map['secondaryKey'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
