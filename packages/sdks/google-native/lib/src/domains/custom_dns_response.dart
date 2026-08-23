// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ds_record_response.dart';

/// Configuration for an arbitrary DNS provider.
class CustomDnsResponse {
  /// The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  final pulumi.Input<List<DsRecordResponse>> dsRecords;
  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  final pulumi.Input<List<String>> nameServers;

  /// Creates a new [CustomDnsResponse].
  /// [dsRecords] The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  /// [nameServers] A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  const CustomDnsResponse({
    required this.dsRecords,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dsRecords': pulumi.Input.mapInputValue<List<DsRecordResponse>, List<Map<String, dynamic>>>(dsRecords, (value) => pulumi.Input.encodeList<DsRecordResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nameServers': nameServers,
    };
  }

  factory CustomDnsResponse.fromMap(Map<String, dynamic> map) {
    return CustomDnsResponse(
      dsRecords: pulumi.Input.fromValue(pulumi.Input.decodeList<DsRecordResponse>(map['dsRecords']!, (value) => DsRecordResponse.fromMap((value as Map).cast<String, dynamic>()))),
      nameServers: pulumi.Input.fromValue((map['nameServers'] as List).cast<String>()),
    );
  }
}
