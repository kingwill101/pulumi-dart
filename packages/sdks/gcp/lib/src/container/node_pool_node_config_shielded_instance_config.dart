// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled.
  final pulumi.Input<bool>? enableIntegrityMonitoring;
  /// Defines whether the instance has Secure Boot enabled.
  final pulumi.Input<bool>? enableSecureBoot;

  /// Creates a new [NodePoolNodeConfigShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  const NodePoolNodeConfigShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': ?enableIntegrityMonitoring,
      'enableSecureBoot': ?enableSecureBoot,
    };
  }

  factory NodePoolNodeConfigShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigShieldedInstanceConfig(
      enableIntegrityMonitoring: (() { final guardedValue = map['enableIntegrityMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSecureBoot: (() { final guardedValue = map['enableSecureBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
