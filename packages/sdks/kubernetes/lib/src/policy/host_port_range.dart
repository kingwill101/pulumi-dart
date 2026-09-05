// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HostPortRange defines a range of host ports that will be enabled by a policy for pods to use.  It requires both the start and end to be defined.
class HostPortRange {
  /// max is the end of the range, inclusive.
  final pulumi.Input<int> max;
  /// min is the start of the range, inclusive.
  final pulumi.Input<int> min;

  /// Creates a new [HostPortRange].
  /// [max] max is the end of the range, inclusive.
  /// [min] min is the start of the range, inclusive.
  const HostPortRange({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory HostPortRange.fromMap(Map<String, dynamic> map) {
    return HostPortRange(
      max: pulumi.Input.fromValue((map['max'] as num).toInt()),
      min: pulumi.Input.fromValue((map['min'] as num).toInt()),
    );
  }
}
