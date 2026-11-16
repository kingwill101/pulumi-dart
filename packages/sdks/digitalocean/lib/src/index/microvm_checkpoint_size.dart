// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MicrovmCheckpointSize {
  /// The number of vCPUs.
  final pulumi.Input<int?>? cpu;
  /// The size of the disk in GB.
  final pulumi.Input<int?>? disk;
  /// The amount of memory in MiB.
  final pulumi.Input<int?>? memory;

  /// Creates a new [MicrovmCheckpointSize].
  /// [cpu] The number of vCPUs.
  /// [disk] The size of the disk in GB.
  /// [memory] The amount of memory in MiB.
  const MicrovmCheckpointSize({
    this.cpu,
    this.disk,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'disk': ?disk,
      'memory': ?memory,
    };
  }

  factory MicrovmCheckpointSize.fromMap(Map<String, dynamic> map) {
    return MicrovmCheckpointSize(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      disk: (() { final guardedValue = map['disk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
