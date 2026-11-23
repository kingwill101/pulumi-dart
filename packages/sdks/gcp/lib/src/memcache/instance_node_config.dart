// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceNodeConfig {
  /// Number of CPUs per node.
  final pulumi.Input<int> cpuCount;
  /// Memory size in Mebibytes for each memcache node.
  final pulumi.Input<int> memorySizeMb;

  /// Creates a new [InstanceNodeConfig].
  /// [cpuCount] Number of CPUs per node.
  /// [memorySizeMb] Memory size in Mebibytes for each memcache node.
  const InstanceNodeConfig({
    required this.cpuCount,
    required this.memorySizeMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
      'memorySizeMb': memorySizeMb,
    };
  }

  factory InstanceNodeConfig.fromMap(Map<String, dynamic> map) {
    return InstanceNodeConfig(
      cpuCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['cpuCount'])),
      memorySizeMb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['memorySizeMb'])),
    );
  }
}
