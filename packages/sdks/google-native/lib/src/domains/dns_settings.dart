// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dns.dart';
import 'glue_record.dart';
import 'google_domains_dns.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettings {
  /// An arbitrary DNS provider identified by its name servers.
  final pulumi.Input<CustomDns>? customDns;
  /// The list of glue records for this `Registration`. Commonly empty.
  final pulumi.Input<List<GlueRecord>>? glueRecords;
  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final pulumi.Input<GoogleDomainsDns>? googleDomainsDns;

  /// Creates a new [DnsSettings].
  /// [customDns] An arbitrary DNS provider identified by its name servers.
  /// [glueRecords] The list of glue records for this `Registration`. Commonly empty.
  /// [googleDomainsDns] Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  const DnsSettings({
    this.customDns,
    this.glueRecords,
    this.googleDomainsDns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDns': ?pulumi.Input.mapOptionalInputValue<CustomDns, Map<String, dynamic>>(customDns, (value) => value.toMap()),
      'glueRecords': ?pulumi.Input.mapOptionalInputValue<List<GlueRecord>, List<Map<String, dynamic>>>(glueRecords, (value) => pulumi.Input.encodeList<GlueRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'googleDomainsDns': ?pulumi.Input.mapOptionalInputValue<GoogleDomainsDns, Map<String, dynamic>>(googleDomainsDns, (value) => value.toMap()),
    };
  }

  factory DnsSettings.fromMap(Map<String, dynamic> map) {
    return DnsSettings(
      customDns: (() { final guardedValue = map['customDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomDns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      glueRecords: (() { final guardedValue = map['glueRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlueRecord>(guardedValue, (value) => GlueRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      googleDomainsDns: (() { final guardedValue = map['googleDomainsDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDomainsDns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

