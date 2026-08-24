// ignore_for_file: unused_element, unnecessary_cast

import 'get_account_dns_settings_zone_defaults.dart';

/// Result data returned by getAccountDnsSettings.
class GetAccountDnsSettingsResult {
  /// Identifier.
  final String? accountId;
  /// When enabled, forces all proxied DNS records in the account to behave as DNS-only at the edge, regardless of each record's individual proxy setting. Note that this account-level override does not modify the records themselves; it only affects how they are served at the edge. See more on [Enforce DNS-only](https://developers.cloudflare.com/dns/proxy-status/enforce-dns-only).
  final bool? enforceDnsOnly;
  final GetAccountDnsSettingsZoneDefaults? zoneDefaults;

  /// Creates a new [GetAccountDnsSettingsResult].
  /// [accountId] Identifier.
  /// [enforceDnsOnly] When enabled, forces all proxied DNS records in the account to behave as DNS-only at the edge, regardless of each record's individual proxy setting. Note that this account-level override does not modify the records themselves; it only affects how they are served at the edge. See more on [Enforce DNS-only](https://developers.cloudflare.com/dns/proxy-status/enforce-dns-only).
  /// [zoneDefaults] Optional.
  const GetAccountDnsSettingsResult({
    this.accountId,
    this.enforceDnsOnly,
    this.zoneDefaults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'enforceDnsOnly': ?enforceDnsOnly,
      'zoneDefaults': ?zoneDefaults?.toMap(),
    };
  }

  factory GetAccountDnsSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetAccountDnsSettingsResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enforceDnsOnly: (() { final guardedValue = map['enforceDnsOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneDefaults: (() { final guardedValue = map['zoneDefaults']; if (guardedValue == null) return null; return GetAccountDnsSettingsZoneDefaults.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
