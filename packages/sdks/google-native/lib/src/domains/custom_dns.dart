// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ds_record.dart';

/// Configuration for an arbitrary DNS provider.
class CustomDns {
  /// The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  final pulumi.Input<List<DsRecord>>? dsRecords;
  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  final pulumi.Input<List<String>> nameServers;

  /// Creates a new [CustomDns].
  /// [dsRecords] The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  /// [nameServers] A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  const CustomDns({
    this.dsRecords,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dsRecords': ?pulumi.Input.mapOptionalInputValue<List<DsRecord>, List<Map<String, dynamic>>>(dsRecords, (value) => pulumi.Input.encodeList<DsRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nameServers': nameServers,
    };
  }

  factory CustomDns.fromMap(Map<String, dynamic> map) {
    return CustomDns(
      dsRecords: (() { final guardedValue = map['dsRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DsRecord>(guardedValue, (value) => DsRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nameServers: pulumi.Input.fromValue((map['nameServers'] as List).cast<String>()),
    );
  }
}

