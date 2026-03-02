// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a tool results history resource.
class ToolResultsHistoryResponse {
  /// A tool results history ID.
  final pulumi.Input<String> historyId;
  /// The cloud project that owns the tool results history.
  final pulumi.Input<String> project;

  /// Creates a new [ToolResultsHistoryResponse].
  /// [historyId] A tool results history ID.
  /// [project] The cloud project that owns the tool results history.
  ToolResultsHistoryResponse({
    required this.historyId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'historyId': historyId,
      'project': project,
    };
  }

  factory ToolResultsHistoryResponse.fromMap(Map<String, dynamic> map) {
    return ToolResultsHistoryResponse(
      historyId: (map['historyId'] as String).input(),
      project: (map['project'] as String).input(),
    );
  }
}

