// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Read-only endpoint of the failover group instance.
class InstanceFailoverGroupReadOnlyEndpointResponse {
  /// Failover policy of the read-only endpoint for the failover group.
  final pulumi.Input<String>? failoverPolicy;

  /// Creates a new [InstanceFailoverGroupReadOnlyEndpointResponse].
  /// [failoverPolicy] Failover policy of the read-only endpoint for the failover group.
  InstanceFailoverGroupReadOnlyEndpointResponse({
    this.failoverPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverPolicy': ?failoverPolicy,
    };
  }

  factory InstanceFailoverGroupReadOnlyEndpointResponse.fromMap(Map<String, dynamic> map) {
    return InstanceFailoverGroupReadOnlyEndpointResponse(
      failoverPolicy: map['failoverPolicy'] == null ? null : (map['failoverPolicy']! as String).input(),
    );
  }
}

