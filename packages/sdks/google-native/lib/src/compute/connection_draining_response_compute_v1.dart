// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message containing connection draining configuration.
class ConnectionDrainingResponseComputeV1 {
  /// Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  final pulumi.Input<int> drainingTimeoutSec;

  /// Creates a new [ConnectionDrainingResponseComputeV1].
  /// [drainingTimeoutSec] Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  const ConnectionDrainingResponseComputeV1({
    required this.drainingTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainingTimeoutSec': drainingTimeoutSec,
    };
  }

  factory ConnectionDrainingResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ConnectionDrainingResponseComputeV1(
      drainingTimeoutSec: pulumi.Input.fromValue(map['drainingTimeoutSec'] as int),
    );
  }
}

