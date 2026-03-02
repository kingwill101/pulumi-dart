// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message encapsulating a value that can be either absolute ("fixed") or relative ("percent") to a value.
class FixedOrPercent {
  /// Specifies a fixed value.
  final pulumi.Input<int>? fixed;
  /// Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  final pulumi.Input<int>? percent;

  /// Creates a new [FixedOrPercent].
  /// [fixed] Specifies a fixed value.
  /// [percent] Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  FixedOrPercent({
    this.fixed,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixed': ?fixed,
      'percent': ?percent,
    };
  }

  factory FixedOrPercent.fromMap(Map<String, dynamic> map) {
    return FixedOrPercent(
      fixed: map['fixed'] == null ? null : (map['fixed']! as int).input(),
      percent: map['percent'] == null ? null : (map['percent']! as int).input(),
    );
  }
}

