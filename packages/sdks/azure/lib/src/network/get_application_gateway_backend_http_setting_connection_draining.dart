// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayBackendHttpSettingConnectionDraining {
  /// The number of seconds connection draining is active.
  final int drainTimeoutSec;
  /// Is the Web Application Firewall enabled?
  final bool enabled;

  /// Creates a new [GetApplicationGatewayBackendHttpSettingConnectionDraining].
  /// [drainTimeoutSec] The number of seconds connection draining is active.
  /// [enabled] Is the Web Application Firewall enabled?
  GetApplicationGatewayBackendHttpSettingConnectionDraining({
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
      drainTimeoutSec: map['drainTimeoutSec'] as int,
      enabled: map['enabled'] as bool,
    );
  }
}

