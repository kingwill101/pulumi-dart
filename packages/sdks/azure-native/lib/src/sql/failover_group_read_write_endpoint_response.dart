// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Read-write endpoint of the failover group instance.
class FailoverGroupReadWriteEndpointResponse {
  /// Failover policy of the read-write endpoint for the failover group. If failoverPolicy is Automatic then failoverWithDataLossGracePeriodMinutes is required.
  final pulumi.Input<String> failoverPolicy;
  /// Grace period before failover with data loss is attempted for the read-write endpoint. If failoverPolicy is Automatic then failoverWithDataLossGracePeriodMinutes is required.
  final pulumi.Input<int>? failoverWithDataLossGracePeriodMinutes;

  /// Creates a new [FailoverGroupReadWriteEndpointResponse].
  /// [failoverPolicy] Failover policy of the read-write endpoint for the failover group. If failoverPolicy is Automatic then failoverWithDataLossGracePeriodMinutes is required.
  /// [failoverWithDataLossGracePeriodMinutes] Grace period before failover with data loss is attempted for the read-write endpoint. If failoverPolicy is Automatic then failoverWithDataLossGracePeriodMinutes is required.
  FailoverGroupReadWriteEndpointResponse({
    required this.failoverPolicy,
    this.failoverWithDataLossGracePeriodMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverPolicy': failoverPolicy,
      'failoverWithDataLossGracePeriodMinutes': ?failoverWithDataLossGracePeriodMinutes,
    };
  }

  factory FailoverGroupReadWriteEndpointResponse.fromMap(Map<String, dynamic> map) {
    return FailoverGroupReadWriteEndpointResponse(
      failoverPolicy: (map['failoverPolicy'] as String).input(),
      failoverWithDataLossGracePeriodMinutes: map['failoverWithDataLossGracePeriodMinutes'] == null ? null : (map['failoverWithDataLossGracePeriodMinutes']! as int).input(),
    );
  }
}

