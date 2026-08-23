// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for Adaptive Protection auto-deploy feature.
class SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig {
  final pulumi.Input<double>? confidenceThreshold;
  final pulumi.Input<int>? expirationSec;
  final pulumi.Input<double>? impactedBaselineThreshold;
  final pulumi.Input<double>? loadThreshold;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig].
  /// [confidenceThreshold] Optional.
  /// [expirationSec] Optional.
  /// [impactedBaselineThreshold] Optional.
  /// [loadThreshold] Optional.
  const SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig({
    this.confidenceThreshold,
    this.expirationSec,
    this.impactedBaselineThreshold,
    this.loadThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceThreshold': ?confidenceThreshold,
      'expirationSec': ?expirationSec,
      'impactedBaselineThreshold': ?impactedBaselineThreshold,
      'loadThreshold': ?loadThreshold,
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig(
      confidenceThreshold: (() { final guardedValue = map['confidenceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      expirationSec: (() { final guardedValue = map['expirationSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      impactedBaselineThreshold: (() { final guardedValue = map['impactedBaselineThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      loadThreshold: (() { final guardedValue = map['loadThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
