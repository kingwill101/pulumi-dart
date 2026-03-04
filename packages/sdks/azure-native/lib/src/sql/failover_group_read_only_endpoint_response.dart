// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Read-only endpoint of the failover group instance.
class FailoverGroupReadOnlyEndpointResponse {
  /// Failover policy of the read-only endpoint for the failover group.
  final pulumi.Input<String>? failoverPolicy;

  /// The target partner server where the read-only endpoint points to.
  final pulumi.Input<String>? targetServer;

  /// Creates a new [FailoverGroupReadOnlyEndpointResponse].
  /// [failoverPolicy] Failover policy of the read-only endpoint for the failover group.
  /// [targetServer] The target partner server where the read-only endpoint points to.
  FailoverGroupReadOnlyEndpointResponse({
    this.failoverPolicy,
    this.targetServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverPolicy': ?failoverPolicy,
      'targetServer': ?targetServer,
    };
  }

  factory FailoverGroupReadOnlyEndpointResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return FailoverGroupReadOnlyEndpointResponse(
      failoverPolicy: (() {
        final guardedValue = map['failoverPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetServer: (() {
        final guardedValue = map['targetServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
