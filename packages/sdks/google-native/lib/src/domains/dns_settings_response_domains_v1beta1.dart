// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dns_response_domains_v1beta1.dart';
import 'glue_record_response_domains_v1beta1.dart';
import 'google_domains_dns_response_domains_v1beta1.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettingsResponseDomainsV1beta1 {
  /// An arbitrary DNS provider identified by its name servers.
  final pulumi.Input<CustomDnsResponseDomainsV1beta1> customDns;
  /// The list of glue records for this `Registration`. Commonly empty.
  final pulumi.Input<List<GlueRecordResponseDomainsV1beta1>> glueRecords;
  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final pulumi.Input<GoogleDomainsDnsResponseDomainsV1beta1> googleDomainsDns;

  /// Creates a new [DnsSettingsResponseDomainsV1beta1].
  /// [customDns] An arbitrary DNS provider identified by its name servers.
  /// [glueRecords] The list of glue records for this `Registration`. Commonly empty.
  /// [googleDomainsDns] Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  DnsSettingsResponseDomainsV1beta1({
    required this.customDns,
    required this.glueRecords,
    required this.googleDomainsDns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDns': pulumi.Input.mapInputValue<CustomDnsResponseDomainsV1beta1, Map<String, dynamic>>(customDns, (value) => value.toMap()),
      'glueRecords': pulumi.Input.mapInputValue<List<GlueRecordResponseDomainsV1beta1>, List<Map<String, dynamic>>>(glueRecords, (value) => pulumi.Input.encodeList<GlueRecordResponseDomainsV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'googleDomainsDns': pulumi.Input.mapInputValue<GoogleDomainsDnsResponseDomainsV1beta1, Map<String, dynamic>>(googleDomainsDns, (value) => value.toMap()),
    };
  }

  factory DnsSettingsResponseDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return DnsSettingsResponseDomainsV1beta1(
      customDns: (CustomDnsResponseDomainsV1beta1.fromMap((map['customDns'] as Map).cast<String, dynamic>())).input(),
      glueRecords: (pulumi.Input.decodeList<GlueRecordResponseDomainsV1beta1>(map['glueRecords'], (value) => GlueRecordResponseDomainsV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      googleDomainsDns: (GoogleDomainsDnsResponseDomainsV1beta1.fromMap((map['googleDomainsDns'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

