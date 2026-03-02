// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Confidential Instance options.
class ConfidentialInstanceConfigComputeV1 {
  /// Defines whether the instance should have confidential compute enabled.
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfigComputeV1].
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled.
  ConfidentialInstanceConfigComputeV1({
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory ConfidentialInstanceConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfigComputeV1(
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : (map['enableConfidentialCompute'] as bool).input(),
    );
  }
}

