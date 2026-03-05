// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a Memcached Node.
class NodeConfigMemcacheV1beta2 {
  /// Number of cpus per Memcached node.
  final pulumi.Input<int> cpuCount;
  /// Memory size in MiB for each Memcached node.
  final pulumi.Input<int> memorySizeMb;

  /// Creates a new [NodeConfigMemcacheV1beta2].
  /// [cpuCount] Number of cpus per Memcached node.
  /// [memorySizeMb] Memory size in MiB for each Memcached node.
  NodeConfigMemcacheV1beta2({
    required this.cpuCount,
    required this.memorySizeMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
      'memorySizeMb': memorySizeMb,
    };
  }

  factory NodeConfigMemcacheV1beta2.fromMap(Map<String, dynamic> map) {
    return NodeConfigMemcacheV1beta2(
      cpuCount: pulumi.Input.fromValue(map['cpuCount'] as int),
      memorySizeMb: pulumi.Input.fromValue(map['memorySizeMb'] as int),
    );
  }
}

