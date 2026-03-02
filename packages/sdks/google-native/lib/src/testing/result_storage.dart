// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_storage.dart';
import 'tool_results_history.dart';

/// Locations where the results of running the test are stored.
class ResultStorage {
  /// Required.
  final pulumi.Input<GoogleCloudStorage> googleCloudStorage;
  /// The tool results history that contains the tool results execution that results are written to. If not provided, the service will choose an appropriate value.
  final pulumi.Input<ToolResultsHistory>? toolResultsHistory;

  /// Creates a new [ResultStorage].
  /// [googleCloudStorage] Required.
  /// [toolResultsHistory] The tool results history that contains the tool results execution that results are written to. If not provided, the service will choose an appropriate value.
  ResultStorage({
    required this.googleCloudStorage,
    this.toolResultsHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleCloudStorage': pulumi.Input.mapInputValue<GoogleCloudStorage, Map<String, dynamic>>(googleCloudStorage, (value) => value.toMap()),
      'toolResultsHistory': ?pulumi.Input.mapOptionalInputValue<ToolResultsHistory, Map<String, dynamic>>(toolResultsHistory, (value) => value.toMap()),
    };
  }

  factory ResultStorage.fromMap(Map<String, dynamic> map) {
    return ResultStorage(
      googleCloudStorage: (GoogleCloudStorage.fromMap((map['googleCloudStorage'] as Map).cast<String, dynamic>())).input(),
      toolResultsHistory: map['toolResultsHistory'] == null ? null : (ToolResultsHistory.fromMap((map['toolResultsHistory'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

