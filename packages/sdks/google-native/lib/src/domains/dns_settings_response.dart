// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dns_response.dart';
import 'glue_record_response.dart';
import 'google_domains_dns_response.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettingsResponse {
  /// An arbitrary DNS provider identified by its name servers.
  final pulumi.Input<CustomDnsResponse> customDns;

  /// The list of glue records for this `Registration`. Commonly empty.
  final pulumi.Input<List<GlueRecordResponse>> glueRecords;

  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final pulumi.Input<GoogleDomainsDnsResponse> googleDomainsDns;

  /// Creates a new [DnsSettingsResponse].
  /// [customDns] An arbitrary DNS provider identified by its name servers.
  /// [glueRecords] The list of glue records for this `Registration`. Commonly empty.
  /// [googleDomainsDns] Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  DnsSettingsResponse({
    required this.customDns,
    required this.glueRecords,
    required this.googleDomainsDns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDns':
          pulumi.Input.mapInputValue<CustomDnsResponse, Map<String, dynamic>>(
            customDns,
            (value) => value.toMap(),
          ),
      'glueRecords':
          pulumi.Input.mapInputValue<
            List<GlueRecordResponse>,
            List<Map<String, dynamic>>
          >(
            glueRecords,
            (value) =>
                pulumi.Input.encodeList<
                  GlueRecordResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'googleDomainsDns':
          pulumi.Input.mapInputValue<
            GoogleDomainsDnsResponse,
            Map<String, dynamic>
          >(googleDomainsDns, (value) => value.toMap()),
    };
  }

  factory DnsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DnsSettingsResponse(
      customDns: pulumi.Input.fromValue(
        CustomDnsResponse.fromMap(
          (map['customDns']! as Map).cast<String, dynamic>(),
        ),
      ),
      glueRecords: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GlueRecordResponse>(
          map['glueRecords']!,
          (value) => GlueRecordResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      googleDomainsDns: pulumi.Input.fromValue(
        GoogleDomainsDnsResponse.fromMap(
          (map['googleDomainsDns']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
