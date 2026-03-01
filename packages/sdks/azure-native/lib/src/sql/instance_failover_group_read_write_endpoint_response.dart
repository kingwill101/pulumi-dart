// ignore_for_file: unused_element, unnecessary_cast


/// Read-write endpoint of the failover group instance.
class InstanceFailoverGroupReadWriteEndpointResponse {
  /// Failover policy of the read-write endpoint for the failover group. If failoverPolicy is Automatic then failoverWithDataLossGracePeriodMinutes is required.
  final String failoverPolicy;
  /// Grace period before failover with data loss is attempted for the read-write endpoint. If failoverPolicy is Automatic then failoverWithDataLossGracePeriodMinutes is required.
  final int? failoverWithDataLossGracePeriodMinutes;

  /// Creates a new [InstanceFailoverGroupReadWriteEndpointResponse].
  /// [failoverPolicy] Failover policy of the read-write endpoint for the failover group. If failoverPolicy is Automatic then failoverWithDataLossGracePeriodMinutes is required.
  /// [failoverWithDataLossGracePeriodMinutes] Grace period before failover with data loss is attempted for the read-write endpoint. If failoverPolicy is Automatic then failoverWithDataLossGracePeriodMinutes is required.
  InstanceFailoverGroupReadWriteEndpointResponse({
    required this.failoverPolicy,
    this.failoverWithDataLossGracePeriodMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverPolicy': failoverPolicy,
      'failoverWithDataLossGracePeriodMinutes': ?failoverWithDataLossGracePeriodMinutes,
    };
  }

  factory InstanceFailoverGroupReadWriteEndpointResponse.fromMap(Map<String, dynamic> map) {
    return InstanceFailoverGroupReadWriteEndpointResponse(
      failoverPolicy: map['failoverPolicy'] as String,
      failoverWithDataLossGracePeriodMinutes: map['failoverWithDataLossGracePeriodMinutes'] == null ? null : map['failoverWithDataLossGracePeriodMinutes'] as int,
    );
  }
}

