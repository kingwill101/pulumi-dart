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
  SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig({
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
      confidenceThreshold: map['confidenceThreshold'] == null ? null : (map['confidenceThreshold'] as double).input(),
      expirationSec: map['expirationSec'] == null ? null : (map['expirationSec'] as int).input(),
      impactedBaselineThreshold: map['impactedBaselineThreshold'] == null ? null : (map['impactedBaselineThreshold'] as double).input(),
      loadThreshold: map['loadThreshold'] == null ? null : (map['loadThreshold'] as double).input(),
    );
  }
}

