// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a Memcached Node.
class NodeConfig {
  /// Number of cpus per Memcached node.
  final pulumi.Input<int> cpuCount;
  /// Memory size in MiB for each Memcached node.
  final pulumi.Input<int> memorySizeMb;

  /// Creates a new [NodeConfig].
  /// [cpuCount] Number of cpus per Memcached node.
  /// [memorySizeMb] Memory size in MiB for each Memcached node.
  const NodeConfig({
    required this.cpuCount,
    required this.memorySizeMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
      'memorySizeMb': memorySizeMb,
    };
  }

  factory NodeConfig.fromMap(Map<String, dynamic> map) {
    return NodeConfig(
      cpuCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['cpuCount'])),
      memorySizeMb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['memorySizeMb'])),
    );
  }
}
