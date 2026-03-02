// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTemplateNetworkInterfaceAccessConfig {
  /// The IP address that will be 1:1 mapped to the instance's
  /// network ip. If not given, one will be generated.
  final pulumi.Input<String> natIp;
  /// The [networking tier][network-tier] used for configuring
  /// this instance template. This field can take the following values: PREMIUM or
  /// STANDARD. If this field is not specified, it is assumed to be PREMIUM.
  final pulumi.Input<String> networkTier;
  /// The DNS domain name for the public PTR record.The DNS domain name for the public PTR record.
  final pulumi.Input<String> publicPtrDomainName;

  /// Creates a new [GetInstanceTemplateNetworkInterfaceAccessConfig].
  /// [natIp] The IP address that will be 1:1 mapped to the instance's
  /// [networkTier] The [networking tier][network-tier] used for configuring
  /// [publicPtrDomainName] The DNS domain name for the public PTR record.The DNS domain name for the public PTR record.
  GetInstanceTemplateNetworkInterfaceAccessConfig({
    required this.natIp,
    required this.networkTier,
    required this.publicPtrDomainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natIp': natIp,
      'networkTier': networkTier,
      'publicPtrDomainName': publicPtrDomainName,
    };
  }

  factory GetInstanceTemplateNetworkInterfaceAccessConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateNetworkInterfaceAccessConfig(
      natIp: (map['natIp'] as String).input(),
      networkTier: (map['networkTier'] as String).input(),
      publicPtrDomainName: (map['publicPtrDomainName'] as String).input(),
    );
  }
}

