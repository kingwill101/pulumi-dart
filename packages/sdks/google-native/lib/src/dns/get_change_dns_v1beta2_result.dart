// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set_response_dns_v1beta2.dart';

/// Result data returned by getChange.
class GetChangeDnsV1beta2Result {
  /// Which ResourceRecordSets to add?
  final List<ResourceRecordSetResponseDnsV1beta2>? additions;
  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  final List<ResourceRecordSetResponseDnsV1beta2>? deletions;
  /// If the DNS queries for the zone will be served.
  final bool? isServing;
  final String? kind;
  /// The time that this operation was started by the server (output only). This is in RFC3339 text format.
  final String? startTime;
  /// Status of the operation (output only). A status of "done" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
  final String? status;

  /// Creates a new [GetChangeDnsV1beta2Result].
  /// [additions] Which ResourceRecordSets to add?
  /// [deletions] Which ResourceRecordSets to remove? Must match existing data exactly.
  /// [isServing] If the DNS queries for the zone will be served.
  /// [kind] Optional.
  /// [startTime] The time that this operation was started by the server (output only). This is in RFC3339 text format.
  /// [status] Status of the operation (output only). A status of "done" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
  const GetChangeDnsV1beta2Result({
    this.additions,
    this.deletions,
    this.isServing,
    this.kind,
    this.startTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additions': ?(() { final guardedValue = additions; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceRecordSetResponseDnsV1beta2, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletions': ?(() { final guardedValue = deletions; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceRecordSetResponseDnsV1beta2, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'isServing': ?isServing,
      'kind': ?kind,
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory GetChangeDnsV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetChangeDnsV1beta2Result(
      additions: (() { final guardedValue = map['additions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceRecordSetResponseDnsV1beta2>(guardedValue, (value) => ResourceRecordSetResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletions: (() { final guardedValue = map['deletions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceRecordSetResponseDnsV1beta2>(guardedValue, (value) => ResourceRecordSetResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())); })(),
      isServing: (() { final guardedValue = map['isServing']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
