// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Compute Engine Confidential VM instance options.
class GceConfidentialInstanceConfigResponseWorkstationsV1beta {
  /// Optional. Whether the instance has confidential compute enabled.
  final pulumi.Input<bool> enableConfidentialCompute;

  /// Creates a new [GceConfidentialInstanceConfigResponseWorkstationsV1beta].
  /// [enableConfidentialCompute] Optional. Whether the instance has confidential compute enabled.
  const GceConfidentialInstanceConfigResponseWorkstationsV1beta({
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory GceConfidentialInstanceConfigResponseWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return GceConfidentialInstanceConfigResponseWorkstationsV1beta(
      enableConfidentialCompute: pulumi.Input.fromValue(map['enableConfidentialCompute'] as bool),
    );
  }
}

