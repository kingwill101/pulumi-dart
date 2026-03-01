// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ds_record_domains_v1alpha2.dart';

/// Configuration for an arbitrary DNS provider.
class CustomDnsDomainsV1alpha2 {
  /// The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  final List<DsRecordDomainsV1alpha2>? dsRecords;
  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  final List<String> nameServers;

  /// Creates a new [CustomDnsDomainsV1alpha2].
  /// [dsRecords] The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  /// [nameServers] A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  CustomDnsDomainsV1alpha2({
    this.dsRecords,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dsRecords': ?dsRecords == null ? null : pulumi.Input.encodeList<DsRecordDomainsV1alpha2, Map<String, dynamic>>(dsRecords!, (value) => value.toMap()),
      'nameServers': nameServers,
    };
  }

  factory CustomDnsDomainsV1alpha2.fromMap(Map<String, dynamic> map) {
    return CustomDnsDomainsV1alpha2(
      dsRecords: map['dsRecords'] == null ? null : pulumi.Input.decodeList<DsRecordDomainsV1alpha2>(map['dsRecords'], (value) => DsRecordDomainsV1alpha2.fromMap((value as Map).cast<String, dynamic>())),
      nameServers: (map['nameServers'] as List).cast<String>(),
    );
  }
}

