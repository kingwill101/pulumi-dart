// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_dns_settings_zone_defaults.dart';

/// Input properties used for looking up and filtering AccountDnsSettings resources.
class AccountDnsSettingsState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// When enabled, forces all proxied DNS records in the account to behave as DNS-only at the edge, regardless of each record's individual proxy setting. Note that this account-level override does not modify the records themselves; it only affects how they are served at the edge. See more on [Enforce DNS-only](https://developers.cloudflare.com/dns/proxy-status/enforce-dns-only).
  final pulumi.Input<bool?>? enforceDnsOnly;
  final pulumi.Input<AccountDnsSettingsZoneDefaults?>? zoneDefaults;

  /// Creates a new [AccountDnsSettingsState].
  /// [accountId] Identifier.
  /// [enforceDnsOnly] When enabled, forces all proxied DNS records in the account to behave as DNS-only at the edge, regardless of each record's individual proxy setting. Note that this account-level override does not modify the records themselves; it only affects how they are served at the edge. See more on [Enforce DNS-only](https://developers.cloudflare.com/dns/proxy-status/enforce-dns-only).
  /// [zoneDefaults] Optional.
  const AccountDnsSettingsState({
    this.accountId,
    this.enforceDnsOnly,
    this.zoneDefaults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'enforceDnsOnly': ?enforceDnsOnly,
      'zoneDefaults': ?pulumi.Input.mapOptionalInputValue<AccountDnsSettingsZoneDefaults, Map<String, dynamic>>(zoneDefaults, (value) => value.toMap()),
    };
  }

  factory AccountDnsSettingsState.fromMap(Map<String, dynamic> map) {
    return AccountDnsSettingsState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforceDnsOnly: (() { final guardedValue = map['enforceDnsOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneDefaults: (() { final guardedValue = map['zoneDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountDnsSettingsZoneDefaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
