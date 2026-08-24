// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_dns_settings_zone_defaults_internal_dns.dart';
import 'get_account_dns_settings_zone_defaults_nameservers.dart';
import 'get_account_dns_settings_zone_defaults_soa.dart';

class GetAccountDnsSettingsZoneDefaults {
  /// Whether to flatten all CNAME records in the zone. Note that, due to DNS limitations, a CNAME record at the zone apex will always be flattened.
  final pulumi.Input<bool> flattenAllCnames;
  /// Whether to enable Foundation DNS Advanced Nameservers on the zone.
  final pulumi.Input<bool> foundationDns;
  /// Settings for this internal zone.
  final pulumi.Input<GetAccountDnsSettingsZoneDefaultsInternalDns> internalDns;
  /// Whether to enable multi-provider DNS, which causes Cloudflare to activate the zone even when non-Cloudflare NS records exist, and to respect NS records at the zone apex during outbound zone transfers.
  final pulumi.Input<bool> multiProvider;
  /// Settings determining the nameservers through which the zone should be available.
  final pulumi.Input<GetAccountDnsSettingsZoneDefaultsNameservers> nameservers;
  /// The time to live (TTL) of the zone's nameserver (NS) records.
  final pulumi.Input<double> nsTtl;
  /// Allows a Secondary DNS zone to use (proxied) override records and CNAME flattening at the zone apex.
  final pulumi.Input<bool> secondaryOverrides;
  /// Components of the zone's SOA record.
  final pulumi.Input<GetAccountDnsSettingsZoneDefaultsSoa> soa;
  /// Whether the zone mode is a regular or CDN/DNS only zone.
  /// Available values: "standard", "cdn*only", "dns*only".
  final pulumi.Input<String> zoneMode;

  /// Creates a new [GetAccountDnsSettingsZoneDefaults].
  /// [flattenAllCnames] Whether to flatten all CNAME records in the zone. Note that, due to DNS limitations, a CNAME record at the zone apex will always be flattened.
  /// [foundationDns] Whether to enable Foundation DNS Advanced Nameservers on the zone.
  /// [internalDns] Settings for this internal zone.
  /// [multiProvider] Whether to enable multi-provider DNS, which causes Cloudflare to activate the zone even when non-Cloudflare NS records exist, and to respect NS records at the zone apex during outbound zone transfers.
  /// [nameservers] Settings determining the nameservers through which the zone should be available.
  /// [nsTtl] The time to live (TTL) of the zone's nameserver (NS) records.
  /// [secondaryOverrides] Allows a Secondary DNS zone to use (proxied) override records and CNAME flattening at the zone apex.
  /// [soa] Components of the zone's SOA record.
  /// [zoneMode] Whether the zone mode is a regular or CDN/DNS only zone.
  const GetAccountDnsSettingsZoneDefaults({
    required this.flattenAllCnames,
    required this.foundationDns,
    required this.internalDns,
    required this.multiProvider,
    required this.nameservers,
    required this.nsTtl,
    required this.secondaryOverrides,
    required this.soa,
    required this.zoneMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flattenAllCnames': flattenAllCnames,
      'foundationDns': foundationDns,
      'internalDns': pulumi.Input.mapInputValue<GetAccountDnsSettingsZoneDefaultsInternalDns, Map<String, dynamic>>(internalDns, (value) => value.toMap()),
      'multiProvider': multiProvider,
      'nameservers': pulumi.Input.mapInputValue<GetAccountDnsSettingsZoneDefaultsNameservers, Map<String, dynamic>>(nameservers, (value) => value.toMap()),
      'nsTtl': nsTtl,
      'secondaryOverrides': secondaryOverrides,
      'soa': pulumi.Input.mapInputValue<GetAccountDnsSettingsZoneDefaultsSoa, Map<String, dynamic>>(soa, (value) => value.toMap()),
      'zoneMode': zoneMode,
    };
  }

  factory GetAccountDnsSettingsZoneDefaults.fromMap(Map<String, dynamic> map) {
    return GetAccountDnsSettingsZoneDefaults(
      flattenAllCnames: pulumi.Input.fromValue(map['flattenAllCnames'] as bool),
      foundationDns: pulumi.Input.fromValue(map['foundationDns'] as bool),
      internalDns: pulumi.Input.fromValue(GetAccountDnsSettingsZoneDefaultsInternalDns.fromMap((map['internalDns']! as Map).cast<String, dynamic>())),
      multiProvider: pulumi.Input.fromValue(map['multiProvider'] as bool),
      nameservers: pulumi.Input.fromValue(GetAccountDnsSettingsZoneDefaultsNameservers.fromMap((map['nameservers']! as Map).cast<String, dynamic>())),
      nsTtl: pulumi.Input.fromValue((map['nsTtl'] as num).toDouble()),
      secondaryOverrides: pulumi.Input.fromValue(map['secondaryOverrides'] as bool),
      soa: pulumi.Input.fromValue(GetAccountDnsSettingsZoneDefaultsSoa.fromMap((map['soa']! as Map).cast<String, dynamic>())),
      zoneMode: pulumi.Input.fromValue(map['zoneMode'] as String),
    );
  }
}
