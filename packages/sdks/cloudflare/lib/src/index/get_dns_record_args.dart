// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_record_filter.dart';

/// {@template pulumi_index_get_dns_record_get_dns_record_args_doc}
/// Arguments for getDnsRecord.
/// {@endtemplate}
/// {@macro pulumi_index_get_dns_record_get_dns_record_args_doc}
class GetDnsRecordArgs {
  /// Identifier.
  final pulumi.Input<String?>? dnsRecordId;
  final pulumi.Input<GetDnsRecordFilter?>? filter;
  /// Whether to include shadow metadata in the `meta` field of each record in the response. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  final pulumi.Input<bool?>? includeShadowMetadata;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetDnsRecordArgs].
  /// [dnsRecordId] Identifier.
  /// [filter] Optional.
  /// [includeShadowMetadata] Whether to include shadow metadata in the `meta` field of each record in the response. See [Shadowed records](https://developers.cloudflare.com/dns/manage-dns-records/reference/shadowed-records).
  /// [zoneId] Identifier.
  const GetDnsRecordArgs({
    this.dnsRecordId,
    this.filter,
    this.includeShadowMetadata,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsRecordId': ?dnsRecordId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetDnsRecordFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'includeShadowMetadata': ?includeShadowMetadata,
      'zoneId': ?zoneId,
    };
  }

  factory GetDnsRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsRecordArgs(
      dnsRecordId: (() { final guardedValue = map['dnsRecordId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetDnsRecordFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeShadowMetadata: (() { final guardedValue = map['includeShadowMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
