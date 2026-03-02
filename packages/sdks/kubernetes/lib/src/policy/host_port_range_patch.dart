// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HostPortRange defines a range of host ports that will be enabled by a policy for pods to use.  It requires both the start and end to be defined.
class HostPortRangePatch {
  /// max is the end of the range, inclusive.
  final pulumi.Input<int>? max;
  /// min is the start of the range, inclusive.
  final pulumi.Input<int>? min;

  /// Creates a new [HostPortRangePatch].
  /// [max] max is the end of the range, inclusive.
  /// [min] min is the start of the range, inclusive.
  HostPortRangePatch({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory HostPortRangePatch.fromMap(Map<String, dynamic> map) {
    return HostPortRangePatch(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

