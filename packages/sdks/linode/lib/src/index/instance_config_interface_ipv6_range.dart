// ignore_for_file: unused_element, unnecessary_cast


class InstanceConfigInterfaceIpv6Range {
  /// The value of `range` computed by the API. This is necessary when needing to access the range implicitly allocated using `auto`.
  final String? assignedRange;
  /// A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  final String? range;

  /// Creates a new [InstanceConfigInterfaceIpv6Range].
  /// [assignedRange] The value of `range` computed by the API. This is necessary when needing to access the range implicitly allocated using `auto`.
  /// [range] A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  InstanceConfigInterfaceIpv6Range({
    this.assignedRange,
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedRange': ?assignedRange,
      'range': ?range,
    };
  }

  factory InstanceConfigInterfaceIpv6Range.fromMap(Map<String, dynamic> map) {
    return InstanceConfigInterfaceIpv6Range(
      assignedRange: map['assignedRange'] == null ? null : map['assignedRange'] as String,
      range: map['range'] == null ? null : map['range'] as String,
    );
  }
}

