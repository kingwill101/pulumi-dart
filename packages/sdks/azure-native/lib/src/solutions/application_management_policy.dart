// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed application management policy.
class ApplicationManagementPolicy {
  /// The managed application management mode.
  final pulumi.Input<String>? mode;

  /// Creates a new [ApplicationManagementPolicy].
  /// [mode] The managed application management mode.
  const ApplicationManagementPolicy({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory ApplicationManagementPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationManagementPolicy(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

