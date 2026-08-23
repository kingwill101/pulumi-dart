// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data type which is created by the connector,
/// including a query indicated when was the last time that data type was received in the workspace.
class ConnectorDataTypeResponse {
  /// Gets or sets the query to indicate when relevant data was last received in the workspace.
  final pulumi.Input<String> lastDataReceivedQuery;
  /// Gets or sets the name of the data type to show in the graph.
  final pulumi.Input<String> name;

  /// Creates a new [ConnectorDataTypeResponse].
  /// [lastDataReceivedQuery] Gets or sets the query to indicate when relevant data was last received in the workspace.
  /// [name] Gets or sets the name of the data type to show in the graph.
  const ConnectorDataTypeResponse({
    required this.lastDataReceivedQuery,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastDataReceivedQuery': lastDataReceivedQuery,
      'name': name,
    };
  }

  factory ConnectorDataTypeResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorDataTypeResponse(
      lastDataReceivedQuery: pulumi.Input.fromValue(map['lastDataReceivedQuery'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
