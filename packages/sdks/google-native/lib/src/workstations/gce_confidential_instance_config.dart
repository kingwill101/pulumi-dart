// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Compute Engine Confidential VM instance options.
class GceConfidentialInstanceConfig {
  /// Optional. Whether the instance has confidential compute enabled.
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// Creates a new [GceConfidentialInstanceConfig].
  /// [enableConfidentialCompute] Optional. Whether the instance has confidential compute enabled.
  GceConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory GceConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GceConfidentialInstanceConfig(
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : (map['enableConfidentialCompute']! as bool).input(),
    );
  }
}

