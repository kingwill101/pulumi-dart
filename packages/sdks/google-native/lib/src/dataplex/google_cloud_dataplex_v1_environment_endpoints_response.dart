// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// URI Endpoints to access sessions associated with the Environment.
class GoogleCloudDataplexV1EnvironmentEndpointsResponse {
  /// URI to serve notebook APIs
  final pulumi.Input<String> notebooks;
  /// URI to serve SQL APIs
  final pulumi.Input<String> sql;

  /// Creates a new [GoogleCloudDataplexV1EnvironmentEndpointsResponse].
  /// [notebooks] URI to serve notebook APIs
  /// [sql] URI to serve SQL APIs
  const GoogleCloudDataplexV1EnvironmentEndpointsResponse({
    required this.notebooks,
    required this.sql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notebooks': notebooks,
      'sql': sql,
    };
  }

  factory GoogleCloudDataplexV1EnvironmentEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentEndpointsResponse(
      notebooks: pulumi.Input.fromValue(map['notebooks'] as String),
      sql: pulumi.Input.fromValue(map['sql'] as String),
    );
  }
}
