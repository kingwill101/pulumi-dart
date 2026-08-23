// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionSecurityPolicyDdosProtectionConfig {
  /// Google Cloud Armor offers the following options to help protect systems against DDoS attacks:
  /// - STANDARD: basic always-on protection for network load balancers, protocol forwarding, or VMs with public IP addresses.
  /// - ADVANCED: additional protections for Managed Protection Plus subscribers who use network load balancers, protocol forwarding, or VMs with public IP addresses.
  /// - ADVANCED_PREVIEW: flag to enable the security policy in preview mode.
  /// Possible values are: `ADVANCED`, `ADVANCED_PREVIEW`, `STANDARD`.
  final pulumi.Input<String> ddosProtection;

  /// Creates a new [RegionSecurityPolicyDdosProtectionConfig].
  /// [ddosProtection] Google Cloud Armor offers the following options to help protect systems against DDoS attacks:
  const RegionSecurityPolicyDdosProtectionConfig({
    required this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtection': ddosProtection,
    };
  }

  factory RegionSecurityPolicyDdosProtectionConfig.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyDdosProtectionConfig(
      ddosProtection: pulumi.Input.fromValue(map['ddosProtection'] as String),
    );
  }
}
