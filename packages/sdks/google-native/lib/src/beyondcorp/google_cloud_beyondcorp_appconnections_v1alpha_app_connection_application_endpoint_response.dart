// ignore_for_file: unused_element, unnecessary_cast


/// ApplicationEndpoint represents a remote application endpoint.
class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpointResponse {
  /// Hostname or IP address of the remote application endpoint.
  final String host;
  /// Port of the remote application endpoint.
  final int port;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpointResponse].
  /// [host] Hostname or IP address of the remote application endpoint.
  /// [port] Port of the remote application endpoint.
  GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpointResponse({
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': port,
    };
  }

  factory GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpointResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpointResponse(
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}

