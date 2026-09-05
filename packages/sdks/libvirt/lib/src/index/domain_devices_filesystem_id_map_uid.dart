// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemIdMapUid {
  /// Specifies the number of group IDs to be mapped in the filesystem.
  final pulumi.Input<double> count;
  /// Sets the starting group ID for mapping in the filesystem.
  final pulumi.Input<double> start;
  /// Defines the target group ID for the mapping in the filesystem.
  final pulumi.Input<double> target;

  /// Creates a new [DomainDevicesFilesystemIdMapUid].
  /// [count] Specifies the number of group IDs to be mapped in the filesystem.
  /// [start] Sets the starting group ID for mapping in the filesystem.
  /// [target] Defines the target group ID for the mapping in the filesystem.
  const DomainDevicesFilesystemIdMapUid({
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

  factory DomainDevicesFilesystemIdMapUid.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemIdMapUid(
      count: pulumi.Input.fromValue((map['count'] as num).toDouble()),
      start: pulumi.Input.fromValue((map['start'] as num).toDouble()),
      target: pulumi.Input.fromValue((map['target'] as num).toDouble()),
    );
  }
}
