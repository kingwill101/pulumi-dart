// ignore_for_file: unused_element, unnecessary_cast

import 'get_dns_firewall_attack_mitigation.dart';

/// Result data returned by getDnsFirewall.
class GetDnsFirewallResult {
  /// Identifier.
  final String? accountId;
  /// Attack mitigation settings
  final GetDnsFirewallAttackMitigation? attackMitigation;
  /// Whether to refuse to answer queries for the ANY type
  final bool? deprecateAnyRequests;
  /// Identifier.
  final String? dnsFirewallId;
  final List<String>? dnsFirewallIps;
  /// Whether to forward client IP (resolver) subnet if no EDNS Client Subnet is sent
  final bool? ecsFallback;
  /// Identifier.
  final String? id;
  /// By default, Cloudflare attempts to cache responses for as long as
  /// indicated by the TTL received from upstream nameservers. This setting
  /// sets an upper bound on this duration. For caching purposes, higher TTLs
  /// will be decreased to the maximum value defined by this setting.
  final double? maximumCacheTtl;
  final double? minimumCacheTtl;
  final String? modifiedOn;
  final String? name;
  final double? negativeCacheTtl;
  final double? ratelimit;
  final double? retries;
  final List<String>? upstreamIps;

  /// Creates a new [GetDnsFirewallResult].
  /// [accountId] Identifier.
  /// [attackMitigation] Attack mitigation settings
  /// [deprecateAnyRequests] Whether to refuse to answer queries for the ANY type
  /// [dnsFirewallId] Identifier.
  /// [dnsFirewallIps] Optional.
  /// [ecsFallback] Whether to forward client IP (resolver) subnet if no EDNS Client Subnet is sent
  /// [id] Identifier.
  /// [maximumCacheTtl] By default, Cloudflare attempts to cache responses for as long as
  /// [minimumCacheTtl] Optional.
  /// [modifiedOn] Optional.
  /// [name] Optional.
  /// [negativeCacheTtl] Optional.
  /// [ratelimit] Optional.
  /// [retries] Optional.
  /// [upstreamIps] Optional.
  const GetDnsFirewallResult({
    this.accountId,
    this.attackMitigation,
    this.deprecateAnyRequests,
    this.dnsFirewallId,
    this.dnsFirewallIps,
    this.ecsFallback,
    this.id,
    this.maximumCacheTtl,
    this.minimumCacheTtl,
    this.modifiedOn,
    this.name,
    this.negativeCacheTtl,
    this.ratelimit,
    this.retries,
    this.upstreamIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'attackMitigation': ?attackMitigation?.toMap(),
      'deprecateAnyRequests': ?deprecateAnyRequests,
      'dnsFirewallId': ?dnsFirewallId,
      'dnsFirewallIps': ?dnsFirewallIps,
      'ecsFallback': ?ecsFallback,
      'id': ?id,
      'maximumCacheTtl': ?maximumCacheTtl,
      'minimumCacheTtl': ?minimumCacheTtl,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'negativeCacheTtl': ?negativeCacheTtl,
      'ratelimit': ?ratelimit,
      'retries': ?retries,
      'upstreamIps': ?upstreamIps,
    };
  }

  factory GetDnsFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetDnsFirewallResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attackMitigation: (() { final guardedValue = map['attackMitigation']; if (guardedValue == null) return null; return GetDnsFirewallAttackMitigation.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deprecateAnyRequests: (() { final guardedValue = map['deprecateAnyRequests']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dnsFirewallId: (() { final guardedValue = map['dnsFirewallId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsFirewallIps: (() { final guardedValue = map['dnsFirewallIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ecsFallback: (() { final guardedValue = map['ecsFallback']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maximumCacheTtl: (() { final guardedValue = map['maximumCacheTtl']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      minimumCacheTtl: (() { final guardedValue = map['minimumCacheTtl']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      negativeCacheTtl: (() { final guardedValue = map['negativeCacheTtl']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      ratelimit: (() { final guardedValue = map['ratelimit']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      retries: (() { final guardedValue = map['retries']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      upstreamIps: (() { final guardedValue = map['upstreamIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
