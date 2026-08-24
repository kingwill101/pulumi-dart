// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_dns_zone_transfers_acl_dns_zone_transfers_acl_args_doc}
/// The set of arguments for DnsZoneTransfersAcl.
/// {@endtemplate}
/// {@macro pulumi_index_dns_zone_transfers_acl_dns_zone_transfers_acl_args_doc}
class DnsZoneTransfersAclArgs {
  final pulumi.Input<String> accountId;
  /// Allowed IPv4/IPv6 address range of primary or secondary nameservers. This will be applied for the entire account. The IP range is used to allow additional NOTIFY IPs for secondary zones and IPs Cloudflare allows AXFR/IXFR requests from for primary zones. CIDRs are limited to a maximum of /24 for IPv4 and /64 for IPv6 respectively.
  final pulumi.Input<String> ipRange;
  /// The name of the acl.
  final pulumi.Input<String> name;

  /// Creates a new [DnsZoneTransfersAclArgs].
  /// [accountId] Required.
  /// [ipRange] Allowed IPv4/IPv6 address range of primary or secondary nameservers. This will be applied for the entire account. The IP range is used to allow additional NOTIFY IPs for secondary zones and IPs Cloudflare allows AXFR/IXFR requests from for primary zones. CIDRs are limited to a maximum of /24 for IPv4 and /64 for IPv6 respectively.
  /// [name] The name of the acl.
  const DnsZoneTransfersAclArgs({
    required this.accountId,
    required this.ipRange,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'ipRange': ipRange,
      'name': name,
    };
  }

  factory DnsZoneTransfersAclArgs.fromMap(Map<String, dynamic> map) {
    return DnsZoneTransfersAclArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      ipRange: pulumi.Input.fromValue(map['ipRange'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
