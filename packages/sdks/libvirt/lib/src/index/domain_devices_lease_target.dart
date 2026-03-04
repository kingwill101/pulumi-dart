// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesLeaseTarget {
  /// Sets the offset attribute for the lease target, indicating the starting point for the resource allocation.
  final pulumi.Input<double>? offset;

  /// Defines the path attribute for the lease target, indicating the specific resource being leased.
  final pulumi.Input<String> path;

  /// Creates a new [DomainDevicesLeaseTarget].
  /// [offset] Sets the offset attribute for the lease target, indicating the starting point for the resource allocation.
  /// [path] Defines the path attribute for the lease target, indicating the specific resource being leased.
  DomainDevicesLeaseTarget({this.offset, required this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'offset': ?offset, 'path': path};
  }

  factory DomainDevicesLeaseTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesLeaseTarget(
      offset: (() {
        final guardedValue = map['offset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
