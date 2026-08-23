// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Confidential Instance Config for clusters using Confidential VMs (https://cloud.google.com/compute/confidential-vm/docs)
class ConfidentialInstanceConfigResponse {
  /// Optional. Defines whether the instance should have confidential compute enabled.
  final pulumi.Input<bool> enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfigResponse].
  /// [enableConfidentialCompute] Optional. Defines whether the instance should have confidential compute enabled.
  const ConfidentialInstanceConfigResponse({
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory ConfidentialInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfigResponse(
      enableConfidentialCompute: pulumi.Input.fromValue(map['enableConfidentialCompute'] as bool),
    );
  }
}
