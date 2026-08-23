// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_duration.dart';

/// Simple policy retention.
class SimpleRetentionPolicy {
  /// Retention duration of the protection policy.
  final pulumi.Input<RetentionDuration>? retentionDuration;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'SimpleRetentionPolicy'.
  final pulumi.Input<String> retentionPolicyType;

  /// Creates a new [SimpleRetentionPolicy].
  /// [retentionDuration] Retention duration of the protection policy.
  /// [retentionPolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  const SimpleRetentionPolicy({
    this.retentionDuration,
    required this.retentionPolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDuration': ?pulumi.Input.mapOptionalInputValue<RetentionDuration, Map<String, dynamic>>(retentionDuration, (value) => value.toMap()),
      'retentionPolicyType': retentionPolicyType,
    };
  }

  factory SimpleRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return SimpleRetentionPolicy(
      retentionDuration: (() { final guardedValue = map['retentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionPolicyType: pulumi.Input.fromValue(map['retentionPolicyType'] as String),
    );
  }
}
