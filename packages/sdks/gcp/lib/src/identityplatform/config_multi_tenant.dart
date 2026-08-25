// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigMultiTenant {
  /// Whether this project can have tenants or not.
  final pulumi.Input<bool?>? allowTenants;
  /// The default cloud parent org or folder that the tenant project should be created under.
  /// The parent resource name should be in the format of "/", such as "folders/123" or "organizations/456".
  /// If the value is not set, the tenant will be created under the same organization or folder as the agent project.
  final pulumi.Input<String?>? defaultTenantLocation;

  /// Creates a new [ConfigMultiTenant].
  /// [allowTenants] Whether this project can have tenants or not.
  /// [defaultTenantLocation] The default cloud parent org or folder that the tenant project should be created under.
  const ConfigMultiTenant({
    this.allowTenants,
    this.defaultTenantLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowTenants': ?allowTenants,
      'defaultTenantLocation': ?defaultTenantLocation,
    };
  }

  factory ConfigMultiTenant.fromMap(Map<String, dynamic> map) {
    return ConfigMultiTenant(
      allowTenants: (() { final guardedValue = map['allowTenants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defaultTenantLocation: (() { final guardedValue = map['defaultTenantLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
