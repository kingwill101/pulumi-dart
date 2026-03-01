// ignore_for_file: unused_element, unnecessary_cast


/// Status of Lake and Dataproc Metastore service instance association.
class GoogleCloudDataplexV1LakeMetastoreStatusResponse {
  /// The URI of the endpoint used to access the Metastore service.
  final String endpoint;
  /// Additional information about the current status.
  final String message;
  /// Current state of association.
  final String state;
  /// Last update time of the metastore status of the lake.
  final String updateTime;

  /// Creates a new [GoogleCloudDataplexV1LakeMetastoreStatusResponse].
  /// [endpoint] The URI of the endpoint used to access the Metastore service.
  /// [message] Additional information about the current status.
  /// [state] Current state of association.
  /// [updateTime] Last update time of the metastore status of the lake.
  GoogleCloudDataplexV1LakeMetastoreStatusResponse({
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
      endpoint: map['endpoint'] as String,
      message: map['message'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

