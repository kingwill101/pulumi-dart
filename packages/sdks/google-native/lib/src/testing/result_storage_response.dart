// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_storage_response.dart';
import 'tool_results_execution_response.dart';
import 'tool_results_history_response.dart';

/// Locations where the results of running the test are stored.
class ResultStorageResponse {
  /// Required.
  final pulumi.Input<GoogleCloudStorageResponse> googleCloudStorage;
  /// URL to the results in the Firebase Web Console.
  final pulumi.Input<String> resultsUrl;
  /// The tool results execution that results are written to.
  final pulumi.Input<ToolResultsExecutionResponse> toolResultsExecution;
  /// The tool results history that contains the tool results execution that results are written to. If not provided, the service will choose an appropriate value.
  final pulumi.Input<ToolResultsHistoryResponse> toolResultsHistory;

  /// Creates a new [ResultStorageResponse].
  /// [googleCloudStorage] Required.
  /// [resultsUrl] URL to the results in the Firebase Web Console.
  /// [toolResultsExecution] The tool results execution that results are written to.
  /// [toolResultsHistory] The tool results history that contains the tool results execution that results are written to. If not provided, the service will choose an appropriate value.
  ResultStorageResponse({
    required this.googleCloudStorage,
    required this.resultsUrl,
    required this.toolResultsExecution,
    required this.toolResultsHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleCloudStorage': pulumi.Input.mapInputValue<GoogleCloudStorageResponse, Map<String, dynamic>>(googleCloudStorage, (value) => value.toMap()),
      'resultsUrl': resultsUrl,
      'toolResultsExecution': pulumi.Input.mapInputValue<ToolResultsExecutionResponse, Map<String, dynamic>>(toolResultsExecution, (value) => value.toMap()),
      'toolResultsHistory': pulumi.Input.mapInputValue<ToolResultsHistoryResponse, Map<String, dynamic>>(toolResultsHistory, (value) => value.toMap()),
    };
  }

  factory ResultStorageResponse.fromMap(Map<String, dynamic> map) {
    return ResultStorageResponse(
      googleCloudStorage: pulumi.Input.fromValue(GoogleCloudStorageResponse.fromMap((map['googleCloudStorage']! as Map).cast<String, dynamic>())),
      resultsUrl: pulumi.Input.fromValue(map['resultsUrl'] as String),
      toolResultsExecution: pulumi.Input.fromValue(ToolResultsExecutionResponse.fromMap((map['toolResultsExecution']! as Map).cast<String, dynamic>())),
      toolResultsHistory: pulumi.Input.fromValue(ToolResultsHistoryResponse.fromMap((map['toolResultsHistory']! as Map).cast<String, dynamic>())),
    );
  }
}

