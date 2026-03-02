// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed application management policy.
class ApplicationManagementPolicyResponse {
  /// The managed application management mode.
  final pulumi.Input<String>? mode;

  /// Creates a new [ApplicationManagementPolicyResponse].
  /// [mode] The managed application management mode.
  ApplicationManagementPolicyResponse({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory ApplicationManagementPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationManagementPolicyResponse(
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
    );
  }
}

