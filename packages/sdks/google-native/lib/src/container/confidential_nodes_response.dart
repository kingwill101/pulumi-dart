// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ConfidentialNodes is configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
class ConfidentialNodesResponse {
  /// Whether Confidential Nodes feature is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ConfidentialNodesResponse].
  /// [enabled] Whether Confidential Nodes feature is enabled.
  const ConfidentialNodesResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ConfidentialNodesResponse.fromMap(Map<String, dynamic> map) {
    return ConfidentialNodesResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
