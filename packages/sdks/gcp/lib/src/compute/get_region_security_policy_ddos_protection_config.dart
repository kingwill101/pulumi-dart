// ignore_for_file: unused_element, unnecessary_cast


class GetRegionSecurityPolicyDdosProtectionConfig {
  /// Google Cloud Armor offers the following options to help protect systems against DDoS attacks:
  /// - STANDARD: basic always-on protection for network load balancers, protocol forwarding, or VMs with public IP addresses.
  /// - ADVANCED: additional protections for Managed Protection Plus subscribers who use network load balancers, protocol forwarding, or VMs with public IP addresses.
  /// - ADVANCED_PREVIEW: flag to enable the security policy in preview mode. Possible values: ["ADVANCED", "ADVANCED_PREVIEW", "STANDARD"]
  final String ddosProtection;

  /// Creates a new [GetRegionSecurityPolicyDdosProtectionConfig].
  /// [ddosProtection] Google Cloud Armor offers the following options to help protect systems against DDoS attacks:
  GetRegionSecurityPolicyDdosProtectionConfig({
    required this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtection': ddosProtection,
    };
  }

  factory GetRegionSecurityPolicyDdosProtectionConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyDdosProtectionConfig(
      ddosProtection: map['ddosProtection'] as String,
    );
  }
}

