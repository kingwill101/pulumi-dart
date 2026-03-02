// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigSoleTenantConfigNodeAffinity {
  /// .
  final pulumi.Input<String> key;
  /// .
  final pulumi.Input<String> operator;
  /// .
  final pulumi.Input<List<String>> values;

  /// Creates a new [NodePoolNodeConfigSoleTenantConfigNodeAffinity].
  /// [key] .
  /// [operator] .
  /// [values] .
  NodePoolNodeConfigSoleTenantConfigNodeAffinity({
    required this.key,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'values': values,
    };
  }

  factory NodePoolNodeConfigSoleTenantConfigNodeAffinity.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigSoleTenantConfigNodeAffinity(
      key: (map['key'] as String).input(),
      operator: (map['operator'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

