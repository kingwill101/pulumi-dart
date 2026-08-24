// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDnsZoneTransfersAclsResult {
  final pulumi.Input<String> id;
  /// Allowed IPv4/IPv6 address range of primary or secondary nameservers. This will be applied for the entire account. The IP range is used to allow additional NOTIFY IPs for secondary zones and IPs Cloudflare allows AXFR/IXFR requests from for primary zones. CIDRs are limited to a maximum of /24 for IPv4 and /64 for IPv6 respectively.
  final pulumi.Input<String> ipRange;
  /// The name of the acl.
  final pulumi.Input<String> name;

  /// Creates a new [GetDnsZoneTransfersAclsResult].
  /// [id] Required.
  /// [ipRange] Allowed IPv4/IPv6 address range of primary or secondary nameservers. This will be applied for the entire account. The IP range is used to allow additional NOTIFY IPs for secondary zones and IPs Cloudflare allows AXFR/IXFR requests from for primary zones. CIDRs are limited to a maximum of /24 for IPv4 and /64 for IPv6 respectively.
  /// [name] The name of the acl.
  const GetDnsZoneTransfersAclsResult({
    required this.id,
    required this.ipRange,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ipRange': ipRange,
      'name': name,
    };
  }

  factory GetDnsZoneTransfersAclsResult.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersAclsResult(
      id: pulumi.Input.fromValue(map['id'] as String),
      ipRange: pulumi.Input.fromValue(map['ipRange'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
