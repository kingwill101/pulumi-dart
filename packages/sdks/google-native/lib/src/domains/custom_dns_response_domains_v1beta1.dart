// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ds_record_response_domains_v1beta1.dart';

/// Configuration for an arbitrary DNS provider.
class CustomDnsResponseDomainsV1beta1 {
  /// The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  final pulumi.Input<List<DsRecordResponseDomainsV1beta1>> dsRecords;
  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  final pulumi.Input<List<String>> nameServers;

  /// Creates a new [CustomDnsResponseDomainsV1beta1].
  /// [dsRecords] The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  /// [nameServers] A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  CustomDnsResponseDomainsV1beta1({
    required this.dsRecords,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dsRecords': pulumi.Input.mapInputValue<List<DsRecordResponseDomainsV1beta1>, List<Map<String, dynamic>>>(dsRecords, (value) => pulumi.Input.encodeList<DsRecordResponseDomainsV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nameServers': nameServers,
    };
  }

  factory CustomDnsResponseDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomDnsResponseDomainsV1beta1(
      dsRecords: (pulumi.Input.decodeList<DsRecordResponseDomainsV1beta1>(map['dsRecords'], (value) => DsRecordResponseDomainsV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nameServers: ((map['nameServers'] as List).cast<String>()).input(),
    );
  }
}

