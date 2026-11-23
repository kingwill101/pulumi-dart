// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMicrovmSize {
  /// The number of vCPUs.
  final pulumi.Input<int> cpu;
  /// The size of the attached disk in GB.
  final pulumi.Input<int> disk;
  /// The amount of memory in MiB.
  final pulumi.Input<int> memory;

  /// Creates a new [GetMicrovmSize].
  /// [cpu] The number of vCPUs.
  /// [disk] The size of the attached disk in GB.
  /// [memory] The amount of memory in MiB.
  const GetMicrovmSize({
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

  factory GetMicrovmSize.fromMap(Map<String, dynamic> map) {
    return GetMicrovmSize(
      cpu: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['cpu'])),
      disk: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['disk'])),
      memory: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['memory'])),
    );
  }
}
