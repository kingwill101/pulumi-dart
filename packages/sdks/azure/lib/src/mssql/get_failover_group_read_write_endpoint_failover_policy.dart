// ignore_for_file: unused_element, unnecessary_cast


class GetFailoverGroupReadWriteEndpointFailoverPolicy {
  /// The grace period in minutes, before failover with data loss is attempted for the read-write endpoint.
  final int graceMinutes;
  /// The failover policy of the read-write endpoint for the Failover Group.
  final String mode;

  /// Creates a new [GetFailoverGroupReadWriteEndpointFailoverPolicy].
  /// [graceMinutes] The grace period in minutes, before failover with data loss is attempted for the read-write endpoint.
  /// [mode] The failover policy of the read-write endpoint for the Failover Group.
  GetFailoverGroupReadWriteEndpointFailoverPolicy({
    required this.graceMinutes,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graceMinutes': graceMinutes,
      'mode': mode,
    };
  }

  factory GetFailoverGroupReadWriteEndpointFailoverPolicy.fromMap(Map<String, dynamic> map) {
    return GetFailoverGroupReadWriteEndpointFailoverPolicy(
      graceMinutes: map['graceMinutes'] as int,
      mode: map['mode'] as String,
    );
  }
}

