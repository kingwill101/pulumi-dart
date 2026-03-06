// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters that define the retention policy for flow log.
class RetentionPolicyParametersResponse {
  /// Number of days to retain flow log records.
  final pulumi.Input<int>? days;
  /// Flag to enable/disable retention.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [RetentionPolicyParametersResponse].
  /// [days] Number of days to retain flow log records.
  /// [enabled] Flag to enable/disable retention.
  const RetentionPolicyParametersResponse({
    this.days,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'enabled': ?enabled,
    };
  }

  factory RetentionPolicyParametersResponse.fromMap(Map<String, dynamic> map) {
    return RetentionPolicyParametersResponse(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

