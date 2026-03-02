// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity {
  /// The default or custom node affinity label key name.
  final pulumi.Input<String> key;
  /// Specifies affinity or anti-affinity. Accepted values are `"IN"` or `"NOT_IN"`
  final pulumi.Input<String> operator;
  /// List of node affinity label values as strings.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity].
  /// [key] The default or custom node affinity label key name.
  /// [operator] Specifies affinity or anti-affinity. Accepted values are `"IN"` or `"NOT_IN"`
  /// [values] List of node affinity label values as strings.
  ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity({
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

  factory ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity(
      key: (map['key'] as String).input(),
      operator: (map['operator'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

