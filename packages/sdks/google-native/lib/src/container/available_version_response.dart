// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated.
class AvailableVersionResponse {
  /// Reason for availability.
  final pulumi.Input<String> reason;
  /// Kubernetes version.
  final pulumi.Input<String> version;

  /// Creates a new [AvailableVersionResponse].
  /// [reason] Reason for availability.
  /// [version] Kubernetes version.
  const AvailableVersionResponse({
    required this.reason,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': reason,
      'version': version,
    };
  }

  factory AvailableVersionResponse.fromMap(Map<String, dynamic> map) {
    return AvailableVersionResponse(
      reason: pulumi.Input.fromValue(map['reason'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
