// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteDnsConfig {
  /// Alternate DNS server to be used by apps. This property replicates the WEBSITE_DNS_ALT_SERVER app setting.
  final pulumi.Input<String>? dnsAltServer;
  /// Custom time for DNS to be cached in seconds. Allowed range: 0-60. Default is 30 seconds. 0 means caching disabled.
  final pulumi.Input<int>? dnsMaxCacheTimeout;
  /// Total number of retries for dns lookup. Allowed range: 1-5. Default is 3.
  final pulumi.Input<int>? dnsRetryAttemptCount;
  /// Timeout for a single dns lookup in seconds. Allowed range: 1-30. Default is 3.
  final pulumi.Input<int>? dnsRetryAttemptTimeout;
  /// List of custom DNS servers to be used by an app for lookups. Maximum 5 dns servers can be set.
  final pulumi.Input<List<String>>? dnsServers;

  /// Creates a new [SiteDnsConfig].
  /// [dnsAltServer] Alternate DNS server to be used by apps. This property replicates the WEBSITE_DNS_ALT_SERVER app setting.
  /// [dnsMaxCacheTimeout] Custom time for DNS to be cached in seconds. Allowed range: 0-60. Default is 30 seconds. 0 means caching disabled.
  /// [dnsRetryAttemptCount] Total number of retries for dns lookup. Allowed range: 1-5. Default is 3.
  /// [dnsRetryAttemptTimeout] Timeout for a single dns lookup in seconds. Allowed range: 1-30. Default is 3.
  /// [dnsServers] List of custom DNS servers to be used by an app for lookups. Maximum 5 dns servers can be set.
  SiteDnsConfig({
    this.dnsAltServer,
    this.dnsMaxCacheTimeout,
    this.dnsRetryAttemptCount,
    this.dnsRetryAttemptTimeout,
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsAltServer': ?dnsAltServer,
      'dnsMaxCacheTimeout': ?dnsMaxCacheTimeout,
      'dnsRetryAttemptCount': ?dnsRetryAttemptCount,
      'dnsRetryAttemptTimeout': ?dnsRetryAttemptTimeout,
      'dnsServers': ?dnsServers,
    };
  }

  factory SiteDnsConfig.fromMap(Map<String, dynamic> map) {
    return SiteDnsConfig(
      dnsAltServer: map['dnsAltServer'] == null ? null : (map['dnsAltServer'] as String).input(),
      dnsMaxCacheTimeout: map['dnsMaxCacheTimeout'] == null ? null : (map['dnsMaxCacheTimeout'] as int).input(),
      dnsRetryAttemptCount: map['dnsRetryAttemptCount'] == null ? null : (map['dnsRetryAttemptCount'] as int).input(),
      dnsRetryAttemptTimeout: map['dnsRetryAttemptTimeout'] == null ? null : (map['dnsRetryAttemptTimeout'] as int).input(),
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers'] as List).cast<String>()).input(),
    );
  }
}

