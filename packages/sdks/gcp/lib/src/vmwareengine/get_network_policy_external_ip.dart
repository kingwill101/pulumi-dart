// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkPolicyExternalIp {
  /// True if the service is enabled; false otherwise.
  final pulumi.Input<bool> enabled;
  /// State of the service. New values may be added to this enum when appropriate.
  final pulumi.Input<String> state;

  /// Creates a new [GetNetworkPolicyExternalIp].
  /// [enabled] True if the service is enabled; false otherwise.
  /// [state] State of the service. New values may be added to this enum when appropriate.
  const GetNetworkPolicyExternalIp({
    required this.enabled,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'state': state,
    };
  }

  factory GetNetworkPolicyExternalIp.fromMap(Map<String, dynamic> map) {
    return GetNetworkPolicyExternalIp(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
