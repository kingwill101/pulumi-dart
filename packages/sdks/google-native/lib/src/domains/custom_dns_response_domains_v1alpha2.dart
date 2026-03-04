// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ds_record_response_domains_v1alpha2.dart';

/// Configuration for an arbitrary DNS provider.
class CustomDnsResponseDomainsV1alpha2 {
  /// The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  final pulumi.Input<List<DsRecordResponseDomainsV1alpha2>> dsRecords;

  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  final pulumi.Input<List<String>> nameServers;

  /// Creates a new [CustomDnsResponseDomainsV1alpha2].
  /// [dsRecords] The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  /// [nameServers] A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  CustomDnsResponseDomainsV1alpha2({
    required this.dsRecords,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dsRecords':
          pulumi.Input.mapInputValue<
            List<DsRecordResponseDomainsV1alpha2>,
            List<Map<String, dynamic>>
          >(
            dsRecords,
            (value) =>
                pulumi.Input.encodeList<
                  DsRecordResponseDomainsV1alpha2,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'nameServers': nameServers,
    };
  }

  factory CustomDnsResponseDomainsV1alpha2.fromMap(Map<String, dynamic> map) {
    return CustomDnsResponseDomainsV1alpha2(
      dsRecords: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DsRecordResponseDomainsV1alpha2>(
          map['dsRecords']!,
          (value) => DsRecordResponseDomainsV1alpha2.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      nameServers: pulumi.Input.fromValue(
        (map['nameServers'] as List).cast<String>(),
      ),
    );
  }
}
