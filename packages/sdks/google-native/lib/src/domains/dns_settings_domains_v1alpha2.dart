// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dns_domains_v1alpha2.dart';
import 'glue_record_domains_v1alpha2.dart';
import 'google_domains_dns_domains_v1alpha2.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettingsDomainsV1alpha2 {
  /// An arbitrary DNS provider identified by its name servers.
  final pulumi.Input<CustomDnsDomainsV1alpha2>? customDns;
  /// The list of glue records for this `Registration`. Commonly empty.
  final pulumi.Input<List<GlueRecordDomainsV1alpha2>>? glueRecords;
  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final pulumi.Input<GoogleDomainsDnsDomainsV1alpha2>? googleDomainsDns;

  /// Creates a new [DnsSettingsDomainsV1alpha2].
  /// [customDns] An arbitrary DNS provider identified by its name servers.
  /// [glueRecords] The list of glue records for this `Registration`. Commonly empty.
  /// [googleDomainsDns] Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  DnsSettingsDomainsV1alpha2({
    this.customDns,
    this.glueRecords,
    this.googleDomainsDns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDns': ?pulumi.Input.mapOptionalInputValue<CustomDnsDomainsV1alpha2, Map<String, dynamic>>(customDns, (value) => value.toMap()),
      'glueRecords': ?pulumi.Input.mapOptionalInputValue<List<GlueRecordDomainsV1alpha2>, List<Map<String, dynamic>>>(glueRecords, (value) => pulumi.Input.encodeList<GlueRecordDomainsV1alpha2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'googleDomainsDns': ?pulumi.Input.mapOptionalInputValue<GoogleDomainsDnsDomainsV1alpha2, Map<String, dynamic>>(googleDomainsDns, (value) => value.toMap()),
    };
  }

  factory DnsSettingsDomainsV1alpha2.fromMap(Map<String, dynamic> map) {
    return DnsSettingsDomainsV1alpha2(
      customDns: map['customDns'] == null ? null : (CustomDnsDomainsV1alpha2.fromMap((map['customDns'] as Map).cast<String, dynamic>())).input(),
      glueRecords: map['glueRecords'] == null ? null : (pulumi.Input.decodeList<GlueRecordDomainsV1alpha2>(map['glueRecords'], (value) => GlueRecordDomainsV1alpha2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      googleDomainsDns: map['googleDomainsDns'] == null ? null : (GoogleDomainsDnsDomainsV1alpha2.fromMap((map['googleDomainsDns'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

