// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Confidential Instance options.
class ConfidentialInstanceConfigResponseComputeV1 {
  /// Defines whether the instance should have confidential compute enabled.
  final pulumi.Input<bool> enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfigResponseComputeV1].
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled.
  const ConfidentialInstanceConfigResponseComputeV1({
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory ConfidentialInstanceConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfigResponseComputeV1(
      enableConfidentialCompute: pulumi.Input.fromValue(map['enableConfidentialCompute'] as bool),
    );
  }
}
