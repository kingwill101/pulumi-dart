// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesLeaseTarget {
  /// Sets the offset attribute for the lease target, indicating the starting point for the resource allocation.
  final double? offset;
  /// Defines the path attribute for the lease target, indicating the specific resource being leased.
  final String path;

  /// Creates a new [DomainDevicesLeaseTarget].
  /// [offset] Sets the offset attribute for the lease target, indicating the starting point for the resource allocation.
  /// [path] Defines the path attribute for the lease target, indicating the specific resource being leased.
  DomainDevicesLeaseTarget({
    this.offset,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offset': ?offset,
      'path': path,
    };
  }

  factory DomainDevicesLeaseTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesLeaseTarget(
      offset: map['offset'] == null ? null : map['offset'] as double,
      path: map['path'] as String,
    );
  }
}

