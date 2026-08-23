// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteDnsConfigResponse {
  /// Alternate DNS server to be used by apps. This property replicates the WEBSITE_DNS_ALT_SERVER app setting.
  final pulumi.Input<String>? dnsAltServer;
  /// Indicates that sites using Virtual network custom DNS servers are still sorting the list of DNS servers. Read-Only.
  final pulumi.Input<bool> dnsLegacySortOrder;
  /// Custom time for DNS to be cached in seconds. Allowed range: 0-60. Default is 30 seconds. 0 means caching disabled.
  final pulumi.Input<int>? dnsMaxCacheTimeout;
  /// Total number of retries for dns lookup. Allowed range: 1-5. Default is 3.
  final pulumi.Input<int>? dnsRetryAttemptCount;
  /// Timeout for a single dns lookup in seconds. Allowed range: 1-30. Default is 3.
  final pulumi.Input<int>? dnsRetryAttemptTimeout;
  /// List of custom DNS servers to be used by an app for lookups. Maximum 5 dns servers can be set.
  final pulumi.Input<List<String>>? dnsServers;

  /// Creates a new [SiteDnsConfigResponse].
  /// [dnsAltServer] Alternate DNS server to be used by apps. This property replicates the WEBSITE_DNS_ALT_SERVER app setting.
  /// [dnsLegacySortOrder] Indicates that sites using Virtual network custom DNS servers are still sorting the list of DNS servers. Read-Only.
  /// [dnsMaxCacheTimeout] Custom time for DNS to be cached in seconds. Allowed range: 0-60. Default is 30 seconds. 0 means caching disabled.
  /// [dnsRetryAttemptCount] Total number of retries for dns lookup. Allowed range: 1-5. Default is 3.
  /// [dnsRetryAttemptTimeout] Timeout for a single dns lookup in seconds. Allowed range: 1-30. Default is 3.
  /// [dnsServers] List of custom DNS servers to be used by an app for lookups. Maximum 5 dns servers can be set.
  const SiteDnsConfigResponse({
    this.dnsAltServer,
    required this.dnsLegacySortOrder,
    this.dnsMaxCacheTimeout,
    this.dnsRetryAttemptCount,
    this.dnsRetryAttemptTimeout,
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsAltServer': ?dnsAltServer,
      'dnsLegacySortOrder': dnsLegacySortOrder,
      'dnsMaxCacheTimeout': ?dnsMaxCacheTimeout,
      'dnsRetryAttemptCount': ?dnsRetryAttemptCount,
      'dnsRetryAttemptTimeout': ?dnsRetryAttemptTimeout,
      'dnsServers': ?dnsServers,
    };
  }

  factory SiteDnsConfigResponse.fromMap(Map<String, dynamic> map) {
    return SiteDnsConfigResponse(
      dnsAltServer: (() { final guardedValue = map['dnsAltServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsLegacySortOrder: pulumi.Input.fromValue(map['dnsLegacySortOrder'] as bool),
      dnsMaxCacheTimeout: (() { final guardedValue = map['dnsMaxCacheTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dnsRetryAttemptCount: (() { final guardedValue = map['dnsRetryAttemptCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dnsRetryAttemptTimeout: (() { final guardedValue = map['dnsRetryAttemptTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
