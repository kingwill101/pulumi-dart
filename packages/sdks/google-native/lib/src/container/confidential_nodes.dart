// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ConfidentialNodes is configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
class ConfidentialNodes {
  /// Whether Confidential Nodes feature is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ConfidentialNodes].
  /// [enabled] Whether Confidential Nodes feature is enabled.
  ConfidentialNodes({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ConfidentialNodes.fromMap(Map<String, dynamic> map) {
    return ConfidentialNodes(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

