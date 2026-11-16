// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MicrovmSize {
  /// The number of vCPUs.
  final pulumi.Input<int> cpu;
  /// The size of the attached disk in GB.
  final pulumi.Input<int?>? disk;
  /// The amount of memory in MiB.
  final pulumi.Input<int> memory;

  /// Creates a new [MicrovmSize].
  /// [cpu] The number of vCPUs.
  /// [disk] The size of the attached disk in GB.
  /// [memory] The amount of memory in MiB.
  const MicrovmSize({
    required this.cpu,
    this.disk,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'disk': ?disk,
      'memory': memory,
    };
  }

  factory MicrovmSize.fromMap(Map<String, dynamic> map) {
    return MicrovmSize(
      cpu: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['cpu'])),
      disk: (() { final guardedValue = map['disk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      memory: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['memory'])),
    );
  }
}
