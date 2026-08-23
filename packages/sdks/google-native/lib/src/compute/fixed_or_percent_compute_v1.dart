// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encapsulates numeric value that can be either absolute or relative.
class FixedOrPercentComputeV1 {
  /// Specifies a fixed number of VM instances. This must be a positive integer.
  final pulumi.Input<int>? fixed;
  /// Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%.
  final pulumi.Input<int>? percent;

  /// Creates a new [FixedOrPercentComputeV1].
  /// [fixed] Specifies a fixed number of VM instances. This must be a positive integer.
  /// [percent] Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%.
  const FixedOrPercentComputeV1({
    this.fixed,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixed': ?fixed,
      'percent': ?percent,
    };
  }

  factory FixedOrPercentComputeV1.fromMap(Map<String, dynamic> map) {
    return FixedOrPercentComputeV1(
      fixed: (() { final guardedValue = map['fixed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
