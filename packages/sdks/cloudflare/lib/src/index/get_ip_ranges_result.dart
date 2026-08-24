// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIpRanges.
class GetIpRangesResult {
  /// A digest of the IP data. Useful for determining if the data has changed.
  final String? etag;
  /// List of Cloudflare IPv4 CIDR addresses.
  final List<String>? ipv4Cidrs;
  /// List of Cloudflare IPv6 CIDR addresses.
  final List<String>? ipv6Cidrs;
  /// List IPv4 and IPv6 CIDRs, only populated if `?networks=jdcloud` is used.
  final List<String>? jdcloudCidrs;
  /// Specified as `jdcloud` to list IPs used by JD Cloud data centers.
  final String? networks;

  /// Creates a new [GetIpRangesResult].
  /// [etag] A digest of the IP data. Useful for determining if the data has changed.
  /// [ipv4Cidrs] List of Cloudflare IPv4 CIDR addresses.
  /// [ipv6Cidrs] List of Cloudflare IPv6 CIDR addresses.
  /// [jdcloudCidrs] List IPv4 and IPv6 CIDRs, only populated if `?networks=jdcloud` is used.
  /// [networks] Specified as `jdcloud` to list IPs used by JD Cloud data centers.
  const GetIpRangesResult({
    this.etag,
    this.ipv4Cidrs,
    this.ipv6Cidrs,
    this.jdcloudCidrs,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'ipv4Cidrs': ?ipv4Cidrs,
      'ipv6Cidrs': ?ipv6Cidrs,
      'jdcloudCidrs': ?jdcloudCidrs,
      'networks': ?networks,
    };
  }

  factory GetIpRangesResult.fromMap(Map<String, dynamic> map) {
    return GetIpRangesResult(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4Cidrs: (() { final guardedValue = map['ipv4Cidrs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ipv6Cidrs: (() { final guardedValue = map['ipv6Cidrs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      jdcloudCidrs: (() { final guardedValue = map['jdcloudCidrs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
