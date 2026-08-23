// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assets_export_job_recent_execution_result.dart';

class AssetsExportJobRecentExecution {
  /// (Output)
  /// Completion time of the export.
  final pulumi.Input<String>? endTime;
  /// (Output)
  /// Globally unique identifier of the execution.
  final pulumi.Input<String>? executionId;
  /// (Output)
  /// Expiration time for the export and artifacts.
  final pulumi.Input<String>? expireTime;
  /// (Output)
  /// Number of assets requested for export after resolving the requested
  /// filters.
  final pulumi.Input<int>? requestedAssetCount;
  /// (Output)
  /// Contains the result of the assets export.
  /// Structure is documented below.
  final pulumi.Input<List<AssetsExportJobRecentExecutionResult>>? results;
  /// (Output)
  /// Execution timestamp.
  final pulumi.Input<String>? startTime;

  /// Creates a new [AssetsExportJobRecentExecution].
  /// [endTime] (Output)
  /// [executionId] (Output)
  /// [expireTime] (Output)
  /// [requestedAssetCount] (Output)
  /// [results] (Output)
  /// [startTime] (Output)
  const AssetsExportJobRecentExecution({
    this.endTime,
    this.executionId,
    this.expireTime,
    this.requestedAssetCount,
    this.results,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'executionId': ?executionId,
      'expireTime': ?expireTime,
      'requestedAssetCount': ?requestedAssetCount,
      'results': ?pulumi.Input.mapOptionalInputValue<List<AssetsExportJobRecentExecutionResult>, List<Map<String, dynamic>>>(results, (value) => pulumi.Input.encodeList<AssetsExportJobRecentExecutionResult, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTime': ?startTime,
    };
  }

  factory AssetsExportJobRecentExecution.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobRecentExecution(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionId: (() { final guardedValue = map['executionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestedAssetCount: (() { final guardedValue = map['requestedAssetCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetsExportJobRecentExecutionResult>(guardedValue, (value) => AssetsExportJobRecentExecutionResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
