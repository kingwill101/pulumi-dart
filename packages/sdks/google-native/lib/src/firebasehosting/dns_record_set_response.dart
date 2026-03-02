// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_record_response.dart';
import 'status_response.dart';

/// A set of DNS records relevant to the setup and maintenance of a custom domain in Firebase Hosting.
class DnsRecordSetResponse {
  /// An error Hosting services encountered when querying your domain name's DNS records. Note: Hosting ignores `NXDOMAIN` errors, as those generally just mean that a domain name hasn't been set up yet.
  final pulumi.Input<StatusResponse> checkError;
  /// The domain name the record set pertains to.
  final pulumi.Input<String> domainName;
  /// Records on the domain.
  final pulumi.Input<List<DnsRecordResponse>> records;

  /// Creates a new [DnsRecordSetResponse].
  /// [checkError] An error Hosting services encountered when querying your domain name's DNS records. Note: Hosting ignores `NXDOMAIN` errors, as those generally just mean that a domain name hasn't been set up yet.
  /// [domainName] The domain name the record set pertains to.
  /// [records] Records on the domain.
  DnsRecordSetResponse({
    required this.checkError,
    required this.domainName,
    required this.records,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkError': pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(checkError, (value) => value.toMap()),
      'domainName': domainName,
      'records': pulumi.Input.mapInputValue<List<DnsRecordResponse>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<DnsRecordResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DnsRecordSetResponse.fromMap(Map<String, dynamic> map) {
    return DnsRecordSetResponse(
      checkError: (StatusResponse.fromMap((map['checkError'] as Map).cast<String, dynamic>())).input(),
      domainName: (map['domainName'] as String).input(),
      records: (pulumi.Input.decodeList<DnsRecordResponse>(map['records'], (value) => DnsRecordResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

