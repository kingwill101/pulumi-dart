// ignore_for_file: unused_element, unnecessary_cast


/// HostPortRange defines a range of host ports that will be enabled by a policy for pods to use.  It requires both the start and end to be defined. Deprecated: use HostPortRange from policy API Group instead.
class HostPortRange {
  /// max is the end of the range, inclusive.
  final int max;
  /// min is the start of the range, inclusive.
  final int min;

  /// Creates a new [HostPortRange].
  /// [max] max is the end of the range, inclusive.
  /// [min] min is the start of the range, inclusive.
  HostPortRange({
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
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}

