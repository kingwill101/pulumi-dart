// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Compute Engine Confidential VM instance options.
class GceConfidentialInstanceConfigWorkstationsV1beta {
  /// Optional. Whether the instance has confidential compute enabled.
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// Creates a new [GceConfidentialInstanceConfigWorkstationsV1beta].
  /// [enableConfidentialCompute] Optional. Whether the instance has confidential compute enabled.
  const GceConfidentialInstanceConfigWorkstationsV1beta({
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory GceConfidentialInstanceConfigWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return GceConfidentialInstanceConfigWorkstationsV1beta(
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

