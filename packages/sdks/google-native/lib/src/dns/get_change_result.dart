// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set_response.dart';

/// Result data returned by getChange.
class GetChangeResult {
  /// Which ResourceRecordSets to add?
  final List<ResourceRecordSetResponse>? additions;
  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  final List<ResourceRecordSetResponse>? deletions;
  /// If the DNS queries for the zone will be served.
  final bool? isServing;
  final String? kind;
  /// The time that this operation was started by the server (output only). This is in RFC3339 text format.
  final String? startTime;
  /// Status of the operation (output only). A status of "done" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
  final String? status;

  /// Creates a new [GetChangeResult].
  /// [additions] Which ResourceRecordSets to add?
  /// [deletions] Which ResourceRecordSets to remove? Must match existing data exactly.
  /// [isServing] If the DNS queries for the zone will be served.
  /// [kind] Optional.
  /// [startTime] The time that this operation was started by the server (output only). This is in RFC3339 text format.
  /// [status] Status of the operation (output only). A status of "done" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
  const GetChangeResult({
    this.additions,
    this.deletions,
    this.isServing,
    this.kind,
    this.startTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additions': ?(() { final guardedValue = additions; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceRecordSetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletions': ?(() { final guardedValue = deletions; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceRecordSetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'isServing': ?isServing,
      'kind': ?kind,
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory GetChangeResult.fromMap(Map<String, dynamic> map) {
    return GetChangeResult(
      additions: (() { final guardedValue = map['additions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceRecordSetResponse>(guardedValue, (value) => ResourceRecordSetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletions: (() { final guardedValue = map['deletions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceRecordSetResponse>(guardedValue, (value) => ResourceRecordSetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      isServing: (() { final guardedValue = map['isServing']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
