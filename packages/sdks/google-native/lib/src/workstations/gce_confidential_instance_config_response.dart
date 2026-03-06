// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Compute Engine Confidential VM instance options.
class GceConfidentialInstanceConfigResponse {
  /// Optional. Whether the instance has confidential compute enabled.
  final pulumi.Input<bool> enableConfidentialCompute;

  /// Creates a new [GceConfidentialInstanceConfigResponse].
  /// [enableConfidentialCompute] Optional. Whether the instance has confidential compute enabled.
  const GceConfidentialInstanceConfigResponse({
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory GceConfidentialInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return GceConfidentialInstanceConfigResponse(
      enableConfidentialCompute: pulumi.Input.fromValue(map['enableConfidentialCompute'] as bool),
    );
  }
}

