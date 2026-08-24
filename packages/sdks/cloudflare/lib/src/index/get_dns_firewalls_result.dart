// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_firewalls_result_attack_mitigation.dart';

class GetDnsFirewallsResult {
  /// Attack mitigation settings
  final pulumi.Input<GetDnsFirewallsResultAttackMitigation> attackMitigation;
  /// Whether to refuse to answer queries for the ANY type
  final pulumi.Input<bool> deprecateAnyRequests;
  final pulumi.Input<List<String>> dnsFirewallIps;
  /// Whether to forward client IP (resolver) subnet if no EDNS Client Subnet is sent
  final pulumi.Input<bool> ecsFallback;
  /// Identifier.
  final pulumi.Input<String> id;
  /// By default, Cloudflare attempts to cache responses for as long as
  /// indicated by the TTL received from upstream nameservers. This setting
  /// sets an upper bound on this duration. For caching purposes, higher TTLs
  /// will be decreased to the maximum value defined by this setting.
  final pulumi.Input<double> maximumCacheTtl;
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
  final pulumi.Input<double> minimumCacheTtl;
  /// Last modification of DNS Firewall cluster
  final pulumi.Input<String> modifiedOn;
  /// DNS Firewall cluster name
  final pulumi.Input<String> name;
  /// This setting controls how long DNS Firewall should cache negative
  /// responses (e.g., NXDOMAIN) from the upstream servers.
  ///
  /// This setting does not affect the TTL value in the DNS response
  /// Cloudflare returns to clients. Cloudflare will always forward the TTL
  /// value received from upstream nameservers.
  final pulumi.Input<double> negativeCacheTtl;
  /// Maximum number of DNS queries per second that will be forwarded to your upstream nameservers. The limit is enforced per server, where each server receives a fraction of the configured value. The actual aggregate rate for a data center may vary depending on how many servers are present. Responses served from cache do not count toward this limit. Set to null to disable rate limiting.
  final pulumi.Input<double> ratelimit;
  /// Number of retries for fetching DNS responses from upstream nameservers (not counting the initial attempt)
  final pulumi.Input<double> retries;
  final pulumi.Input<List<String>> upstreamIps;

  /// Creates a new [GetDnsFirewallsResult].
  /// [attackMitigation] Attack mitigation settings
  /// [deprecateAnyRequests] Whether to refuse to answer queries for the ANY type
  /// [dnsFirewallIps] Required.
  /// [ecsFallback] Whether to forward client IP (resolver) subnet if no EDNS Client Subnet is sent
  /// [id] Identifier.
  /// [maximumCacheTtl] By default, Cloudflare attempts to cache responses for as long as
  /// [minimumCacheTtl] By default, Cloudflare attempts to cache responses for as long as
  /// [modifiedOn] Last modification of DNS Firewall cluster
  /// [name] DNS Firewall cluster name
  /// [negativeCacheTtl] This setting controls how long DNS Firewall should cache negative
  /// [ratelimit] Maximum number of DNS queries per second that will be forwarded to your upstream nameservers. The limit is enforced per server, where each server receives a fraction of the configured value. The actual aggregate rate for a data center may vary depending on how many servers are present. Responses served from cache do not count toward this limit. Set to null to disable rate limiting.
  /// [retries] Number of retries for fetching DNS responses from upstream nameservers (not counting the initial attempt)
  /// [upstreamIps] Required.
  const GetDnsFirewallsResult({
    required this.attackMitigation,
    required this.deprecateAnyRequests,
    required this.dnsFirewallIps,
    required this.ecsFallback,
    required this.id,
    required this.maximumCacheTtl,
    required this.minimumCacheTtl,
    required this.modifiedOn,
    required this.name,
    required this.negativeCacheTtl,
    required this.ratelimit,
    required this.retries,
    required this.upstreamIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attackMitigation': pulumi.Input.mapInputValue<GetDnsFirewallsResultAttackMitigation, Map<String, dynamic>>(attackMitigation, (value) => value.toMap()),
      'deprecateAnyRequests': deprecateAnyRequests,
      'dnsFirewallIps': dnsFirewallIps,
      'ecsFallback': ecsFallback,
      'id': id,
      'maximumCacheTtl': maximumCacheTtl,
      'minimumCacheTtl': minimumCacheTtl,
      'modifiedOn': modifiedOn,
      'name': name,
      'negativeCacheTtl': negativeCacheTtl,
      'ratelimit': ratelimit,
      'retries': retries,
      'upstreamIps': upstreamIps,
    };
  }

  factory GetDnsFirewallsResult.fromMap(Map<String, dynamic> map) {
    return GetDnsFirewallsResult(
      attackMitigation: pulumi.Input.fromValue(GetDnsFirewallsResultAttackMitigation.fromMap((map['attackMitigation']! as Map).cast<String, dynamic>())),
      deprecateAnyRequests: pulumi.Input.fromValue(map['deprecateAnyRequests'] as bool),
      dnsFirewallIps: pulumi.Input.fromValue((map['dnsFirewallIps'] as List).cast<String>()),
      ecsFallback: pulumi.Input.fromValue(map['ecsFallback'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      maximumCacheTtl: pulumi.Input.fromValue((map['maximumCacheTtl'] as num).toDouble()),
      minimumCacheTtl: pulumi.Input.fromValue((map['minimumCacheTtl'] as num).toDouble()),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      negativeCacheTtl: pulumi.Input.fromValue((map['negativeCacheTtl'] as num).toDouble()),
      ratelimit: pulumi.Input.fromValue((map['ratelimit'] as num).toDouble()),
      retries: pulumi.Input.fromValue((map['retries'] as num).toDouble()),
      upstreamIps: pulumi.Input.fromValue((map['upstreamIps'] as List).cast<String>()),
    );
  }
}
