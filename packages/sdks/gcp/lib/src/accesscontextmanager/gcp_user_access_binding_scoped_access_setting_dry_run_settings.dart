// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpUserAccessBindingScopedAccessSettingDryRunSettings {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final pulumi.Input<String>? accessLevels;

  /// Creates a new [GcpUserAccessBindingScopedAccessSettingDryRunSettings].
  /// [accessLevels] Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  const GcpUserAccessBindingScopedAccessSettingDryRunSettings({
    this.accessLevels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': ?accessLevels,
    };
  }

  factory GcpUserAccessBindingScopedAccessSettingDryRunSettings.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSettingDryRunSettings(
      accessLevels: (() { final guardedValue = map['accessLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

