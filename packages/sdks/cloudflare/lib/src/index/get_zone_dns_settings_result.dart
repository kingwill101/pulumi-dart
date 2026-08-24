// ignore_for_file: unused_element, unnecessary_cast

import 'get_zone_dns_settings_internal_dns.dart';
import 'get_zone_dns_settings_nameservers.dart';
import 'get_zone_dns_settings_soa.dart';

/// Result data returned by getZoneDnsSettings.
class GetZoneDnsSettingsResult {
  /// Whether to flatten all CNAME records in the zone. Note that, due to DNS limitations, a CNAME record at the zone apex will always be flattened.
  final bool? flattenAllCnames;
  /// Whether to enable Foundation DNS Advanced Nameservers on the zone.
  final bool? foundationDns;
  /// Settings for this internal zone.
  final GetZoneDnsSettingsInternalDns? internalDns;
  /// Whether to enable multi-provider DNS, which causes Cloudflare to activate the zone even when non-Cloudflare NS records exist, and to respect NS records at the zone apex during outbound zone transfers.
  final bool? multiProvider;
  /// Settings determining the nameservers through which the zone should be available.
  final GetZoneDnsSettingsNameservers? nameservers;
  /// The time to live (TTL) of the zone's nameserver (NS) records.
  final double? nsTtl;
  /// Allows a Secondary DNS zone to use (proxied) override records and CNAME flattening at the zone apex.
  final bool? secondaryOverrides;
  /// Components of the zone's SOA record.
  final GetZoneDnsSettingsSoa? soa;
  /// Identifier.
  final String? zoneId;
  /// Whether the zone mode is a regular or CDN/DNS only zone.
  /// Available values: "standard", "cdn*only", "dns*only".
  final String? zoneMode;

  /// Creates a new [GetZoneDnsSettingsResult].
  /// [flattenAllCnames] Whether to flatten all CNAME records in the zone. Note that, due to DNS limitations, a CNAME record at the zone apex will always be flattened.
  /// [foundationDns] Whether to enable Foundation DNS Advanced Nameservers on the zone.
  /// [internalDns] Settings for this internal zone.
  /// [multiProvider] Whether to enable multi-provider DNS, which causes Cloudflare to activate the zone even when non-Cloudflare NS records exist, and to respect NS records at the zone apex during outbound zone transfers.
  /// [nameservers] Settings determining the nameservers through which the zone should be available.
  /// [nsTtl] The time to live (TTL) of the zone's nameserver (NS) records.
  /// [secondaryOverrides] Allows a Secondary DNS zone to use (proxied) override records and CNAME flattening at the zone apex.
  /// [soa] Components of the zone's SOA record.
  /// [zoneId] Identifier.
  /// [zoneMode] Whether the zone mode is a regular or CDN/DNS only zone.
  const GetZoneDnsSettingsResult({
    this.flattenAllCnames,
    this.foundationDns,
    this.internalDns,
    this.multiProvider,
    this.nameservers,
    this.nsTtl,
    this.secondaryOverrides,
    this.soa,
    this.zoneId,
    this.zoneMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flattenAllCnames': ?flattenAllCnames,
      'foundationDns': ?foundationDns,
      'internalDns': ?internalDns?.toMap(),
      'multiProvider': ?multiProvider,
      'nameservers': ?nameservers?.toMap(),
      'nsTtl': ?nsTtl,
      'secondaryOverrides': ?secondaryOverrides,
      'soa': ?soa?.toMap(),
      'zoneId': ?zoneId,
      'zoneMode': ?zoneMode,
    };
  }

  factory GetZoneDnsSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetZoneDnsSettingsResult(
      flattenAllCnames: (() { final guardedValue = map['flattenAllCnames']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      foundationDns: (() { final guardedValue = map['foundationDns']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      internalDns: (() { final guardedValue = map['internalDns']; if (guardedValue == null) return null; return GetZoneDnsSettingsInternalDns.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      multiProvider: (() { final guardedValue = map['multiProvider']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      nameservers: (() { final guardedValue = map['nameservers']; if (guardedValue == null) return null; return GetZoneDnsSettingsNameservers.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nsTtl: (() { final guardedValue = map['nsTtl']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      secondaryOverrides: (() { final guardedValue = map['secondaryOverrides']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      soa: (() { final guardedValue = map['soa']; if (guardedValue == null) return null; return GetZoneDnsSettingsSoa.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneMode: (() { final guardedValue = map['zoneMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
