// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for Adaptive Protection auto-deploy feature.
class SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse {
  final pulumi.Input<double> confidenceThreshold;
  final pulumi.Input<int> expirationSec;
  final pulumi.Input<double> impactedBaselineThreshold;
  final pulumi.Input<double> loadThreshold;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse].
  /// [confidenceThreshold] Required.
  /// [expirationSec] Required.
  /// [impactedBaselineThreshold] Required.
  /// [loadThreshold] Required.
  const SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse({
    required this.confidenceThreshold,
    required this.expirationSec,
    required this.impactedBaselineThreshold,
    required this.loadThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceThreshold': confidenceThreshold,
      'expirationSec': expirationSec,
      'impactedBaselineThreshold': impactedBaselineThreshold,
      'loadThreshold': loadThreshold,
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse(
      confidenceThreshold: pulumi.Input.fromValue((map['confidenceThreshold'] as num).toDouble()),
      expirationSec: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['expirationSec'])),
      impactedBaselineThreshold: pulumi.Input.fromValue((map['impactedBaselineThreshold'] as num).toDouble()),
      loadThreshold: pulumi.Input.fromValue((map['loadThreshold'] as num).toDouble()),
    );
  }
}
