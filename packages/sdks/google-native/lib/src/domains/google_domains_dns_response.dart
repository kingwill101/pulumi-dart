// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ds_record_response.dart';

/// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) Configuration for using the free DNS zone provided by Google Domains as a `Registration`'s `dns_provider`. You cannot configure the DNS zone itself using the API. To configure the DNS zone, go to [Google Domains](https://domains.google/).
class GoogleDomainsDnsResponse {
  /// The list of DS records published for this domain. The list is automatically populated when `ds_state` is `DS_RECORDS_PUBLISHED`, otherwise it remains empty.
  final pulumi.Input<List<DsRecordResponse>> dsRecords;

  /// The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
  final pulumi.Input<String> dsState;

  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format. This field is automatically populated with the name servers assigned to the Google Domains DNS zone.
  final pulumi.Input<List<String>> nameServers;

  /// Creates a new [GoogleDomainsDnsResponse].
  /// [dsRecords] The list of DS records published for this domain. The list is automatically populated when `ds_state` is `DS_RECORDS_PUBLISHED`, otherwise it remains empty.
  /// [dsState] The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
  /// [nameServers] A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format. This field is automatically populated with the name servers assigned to the Google Domains DNS zone.
  GoogleDomainsDnsResponse({
    required this.dsRecords,
    required this.dsState,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dsRecords':
          pulumi.Input.mapInputValue<
            List<DsRecordResponse>,
            List<Map<String, dynamic>>
          >(
            dsRecords,
            (value) =>
                pulumi.Input.encodeList<DsRecordResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'dsState': dsState,
      'nameServers': nameServers,
    };
  }

  factory GoogleDomainsDnsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDomainsDnsResponse(
      dsRecords: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DsRecordResponse>(
          map['dsRecords']!,
          (value) =>
              DsRecordResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      dsState: pulumi.Input.fromValue(map['dsState'] as String),
      nameServers: pulumi.Input.fromValue(
        (map['nameServers'] as List).cast<String>(),
      ),
    );
  }
}
