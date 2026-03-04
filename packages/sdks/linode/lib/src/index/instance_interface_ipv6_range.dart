// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceInterfaceIpv6Range {
  /// The value of `range` computed by the API. This is necessary when needing to access the range implicitly allocated using `auto`.
  final pulumi.Input<String>? assignedRange;

  /// A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  final pulumi.Input<String>? range;

  /// Creates a new [InstanceInterfaceIpv6Range].
  /// [assignedRange] The value of `range` computed by the API. This is necessary when needing to access the range implicitly allocated using `auto`.
  /// [range] A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  InstanceInterfaceIpv6Range({this.assignedRange, this.range});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'assignedRange': ?assignedRange, 'range': ?range};
  }

  factory InstanceInterfaceIpv6Range.fromMap(Map<String, dynamic> map) {
    return InstanceInterfaceIpv6Range(
      assignedRange: (() {
        final guardedValue = map['assignedRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      range: (() {
        final guardedValue = map['range'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
