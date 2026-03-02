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
  ListFirewallPolicyIdpsSignatureResult({
    this.matchingRecordsCount,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchingRecordsCount': ?matchingRecordsCount,
      'signatures': ?signatures == null ? null : pulumi.Input.encodeList<SingleQueryResultResponse, Map<String, dynamic>>(signatures!, (value) => value.toMap()),
    };
  }

  factory ListFirewallPolicyIdpsSignatureResult.fromMap(Map<String, dynamic> map) {
    return ListFirewallPolicyIdpsSignatureResult(
      matchingRecordsCount: map['matchingRecordsCount'] == null ? null : map['matchingRecordsCount']! as double,
      signatures: map['signatures'] == null ? null : pulumi.Input.decodeList<SingleQueryResultResponse>(map['signatures']!, (value) => SingleQueryResultResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

