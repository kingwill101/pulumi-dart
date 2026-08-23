// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_record_set_response.dart';

/// A set of DNS record updates that you should make to allow Hosting to serve secure content in response to requests against your domain name. These updates present the current state of your domain name's DNS records when Hosting last queried them, and the desired set of records that Hosting needs to see before your custom domain can be fully active.
class DnsUpdatesResponse {
  /// The last time Hosting checked your custom domain's DNS records.
  final pulumi.Input<String> checkTime;
  /// The set of DNS records Hosting needs to serve secure content on the domain.
  final pulumi.Input<List<DnsRecordSetResponse>> desired;
  /// The set of DNS records Hosting discovered when inspecting a domain.
  final pulumi.Input<List<DnsRecordSetResponse>> discovered;

  /// Creates a new [DnsUpdatesResponse].
  /// [checkTime] The last time Hosting checked your custom domain's DNS records.
  /// [desired] The set of DNS records Hosting needs to serve secure content on the domain.
  /// [discovered] The set of DNS records Hosting discovered when inspecting a domain.
  const DnsUpdatesResponse({
    required this.checkTime,
    required this.desired,
    required this.discovered,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkTime': checkTime,
      'desired': pulumi.Input.mapInputValue<List<DnsRecordSetResponse>, List<Map<String, dynamic>>>(desired, (value) => pulumi.Input.encodeList<DnsRecordSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discovered': pulumi.Input.mapInputValue<List<DnsRecordSetResponse>, List<Map<String, dynamic>>>(discovered, (value) => pulumi.Input.encodeList<DnsRecordSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DnsUpdatesResponse.fromMap(Map<String, dynamic> map) {
    return DnsUpdatesResponse(
      checkTime: pulumi.Input.fromValue(map['checkTime'] as String),
      desired: pulumi.Input.fromValue(pulumi.Input.decodeList<DnsRecordSetResponse>(map['desired']!, (value) => DnsRecordSetResponse.fromMap((value as Map).cast<String, dynamic>()))),
      discovered: pulumi.Input.fromValue(pulumi.Input.decodeList<DnsRecordSetResponse>(map['discovered']!, (value) => DnsRecordSetResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
