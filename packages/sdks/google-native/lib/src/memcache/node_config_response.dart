// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a Memcached Node.
class NodeConfigResponse {
  /// Number of cpus per Memcached node.
  final pulumi.Input<int> cpuCount;

  /// Memory size in MiB for each Memcached node.
  final pulumi.Input<int> memorySizeMb;

  /// Creates a new [NodeConfigResponse].
  /// [cpuCount] Number of cpus per Memcached node.
  /// [memorySizeMb] Memory size in MiB for each Memcached node.
  NodeConfigResponse({required this.cpuCount, required this.memorySizeMb});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
      'memorySizeMb': memorySizeMb,
    };
  }

  factory NodeConfigResponse.fromMap(Map<String, dynamic> map) {
    return NodeConfigResponse(
      cpuCount: pulumi.Input.fromValue(map['cpuCount'] as int),
      memorySizeMb: pulumi.Input.fromValue(map['memorySizeMb'] as int),
    );
  }
}
