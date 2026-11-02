// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMicrovmCheckpointsCheckpointSize {
  /// Number of vCPUs
  final pulumi.Input<int> cpu;
  /// Attached disk in GB
  final pulumi.Input<int> disk;
  /// Memory in MiB
  final pulumi.Input<int> memory;

  /// Creates a new [GetMicrovmCheckpointsCheckpointSize].
  /// [cpu] Number of vCPUs
  /// [disk] Attached disk in GB
  /// [memory] Memory in MiB
  const GetMicrovmCheckpointsCheckpointSize({
    required this.cpu,
    required this.disk,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'disk': disk,
      'memory': memory,
    };
  }

  factory GetMicrovmCheckpointsCheckpointSize.fromMap(Map<String, dynamic> map) {
    return GetMicrovmCheckpointsCheckpointSize(
      cpu: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['cpu'])),
      disk: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['disk'])),
      memory: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['memory'])),
    );
  }
}
