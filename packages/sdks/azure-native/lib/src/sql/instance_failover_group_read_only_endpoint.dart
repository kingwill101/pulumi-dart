// ignore_for_file: unused_element, unnecessary_cast


/// Read-only endpoint of the failover group instance.
class InstanceFailoverGroupReadOnlyEndpoint {
  /// Failover policy of the read-only endpoint for the failover group.
  final String? failoverPolicy;

  /// Creates a new [InstanceFailoverGroupReadOnlyEndpoint].
  /// [failoverPolicy] Failover policy of the read-only endpoint for the failover group.
  InstanceFailoverGroupReadOnlyEndpoint({
    this.failoverPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverPolicy': ?failoverPolicy,
    };
  }

  factory InstanceFailoverGroupReadOnlyEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceFailoverGroupReadOnlyEndpoint(
      failoverPolicy: map['failoverPolicy'] == null ? null : map['failoverPolicy'] as String,
    );
  }
}

