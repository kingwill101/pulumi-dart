// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_instance_config_confidential_instance_type_compute_beta.dart';

/// A set of Confidential Instance options.
class ConfidentialInstanceConfigComputeBeta {
  /// Defines the type of technology used by the confidential instance.
  final pulumi.Input<ConfidentialInstanceConfigConfidentialInstanceTypeComputeBeta>? confidentialInstanceType;
  /// Defines whether the instance should have confidential compute enabled.
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfigComputeBeta].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential instance.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled.
  ConfidentialInstanceConfigComputeBeta({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?pulumi.Input.mapOptionalInputValue<ConfidentialInstanceConfigConfidentialInstanceTypeComputeBeta, String>(confidentialInstanceType, (value) => value.value),
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory ConfidentialInstanceConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfigComputeBeta(
      confidentialInstanceType: map['confidentialInstanceType'] == null ? null : (ConfidentialInstanceConfigConfidentialInstanceTypeComputeBeta.fromValue(map['confidentialInstanceType'] as String)).input(),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : (map['enableConfidentialCompute'] as bool).input(),
    );
  }
}

