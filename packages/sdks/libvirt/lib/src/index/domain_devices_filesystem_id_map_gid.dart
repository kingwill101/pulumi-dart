// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemIdMapGid {
  /// Specifies the number of group IDs to be mapped in the filesystem.
  final pulumi.Input<double> count;
  /// Sets the starting group ID for mapping in the filesystem.
  final pulumi.Input<double> start;
  /// Defines the target group ID for the mapping in the filesystem.
  final pulumi.Input<double> target;

  /// Creates a new [DomainDevicesFilesystemIdMapGid].
  /// [count] Specifies the number of group IDs to be mapped in the filesystem.
  /// [start] Sets the starting group ID for mapping in the filesystem.
  /// [target] Defines the target group ID for the mapping in the filesystem.
  const DomainDevicesFilesystemIdMapGid({
    required this.count,
    required this.start,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'start': start,
      'target': target,
    };
  }

  factory DomainDevicesFilesystemIdMapGid.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemIdMapGid(
      count: pulumi.Input.fromValue(map['count'] as double),
      start: pulumi.Input.fromValue(map['start'] as double),
      target: pulumi.Input.fromValue(map['target'] as double),
    );
  }
}
