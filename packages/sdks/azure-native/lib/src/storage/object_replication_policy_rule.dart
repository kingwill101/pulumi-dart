// ignore_for_file: unused_element, unnecessary_cast

import 'object_replication_policy_filter.dart';

/// The replication policy rule between two containers.
class ObjectReplicationPolicyRule {
  /// Required. Destination container name.
  final String destinationContainer;
  /// Optional. An object that defines the filter set.
  final ObjectReplicationPolicyFilter? filters;
  /// Rule Id is auto-generated for each new rule on destination account. It is required for put policy on source account.
  final String? ruleId;
  /// Required. Source container name.
  final String sourceContainer;

  /// Creates a new [ObjectReplicationPolicyRule].
  /// [destinationContainer] Required. Destination container name.
  /// [filters] Optional. An object that defines the filter set.
  /// [ruleId] Rule Id is auto-generated for each new rule on destination account. It is required for put policy on source account.
  /// [sourceContainer] Required. Source container name.
  ObjectReplicationPolicyRule({
    required this.destinationContainer,
    this.filters,
    this.ruleId,
    required this.sourceContainer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationContainer': destinationContainer,
      'filters': ?filters == null ? null : filters!.toMap(),
      'ruleId': ?ruleId,
      'sourceContainer': sourceContainer,
    };
  }

  factory ObjectReplicationPolicyRule.fromMap(Map<String, dynamic> map) {
    return ObjectReplicationPolicyRule(
      destinationContainer: map['destinationContainer'] as String,
      filters: map['filters'] == null ? null : ObjectReplicationPolicyFilter.fromMap((map['filters'] as Map).cast<String, dynamic>()),
      ruleId: map['ruleId'] == null ? null : map['ruleId'] as String,
      sourceContainer: map['sourceContainer'] as String,
    );
  }
}

