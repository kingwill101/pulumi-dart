// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayBackendHttpSettingConnectionDraining {
  /// The number of seconds connection draining is active. Acceptable values are from `1` second to `3600` seconds.
  final pulumi.Input<int> drainTimeoutSec;

  /// If connection draining is enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ApplicationGatewayBackendHttpSettingConnectionDraining].
  /// [drainTimeoutSec] The number of seconds connection draining is active. Acceptable values are from `1` second to `3600` seconds.
  /// [enabled] If connection draining is enabled or not.
  ApplicationGatewayBackendHttpSettingConnectionDraining({
    required this.drainTimeoutSec,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainTimeoutSec': drainTimeoutSec,
      'enabled': enabled,
    };
  }

  factory ApplicationGatewayBackendHttpSettingConnectionDraining.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationGatewayBackendHttpSettingConnectionDraining(
      drainTimeoutSec: pulumi.Input.fromValue(map['drainTimeoutSec'] as int),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
