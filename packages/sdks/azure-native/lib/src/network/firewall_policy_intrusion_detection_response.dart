// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_intrusion_detection_configuration_response.dart';

/// Configuration for intrusion detection mode and rules.
class FirewallPolicyIntrusionDetectionResponse {
  /// Intrusion detection configuration properties.
  final pulumi.Input<FirewallPolicyIntrusionDetectionConfigurationResponse>? configuration;
  /// Intrusion detection general state. When attached to a parent policy, the firewall's effective IDPS mode is the stricter mode of the two.
  final pulumi.Input<String>? mode;
  /// IDPS profile name. When attached to a parent policy, the firewall's effective profile is the profile name of the parent policy.
  final pulumi.Input<String>? profile;

  /// Creates a new [FirewallPolicyIntrusionDetectionResponse].
  /// [configuration] Intrusion detection configuration properties.
  /// [mode] Intrusion detection general state. When attached to a parent policy, the firewall's effective IDPS mode is the stricter mode of the two.
  /// [profile] IDPS profile name. When attached to a parent policy, the firewall's effective profile is the profile name of the parent policy.
  const FirewallPolicyIntrusionDetectionResponse({
    this.configuration,
    this.mode,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyIntrusionDetectionConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'mode': ?mode,
      'profile': ?profile,
    };
  }

  factory FirewallPolicyIntrusionDetectionResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyIntrusionDetectionResponse(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyIntrusionDetectionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
