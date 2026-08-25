// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkPolicyExternalIp {
  /// True if the service is enabled; false otherwise.
  final pulumi.Input<bool?>? enabled;
  /// (Output)
  /// State of the service. New values may be added to this enum when appropriate.
  final pulumi.Input<String?>? state;

  /// Creates a new [NetworkPolicyExternalIp].
  /// [enabled] True if the service is enabled; false otherwise.
  /// [state] (Output)
  const NetworkPolicyExternalIp({
    this.enabled,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'state': ?state,
    };
  }

  factory NetworkPolicyExternalIp.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyExternalIp(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
