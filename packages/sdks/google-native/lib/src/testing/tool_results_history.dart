// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a tool results history resource.
class ToolResultsHistory {
  /// A tool results history ID.
  final pulumi.Input<String> historyId;
  /// The cloud project that owns the tool results history.
  final pulumi.Input<String> project;

  /// Creates a new [ToolResultsHistory].
  /// [historyId] A tool results history ID.
  /// [project] The cloud project that owns the tool results history.
  const ToolResultsHistory({
    required this.historyId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'historyId': historyId,
      'project': project,
    };
  }

  factory ToolResultsHistory.fromMap(Map<String, dynamic> map) {
    return ToolResultsHistory(
      historyId: pulumi.Input.fromValue(map['historyId'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
