// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AclConfigIdpConfigExternalIdpConfig {
  /// Workforce pool name: "locations/global/workforcePools/pool_id"
  final pulumi.Input<String>? workforcePoolName;

  /// Creates a new [AclConfigIdpConfigExternalIdpConfig].
  /// [workforcePoolName] Workforce pool name: "locations/global/workforcePools/pool_id"
  AclConfigIdpConfigExternalIdpConfig({
    this.workforcePoolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workforcePoolName': ?workforcePoolName,
    };
  }

  factory AclConfigIdpConfigExternalIdpConfig.fromMap(Map<String, dynamic> map) {
    return AclConfigIdpConfigExternalIdpConfig(
      workforcePoolName: (() { final guardedValue = map['workforcePoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

