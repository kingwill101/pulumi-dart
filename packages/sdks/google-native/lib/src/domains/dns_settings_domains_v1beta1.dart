// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dns_domains_v1beta1.dart';
import 'glue_record_domains_v1beta1.dart';
import 'google_domains_dns_domains_v1beta1.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettingsDomainsV1beta1 {
  /// An arbitrary DNS provider identified by its name servers.
  final pulumi.Input<CustomDnsDomainsV1beta1>? customDns;
  /// The list of glue records for this `Registration`. Commonly empty.
  final pulumi.Input<List<GlueRecordDomainsV1beta1>>? glueRecords;
  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final pulumi.Input<GoogleDomainsDnsDomainsV1beta1>? googleDomainsDns;

  /// Creates a new [DnsSettingsDomainsV1beta1].
  /// [customDns] An arbitrary DNS provider identified by its name servers.
  /// [glueRecords] The list of glue records for this `Registration`. Commonly empty.
  /// [googleDomainsDns] Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  DnsSettingsDomainsV1beta1({
    this.customDns,
    this.glueRecords,
    this.googleDomainsDns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDns': ?pulumi.Input.mapOptionalInputValue<CustomDnsDomainsV1beta1, Map<String, dynamic>>(customDns, (value) => value.toMap()),
      'glueRecords': ?pulumi.Input.mapOptionalInputValue<List<GlueRecordDomainsV1beta1>, List<Map<String, dynamic>>>(glueRecords, (value) => pulumi.Input.encodeList<GlueRecordDomainsV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'googleDomainsDns': ?pulumi.Input.mapOptionalInputValue<GoogleDomainsDnsDomainsV1beta1, Map<String, dynamic>>(googleDomainsDns, (value) => value.toMap()),
    };
  }

  factory DnsSettingsDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return DnsSettingsDomainsV1beta1(
      customDns: map['customDns'] == null ? null : (CustomDnsDomainsV1beta1.fromMap((map['customDns'] as Map).cast<String, dynamic>())).input(),
      glueRecords: map['glueRecords'] == null ? null : (pulumi.Input.decodeList<GlueRecordDomainsV1beta1>(map['glueRecords'], (value) => GlueRecordDomainsV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      googleDomainsDns: map['googleDomainsDns'] == null ? null : (GoogleDomainsDnsDomainsV1beta1.fromMap((map['googleDomainsDns'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

