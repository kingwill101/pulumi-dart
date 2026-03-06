// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of Lake and Dataproc Metastore service instance association.
class GoogleCloudDataplexV1LakeMetastoreStatusResponse {
  /// The URI of the endpoint used to access the Metastore service.
  final pulumi.Input<String> endpoint;
  /// Additional information about the current status.
  final pulumi.Input<String> message;
  /// Current state of association.
  final pulumi.Input<String> state;
  /// Last update time of the metastore status of the lake.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudDataplexV1LakeMetastoreStatusResponse].
  /// [endpoint] The URI of the endpoint used to access the Metastore service.
  /// [message] Additional information about the current status.
  /// [state] Current state of association.
  /// [updateTime] Last update time of the metastore status of the lake.
  const GoogleCloudDataplexV1LakeMetastoreStatusResponse({
    required this.endpoint,
    required this.message,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'message': message,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudDataplexV1LakeMetastoreStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1LakeMetastoreStatusResponse(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

