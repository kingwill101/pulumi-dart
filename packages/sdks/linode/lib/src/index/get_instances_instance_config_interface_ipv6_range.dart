// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceConfigInterfaceIpv6Range {
  /// The value of `range` computed by the API. This is necessary when needing to access the range implicitly allocated using `auto`.
  final pulumi.Input<String> assignedRange;
  /// A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  final pulumi.Input<String>? range;

  /// Creates a new [GetInstancesInstanceConfigInterfaceIpv6Range].
  /// [assignedRange] The value of `range` computed by the API. This is necessary when needing to access the range implicitly allocated using `auto`.
  /// [range] A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  GetInstancesInstanceConfigInterfaceIpv6Range({
    required this.assignedRange,
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedRange': assignedRange,
      'range': ?range,
    };
  }

  factory GetInstancesInstanceConfigInterfaceIpv6Range.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceConfigInterfaceIpv6Range(
      assignedRange: (map['assignedRange'] as String).input(),
      range: map['range'] == null ? null : (map['range'] as String).input(),
    );
  }
}

