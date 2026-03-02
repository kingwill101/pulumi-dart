// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_duration_response.dart';

/// Simple policy retention.
class SimpleRetentionPolicyResponse {
  /// Retention duration of the protection policy.
  final pulumi.Input<RetentionDurationResponse>? retentionDuration;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'SimpleRetentionPolicy'.
  final pulumi.Input<String> retentionPolicyType;

  /// Creates a new [SimpleRetentionPolicyResponse].
  /// [retentionDuration] Retention duration of the protection policy.
  /// [retentionPolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  SimpleRetentionPolicyResponse({
    this.retentionDuration,
    required this.retentionPolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDuration': ?pulumi.Input.mapOptionalInputValue<RetentionDurationResponse, Map<String, dynamic>>(retentionDuration, (value) => value.toMap()),
      'retentionPolicyType': retentionPolicyType,
    };
  }

  factory SimpleRetentionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return SimpleRetentionPolicyResponse(
      retentionDuration: map['retentionDuration'] == null ? null : (RetentionDurationResponse.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>())).input(),
      retentionPolicyType: (map['retentionPolicyType'] as String).input(),
    );
  }
}

