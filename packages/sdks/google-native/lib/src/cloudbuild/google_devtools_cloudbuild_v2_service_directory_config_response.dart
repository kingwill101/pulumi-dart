// ignore_for_file: unused_element, unnecessary_cast


/// ServiceDirectoryConfig represents Service Directory configuration for a connection.
class GoogleDevtoolsCloudbuildV2ServiceDirectoryConfigResponse {
  /// The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  /// Creates a new [GoogleDevtoolsCloudbuildV2ServiceDirectoryConfigResponse].
  /// [service] The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  GoogleDevtoolsCloudbuildV2ServiceDirectoryConfigResponse({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory GoogleDevtoolsCloudbuildV2ServiceDirectoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsCloudbuildV2ServiceDirectoryConfigResponse(
      service: map['service'] as String,
    );
  }
}

