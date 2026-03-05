// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message containing connection draining configuration.
class ConnectionDrainingResponseComputeBeta {
  /// Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  final pulumi.Input<int> drainingTimeoutSec;

  /// Creates a new [ConnectionDrainingResponseComputeBeta].
  /// [drainingTimeoutSec] Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  ConnectionDrainingResponseComputeBeta({
    required this.drainingTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainingTimeoutSec': drainingTimeoutSec,
    };
  }

  factory ConnectionDrainingResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ConnectionDrainingResponseComputeBeta(
      drainingTimeoutSec: pulumi.Input.fromValue(map['drainingTimeoutSec'] as int),
    );
  }
}

