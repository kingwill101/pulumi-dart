// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_deployments_result.dart';

/// Result data returned by getWorkersDeployments.
class GetWorkersDeploymentsInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetWorkersDeploymentsResult>? results;
  /// Name of the script.
  final String? scriptName;
  /// Start of the deployment creation time range, inclusive.
  final String? since;
  /// End of the deployment creation time range, inclusive.
  final String? until;

  /// Creates a new [GetWorkersDeploymentsInvokeResult].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [scriptName] Name of the script.
  /// [since] Start of the deployment creation time range, inclusive.
  /// [until] End of the deployment creation time range, inclusive.
  const GetWorkersDeploymentsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
    this.scriptName,
    this.since,
    this.until,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkersDeploymentsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scriptName': ?scriptName,
      'since': ?since,
      'until': ?until,
    };
  }

  factory GetWorkersDeploymentsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersDeploymentsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkersDeploymentsResult>(guardedValue, (value) => GetWorkersDeploymentsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      since: (() { final guardedValue = map['since']; if (guardedValue == null) return null; return guardedValue as String; })(),
      until: (() { final guardedValue = map['until']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
