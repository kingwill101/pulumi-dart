// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDnsZoneTransfersAcl.
class GetDnsZoneTransfersAclResult {
  final String? accountId;
  final String? aclId;
  /// The ID of this resource.
  final String? id;
  /// Allowed IPv4/IPv6 address range of primary or secondary nameservers. This will be applied for the entire account. The IP range is used to allow additional NOTIFY IPs for secondary zones and IPs Cloudflare allows AXFR/IXFR requests from for primary zones. CIDRs are limited to a maximum of /24 for IPv4 and /64 for IPv6 respectively.
  final String? ipRange;
  /// The name of the acl.
  final String? name;

  /// Creates a new [GetDnsZoneTransfersAclResult].
  /// [accountId] Optional.
  /// [aclId] Optional.
  /// [id] The ID of this resource.
  /// [ipRange] Allowed IPv4/IPv6 address range of primary or secondary nameservers. This will be applied for the entire account. The IP range is used to allow additional NOTIFY IPs for secondary zones and IPs Cloudflare allows AXFR/IXFR requests from for primary zones. CIDRs are limited to a maximum of /24 for IPv4 and /64 for IPv6 respectively.
  /// [name] The name of the acl.
  const GetDnsZoneTransfersAclResult({
    this.accountId,
    this.aclId,
    this.id,
    this.ipRange,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'aclId': ?aclId,
      'id': ?id,
      'ipRange': ?ipRange,
      'name': ?name,
    };
  }

  factory GetDnsZoneTransfersAclResult.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersAclResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aclId: (() { final guardedValue = map['aclId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipRange: (() { final guardedValue = map['ipRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
