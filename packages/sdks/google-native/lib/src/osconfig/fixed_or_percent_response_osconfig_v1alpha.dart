// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message encapsulating a value that can be either absolute ("fixed") or relative ("percent") to a value.
class FixedOrPercentResponseOsconfigV1alpha {
  /// Specifies a fixed value.
  final pulumi.Input<int> fixed;
  /// Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  final pulumi.Input<int> percent;

  /// Creates a new [FixedOrPercentResponseOsconfigV1alpha].
  /// [fixed] Specifies a fixed value.
  /// [percent] Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  const FixedOrPercentResponseOsconfigV1alpha({
    required this.fixed,
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixed': fixed,
      'percent': percent,
    };
  }

  factory FixedOrPercentResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return FixedOrPercentResponseOsconfigV1alpha(
      fixed: pulumi.Input.fromValue(map['fixed'] as int),
      percent: pulumi.Input.fromValue(map['percent'] as int),
    );
  }
}

