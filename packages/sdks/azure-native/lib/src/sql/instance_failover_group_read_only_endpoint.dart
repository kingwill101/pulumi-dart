// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Read-only endpoint of the failover group instance.
class InstanceFailoverGroupReadOnlyEndpoint {
  /// Failover policy of the read-only endpoint for the failover group.
  final pulumi.Input<String>? failoverPolicy;

  /// Creates a new [InstanceFailoverGroupReadOnlyEndpoint].
  /// [failoverPolicy] Failover policy of the read-only endpoint for the failover group.
  const InstanceFailoverGroupReadOnlyEndpoint({
    this.failoverPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverPolicy': ?failoverPolicy,
    };
  }

  factory InstanceFailoverGroupReadOnlyEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceFailoverGroupReadOnlyEndpoint(
      failoverPolicy: (() { final guardedValue = map['failoverPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

