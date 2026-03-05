// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A widget that displays a stream of log.
class LogsPanelResponse {
  /// A filter that chooses which log entries to return. See Advanced Logs Queries (https://cloud.google.com/logging/docs/view/advanced-queries). Only log entries that match the filter are returned. An empty filter matches all log entries.
  final pulumi.Input<String> filter;
  /// The names of logging resources to collect logs for. Currently only projects are supported. If empty, the widget will default to the host project.
  final pulumi.Input<List<String>> resourceNames;

  /// Creates a new [LogsPanelResponse].
  /// [filter] A filter that chooses which log entries to return. See Advanced Logs Queries (https://cloud.google.com/logging/docs/view/advanced-queries). Only log entries that match the filter are returned. An empty filter matches all log entries.
  /// [resourceNames] The names of logging resources to collect logs for. Currently only projects are supported. If empty, the widget will default to the host project.
  LogsPanelResponse({
    required this.filter,
    required this.resourceNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'resourceNames': resourceNames,
    };
  }

  factory LogsPanelResponse.fromMap(Map<String, dynamic> map) {
    return LogsPanelResponse(
      filter: pulumi.Input.fromValue(map['filter'] as String),
      resourceNames: pulumi.Input.fromValue((map['resourceNames'] as List).cast<String>()),
    );
  }
}

