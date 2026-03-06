// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Shielded Instance options.
class ShieldedInstanceConfigResponseTpuV2alpha1 {
  /// Defines whether the instance has Secure Boot enabled.
  final pulumi.Input<bool> enableSecureBoot;

  /// Creates a new [ShieldedInstanceConfigResponseTpuV2alpha1].
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  const ShieldedInstanceConfigResponseTpuV2alpha1({
    required this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSecureBoot': enableSecureBoot,
    };
  }

  factory ShieldedInstanceConfigResponseTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponseTpuV2alpha1(
      enableSecureBoot: pulumi.Input.fromValue(map['enableSecureBoot'] as bool),
    );
  }
}

