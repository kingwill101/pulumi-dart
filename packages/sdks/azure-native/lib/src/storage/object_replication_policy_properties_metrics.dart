// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The object replication policy metrics feature options.
class ObjectReplicationPolicyPropertiesMetrics {
  /// Indicates whether object replication metrics feature is enabled for the policy.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ObjectReplicationPolicyPropertiesMetrics].
  /// [enabled] Indicates whether object replication metrics feature is enabled for the policy.
  ObjectReplicationPolicyPropertiesMetrics({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ObjectReplicationPolicyPropertiesMetrics.fromMap(Map<String, dynamic> map) {
    return ObjectReplicationPolicyPropertiesMetrics(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

