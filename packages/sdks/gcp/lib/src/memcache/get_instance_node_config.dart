// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceNodeConfig {
  /// Number of CPUs per node.
  final pulumi.Input<int> cpuCount;
  /// Memory size in Mebibytes for each memcache node.
  final pulumi.Input<int> memorySizeMb;

  /// Creates a new [GetInstanceNodeConfig].
  /// [cpuCount] Number of CPUs per node.
  /// [memorySizeMb] Memory size in Mebibytes for each memcache node.
  const GetInstanceNodeConfig({
    required this.cpuCount,
    required this.memorySizeMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
      'memorySizeMb': memorySizeMb,
    };
  }

  factory GetInstanceNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceNodeConfig(
      cpuCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['cpuCount'])),
      memorySizeMb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['memorySizeMb'])),
    );
  }
}
