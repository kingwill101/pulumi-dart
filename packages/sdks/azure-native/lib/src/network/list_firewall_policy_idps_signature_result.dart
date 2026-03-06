// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_query_result_response.dart';

/// Result data returned by listFirewallPolicyIdpsSignature.
class ListFirewallPolicyIdpsSignatureResult {
  /// Number of total records matching the query.
  final double? matchingRecordsCount;
  /// Array containing the results of the query
  final List<SingleQueryResultResponse>? signatures;

  /// Creates a new [ListFirewallPolicyIdpsSignatureResult].
  /// [matchingRecordsCount] Number of total records matching the query.
  /// [signatures] Array containing the results of the query
  const ListFirewallPolicyIdpsSignatureResult({
    this.matchingRecordsCount,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchingRecordsCount': ?matchingRecordsCount,
      'signatures': ?(() { final guardedValue = signatures; if (guardedValue == null) return null; return pulumi.Input.encodeList<SingleQueryResultResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListFirewallPolicyIdpsSignatureResult.fromMap(Map<String, dynamic> map) {
    return ListFirewallPolicyIdpsSignatureResult(
      matchingRecordsCount: (() { final guardedValue = map['matchingRecordsCount']; if (guardedValue == null) return null; return guardedValue as double; })(),
      signatures: (() { final guardedValue = map['signatures']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SingleQueryResultResponse>(guardedValue, (value) => SingleQueryResultResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

