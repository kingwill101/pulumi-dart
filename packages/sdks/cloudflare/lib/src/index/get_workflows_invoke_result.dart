// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workflows_result.dart';

/// Result data returned by getWorkflows.
class GetWorkflowsInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetWorkflowsResult>? results;
  /// Allows filtering workflows` name.
  final String? search;

  /// Creates a new [GetWorkflowsInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [search] Allows filtering workflows` name.
  const GetWorkflowsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkflowsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
    };
  }

  factory GetWorkflowsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkflowsResult>(guardedValue, (value) => GetWorkflowsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
