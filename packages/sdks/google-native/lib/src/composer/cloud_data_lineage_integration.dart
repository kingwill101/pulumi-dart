// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for Cloud Data Lineage integration.
class CloudDataLineageIntegration {
  /// Optional. Whether or not Cloud Data Lineage integration is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [CloudDataLineageIntegration].
  /// [enabled] Optional. Whether or not Cloud Data Lineage integration is enabled.
  const CloudDataLineageIntegration({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory CloudDataLineageIntegration.fromMap(Map<String, dynamic> map) {
    return CloudDataLineageIntegration(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
