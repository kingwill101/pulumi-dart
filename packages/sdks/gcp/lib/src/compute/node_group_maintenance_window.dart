// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupMaintenanceWindow {
  /// instances.start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  final pulumi.Input<String> startTime;

  /// Creates a new [NodeGroupMaintenanceWindow].
  /// [startTime] instances.start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  NodeGroupMaintenanceWindow({
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTime': startTime,
    };
  }

  factory NodeGroupMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return NodeGroupMaintenanceWindow(
      startTime: (map['startTime'] as String).input(),
    );
  }
}

