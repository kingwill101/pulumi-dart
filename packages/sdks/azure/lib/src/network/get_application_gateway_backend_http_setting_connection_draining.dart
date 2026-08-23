// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayBackendHttpSettingConnectionDraining {
  /// The number of seconds connection draining is active.
  final pulumi.Input<int> drainTimeoutSec;
  /// Is the Web Application Firewall enabled?
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetApplicationGatewayBackendHttpSettingConnectionDraining].
  /// [drainTimeoutSec] The number of seconds connection draining is active.
  /// [enabled] Is the Web Application Firewall enabled?
  const GetApplicationGatewayBackendHttpSettingConnectionDraining({
    required this.drainTimeoutSec,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainTimeoutSec': drainTimeoutSec,
      'enabled': enabled,
    };
  }

  factory GetApplicationGatewayBackendHttpSettingConnectionDraining.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayBackendHttpSettingConnectionDraining(
      drainTimeoutSec: pulumi.Input.fromValue(map['drainTimeoutSec'] as int),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
