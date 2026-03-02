// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_intrusion_detection_configuration.dart';

/// Configuration for intrusion detection mode and rules.
class FirewallPolicyIntrusionDetection {
  /// Intrusion detection configuration properties.
  final pulumi.Input<FirewallPolicyIntrusionDetectionConfiguration>? configuration;
  /// Intrusion detection general state. When attached to a parent policy, the firewall's effective IDPS mode is the stricter mode of the two.
  final pulumi.Input<String>? mode;
  /// IDPS profile name. When attached to a parent policy, the firewall's effective profile is the profile name of the parent policy.
  final pulumi.Input<String>? profile;

  /// Creates a new [FirewallPolicyIntrusionDetection].
  /// [configuration] Intrusion detection configuration properties.
  /// [mode] Intrusion detection general state. When attached to a parent policy, the firewall's effective IDPS mode is the stricter mode of the two.
  /// [profile] IDPS profile name. When attached to a parent policy, the firewall's effective profile is the profile name of the parent policy.
  FirewallPolicyIntrusionDetection({
    this.configuration,
    this.mode,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyIntrusionDetectionConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'mode': ?mode,
      'profile': ?profile,
    };
  }

  factory FirewallPolicyIntrusionDetection.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyIntrusionDetection(
      configuration: map['configuration'] == null ? null : (FirewallPolicyIntrusionDetectionConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      profile: map['profile'] == null ? null : (map['profile']! as String).input(),
    );
  }
}

