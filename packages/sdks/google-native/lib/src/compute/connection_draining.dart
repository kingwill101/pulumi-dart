// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message containing connection draining configuration.
class ConnectionDraining {
  /// Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  final pulumi.Input<int>? drainingTimeoutSec;

  /// Creates a new [ConnectionDraining].
  /// [drainingTimeoutSec] Configures a duration timeout for existing requests on a removed backend instance. For supported load balancers and protocols, as described in Enabling connection draining.
  const ConnectionDraining({
    this.drainingTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainingTimeoutSec': ?drainingTimeoutSec,
    };
  }

  factory ConnectionDraining.fromMap(Map<String, dynamic> map) {
    return ConnectionDraining(
      drainingTimeoutSec: (() { final guardedValue = map['drainingTimeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
