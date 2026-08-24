// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_sinks_result.dart';

/// Result data returned by getPipelineSinks.
class GetPipelineSinksInvokeResult {
  /// Specifies the public ID of the account.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filters sinks by name (case-insensitive substring).
  final String? name;
  final String? pipelineId;
  /// The items returned by the data source
  final List<GetPipelineSinksResult>? results;

  /// Creates a new [GetPipelineSinksInvokeResult].
  /// [accountId] Specifies the public ID of the account.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filters sinks by name (case-insensitive substring).
  /// [pipelineId] Optional.
  /// [results] The items returned by the data source
  const GetPipelineSinksInvokeResult({
    this.accountId,
    this.maxItems,
    this.name,
    this.pipelineId,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'name': ?name,
      'pipelineId': ?pipelineId,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPipelineSinksResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPipelineSinksInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinksInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pipelineId: (() { final guardedValue = map['pipelineId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPipelineSinksResult>(guardedValue, (value) => GetPipelineSinksResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
