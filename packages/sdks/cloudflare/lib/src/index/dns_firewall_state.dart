// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_firewall_attack_mitigation.dart';

/// Input properties used for looking up and filtering DnsFirewall resources.
class DnsFirewallState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Attack mitigation settings
  final pulumi.Input<DnsFirewallAttackMitigation?>? attackMitigation;
  /// Whether to refuse to answer queries for the ANY type
  final pulumi.Input<bool?>? deprecateAnyRequests;
  /// Number of IPv4 addresses to assign to the DNS Firewall cluster. Only used during cluster creation and cannot be changed later.
  final pulumi.Input<int?>? dnsFirewallIpCount;
  final pulumi.Input<List<String>?>? dnsFirewallIps;
  /// Whether to forward client IP (resolver) subnet if no EDNS Client Subnet is sent
  final pulumi.Input<bool?>? ecsFallback;
  /// By default, Cloudflare attempts to cache responses for as long as
  /// indicated by the TTL received from upstream nameservers. This setting
  /// sets an upper bound on this duration. For caching purposes, higher TTLs
  /// will be decreased to the maximum value defined by this setting.
  final pulumi.Input<double?>? maximumCacheTtl;
  /// By default, Cloudflare attempts to cache responses for as long as
  /// indicated by the TTL received from upstream nameservers. This setting
  /// sets a lower bound on this duration. For caching purposes, lower TTLs
  /// will be increased to the minimum value defined by this setting.
  ///
  /// This setting does not affect the TTL value in the DNS response
  /// Cloudflare returns to clients. Cloudflare will always forward the TTL
  /// value received from upstream nameservers.
  ///
  /// Note that, even with this setting, there is no guarantee that a
  /// response will be cached for at least the specified duration. Cached
  /// responses may be removed earlier for capacity or other operational
  /// reasons.
  final pulumi.Input<double?>? minimumCacheTtl;
  /// Last modification of DNS Firewall cluster
  final pulumi.Input<String?>? modifiedOn;
  /// DNS Firewall cluster name
  final pulumi.Input<String?>? name;
  /// This setting controls how long DNS Firewall should cache negative
  /// responses (e.g., NXDOMAIN) from the upstream servers.
  ///
  /// This setting does not affect the TTL value in the DNS response
  /// Cloudflare returns to clients. Cloudflare will always forward the TTL
  /// value received from upstream nameservers.
  final pulumi.Input<double?>? negativeCacheTtl;
  /// Maximum number of DNS queries per second that will be forwarded to your upstream nameservers. The limit is enforced per server, where each server receives a fraction of the configured value. The actual aggregate rate for a data center may vary depending on how many servers are present. Responses served from cache do not count toward this limit. Set to null to disable rate limiting.
  final pulumi.Input<double?>? ratelimit;
  /// Number of retries for fetching DNS responses from upstream nameservers (not counting the initial attempt)
  final pulumi.Input<double?>? retries;
  final pulumi.Input<List<String>?>? upstreamIps;

  /// Creates a new [DnsFirewallState].
  /// [accountId] Identifier.
  /// [attackMitigation] Attack mitigation settings
  /// [deprecateAnyRequests] Whether to refuse to answer queries for the ANY type
  /// [dnsFirewallIpCount] Number of IPv4 addresses to assign to the DNS Firewall cluster. Only used during cluster creation and cannot be changed later.
  /// [dnsFirewallIps] Optional.
  /// [ecsFallback] Whether to forward client IP (resolver) subnet if no EDNS Client Subnet is sent
  /// [maximumCacheTtl] By default, Cloudflare attempts to cache responses for as long as
  /// [minimumCacheTtl] By default, Cloudflare attempts to cache responses for as long as
  /// [modifiedOn] Last modification of DNS Firewall cluster
  /// [name] DNS Firewall cluster name
  /// [negativeCacheTtl] This setting controls how long DNS Firewall should cache negative
  /// [ratelimit] Maximum number of DNS queries per second that will be forwarded to your upstream nameservers. The limit is enforced per server, where each server receives a fraction of the configured value. The actual aggregate rate for a data center may vary depending on how many servers are present. Responses served from cache do not count toward this limit. Set to null to disable rate limiting.
  /// [retries] Number of retries for fetching DNS responses from upstream nameservers (not counting the initial attempt)
  /// [upstreamIps] Optional.
  const DnsFirewallState({
    this.accountId,
    this.attackMitigation,
    this.deprecateAnyRequests,
    this.dnsFirewallIpCount,
    this.dnsFirewallIps,
    this.ecsFallback,
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
      'attackMitigation': ?pulumi.Input.mapOptionalInputValue<DnsFirewallAttackMitigation, Map<String, dynamic>>(attackMitigation, (value) => value.toMap()),
      'deprecateAnyRequests': ?deprecateAnyRequests,
      'dnsFirewallIpCount': ?dnsFirewallIpCount,
      'dnsFirewallIps': ?dnsFirewallIps,
      'ecsFallback': ?ecsFallback,
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

  factory DnsFirewallState.fromMap(Map<String, dynamic> map) {
    return DnsFirewallState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attackMitigation: (() { final guardedValue = map['attackMitigation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DnsFirewallAttackMitigation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deprecateAnyRequests: (() { final guardedValue = map['deprecateAnyRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsFirewallIpCount: (() { final guardedValue = map['dnsFirewallIpCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      dnsFirewallIps: (() { final guardedValue = map['dnsFirewallIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ecsFallback: (() { final guardedValue = map['ecsFallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maximumCacheTtl: (() { final guardedValue = map['maximumCacheTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      minimumCacheTtl: (() { final guardedValue = map['minimumCacheTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      negativeCacheTtl: (() { final guardedValue = map['negativeCacheTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      ratelimit: (() { final guardedValue = map['ratelimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      retries: (() { final guardedValue = map['retries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      upstreamIps: (() { final guardedValue = map['upstreamIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
