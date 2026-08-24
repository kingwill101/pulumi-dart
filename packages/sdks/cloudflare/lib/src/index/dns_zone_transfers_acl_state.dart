// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DnsZoneTransfersAcl resources.
class DnsZoneTransfersAclState {
  final pulumi.Input<String?>? accountId;
  /// Allowed IPv4/IPv6 address range of primary or secondary nameservers. This will be applied for the entire account. The IP range is used to allow additional NOTIFY IPs for secondary zones and IPs Cloudflare allows AXFR/IXFR requests from for primary zones. CIDRs are limited to a maximum of /24 for IPv4 and /64 for IPv6 respectively.
  final pulumi.Input<String?>? ipRange;
  /// The name of the acl.
  final pulumi.Input<String?>? name;

  /// Creates a new [DnsZoneTransfersAclState].
  /// [accountId] Optional.
  /// [ipRange] Allowed IPv4/IPv6 address range of primary or secondary nameservers. This will be applied for the entire account. The IP range is used to allow additional NOTIFY IPs for secondary zones and IPs Cloudflare allows AXFR/IXFR requests from for primary zones. CIDRs are limited to a maximum of /24 for IPv4 and /64 for IPv6 respectively.
  /// [name] The name of the acl.
  const DnsZoneTransfersAclState({
    this.accountId,
    this.ipRange,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'ipRange': ?ipRange,
      'name': ?name,
    };
  }

  factory DnsZoneTransfersAclState.fromMap(Map<String, dynamic> map) {
    return DnsZoneTransfersAclState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRange: (() { final guardedValue = map['ipRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
