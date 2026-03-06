// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigSoleTenantConfigNodeAffinity {
  /// .
  final pulumi.Input<String> key;
  /// .
  final pulumi.Input<String> operator;
  /// .
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetClusterNodeConfigSoleTenantConfigNodeAffinity].
  /// [key] .
  /// [operator] .
  /// [values] .
  const GetClusterNodeConfigSoleTenantConfigNodeAffinity({
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

  factory GetClusterNodeConfigSoleTenantConfigNodeAffinity.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigSoleTenantConfigNodeAffinity(
      key: pulumi.Input.fromValue(map['key'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

