// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_streams_result.dart';

/// Result data returned by getPipelineStreams.
class GetPipelineStreamsInvokeResult {
  /// Specifies the public ID of the account.
  final String? accountId;
  /// Sort direction.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filters streams by name (case-insensitive substring).
  final String? name;
  /// Sorts streams by this field. Defaults to `createdAt`.
  /// Available values: "name", "createdAt".
  final String? orderBy;
  /// Specifies the public ID of the pipeline.
  final String? pipelineId;
  /// The items returned by the data source
  final List<GetPipelineStreamsResult>? results;

  /// Creates a new [GetPipelineStreamsInvokeResult].
  /// [accountId] Specifies the public ID of the account.
  /// [direction] Sort direction.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filters streams by name (case-insensitive substring).
  /// [orderBy] Sorts streams by this field. Defaults to `createdAt`.
  /// [pipelineId] Specifies the public ID of the pipeline.
  /// [results] The items returned by the data source
  const GetPipelineStreamsInvokeResult({
    this.accountId,
    this.direction,
    this.maxItems,
    this.name,
    this.orderBy,
    this.pipelineId,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'name': ?name,
      'orderBy': ?orderBy,
      'pipelineId': ?pipelineId,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPipelineStreamsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPipelineStreamsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pipelineId: (() { final guardedValue = map['pipelineId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPipelineStreamsResult>(guardedValue, (value) => GetPipelineStreamsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
