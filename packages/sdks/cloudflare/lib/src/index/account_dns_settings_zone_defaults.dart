// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_dns_settings_zone_defaults_internal_dns.dart';
import 'account_dns_settings_zone_defaults_nameservers.dart';
import 'account_dns_settings_zone_defaults_soa.dart';

class AccountDnsSettingsZoneDefaults {
  /// Whether to flatten all CNAME records in the zone. Note that, due to DNS limitations, a CNAME record at the zone apex will always be flattened.
  final pulumi.Input<bool?>? flattenAllCnames;
  /// Whether to enable Foundation DNS Advanced Nameservers on the zone.
  final pulumi.Input<bool?>? foundationDns;
  /// Settings for this internal zone.
  final pulumi.Input<AccountDnsSettingsZoneDefaultsInternalDns?>? internalDns;
  /// Whether to enable multi-provider DNS, which causes Cloudflare to activate the zone even when non-Cloudflare NS records exist, and to respect NS records at the zone apex during outbound zone transfers.
  final pulumi.Input<bool?>? multiProvider;
  /// Settings determining the nameservers through which the zone should be available.
  final pulumi.Input<AccountDnsSettingsZoneDefaultsNameservers?>? nameservers;
  /// The time to live (TTL) of the zone's nameserver (NS) records.
  final pulumi.Input<double?>? nsTtl;
  /// Allows a Secondary DNS zone to use (proxied) override records and CNAME flattening at the zone apex.
  final pulumi.Input<bool?>? secondaryOverrides;
  /// Components of the zone's SOA record.
  final pulumi.Input<AccountDnsSettingsZoneDefaultsSoa?>? soa;
  /// Whether the zone mode is a regular or CDN/DNS only zone.
  /// Available values: "standard", "cdn*only", "dns*only".
  final pulumi.Input<String?>? zoneMode;

  /// Creates a new [AccountDnsSettingsZoneDefaults].
  /// [flattenAllCnames] Whether to flatten all CNAME records in the zone. Note that, due to DNS limitations, a CNAME record at the zone apex will always be flattened.
  /// [foundationDns] Whether to enable Foundation DNS Advanced Nameservers on the zone.
  /// [internalDns] Settings for this internal zone.
  /// [multiProvider] Whether to enable multi-provider DNS, which causes Cloudflare to activate the zone even when non-Cloudflare NS records exist, and to respect NS records at the zone apex during outbound zone transfers.
  /// [nameservers] Settings determining the nameservers through which the zone should be available.
  /// [nsTtl] The time to live (TTL) of the zone's nameserver (NS) records.
  /// [secondaryOverrides] Allows a Secondary DNS zone to use (proxied) override records and CNAME flattening at the zone apex.
  /// [soa] Components of the zone's SOA record.
  /// [zoneMode] Whether the zone mode is a regular or CDN/DNS only zone.
  const AccountDnsSettingsZoneDefaults({
    this.flattenAllCnames,
    this.foundationDns,
    this.internalDns,
    this.multiProvider,
    this.nameservers,
    this.nsTtl,
    this.secondaryOverrides,
    this.soa,
    this.zoneMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flattenAllCnames': ?flattenAllCnames,
      'foundationDns': ?foundationDns,
      'internalDns': ?pulumi.Input.mapOptionalInputValue<AccountDnsSettingsZoneDefaultsInternalDns, Map<String, dynamic>>(internalDns, (value) => value.toMap()),
      'multiProvider': ?multiProvider,
      'nameservers': ?pulumi.Input.mapOptionalInputValue<AccountDnsSettingsZoneDefaultsNameservers, Map<String, dynamic>>(nameservers, (value) => value.toMap()),
      'nsTtl': ?nsTtl,
      'secondaryOverrides': ?secondaryOverrides,
      'soa': ?pulumi.Input.mapOptionalInputValue<AccountDnsSettingsZoneDefaultsSoa, Map<String, dynamic>>(soa, (value) => value.toMap()),
      'zoneMode': ?zoneMode,
    };
  }

  factory AccountDnsSettingsZoneDefaults.fromMap(Map<String, dynamic> map) {
    return AccountDnsSettingsZoneDefaults(
      flattenAllCnames: (() { final guardedValue = map['flattenAllCnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      foundationDns: (() { final guardedValue = map['foundationDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      internalDns: (() { final guardedValue = map['internalDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountDnsSettingsZoneDefaultsInternalDns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multiProvider: (() { final guardedValue = map['multiProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nameservers: (() { final guardedValue = map['nameservers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountDnsSettingsZoneDefaultsNameservers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nsTtl: (() { final guardedValue = map['nsTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      secondaryOverrides: (() { final guardedValue = map['secondaryOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      soa: (() { final guardedValue = map['soa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountDnsSettingsZoneDefaultsSoa.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneMode: (() { final guardedValue = map['zoneMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
