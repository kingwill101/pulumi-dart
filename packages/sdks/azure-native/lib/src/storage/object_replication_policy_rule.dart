// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_replication_policy_filter.dart';

/// The replication policy rule between two containers.
class ObjectReplicationPolicyRule {
  /// Required. Destination container name.
  final pulumi.Input<String> destinationContainer;

  /// Optional. An object that defines the filter set.
  final pulumi.Input<ObjectReplicationPolicyFilter>? filters;

  /// Rule Id is auto-generated for each new rule on destination account. It is required for put policy on source account.
  final pulumi.Input<String>? ruleId;

  /// Required. Source container name.
  final pulumi.Input<String> sourceContainer;

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
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            ObjectReplicationPolicyFilter,
            Map<String, dynamic>
          >(filters, (value) => value.toMap()),
      'ruleId': ?ruleId,
      'sourceContainer': sourceContainer,
    };
  }

  factory ObjectReplicationPolicyRule.fromMap(Map<String, dynamic> map) {
    return ObjectReplicationPolicyRule(
      destinationContainer: pulumi.Input.fromValue(
        map['destinationContainer'] as String,
      ),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectReplicationPolicyFilter.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ruleId: (() {
        final guardedValue = map['ruleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceContainer: pulumi.Input.fromValue(map['sourceContainer'] as String),
    );
  }
}
