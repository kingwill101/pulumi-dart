// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ApplicationEndpoint represents a remote application endpoint.
class GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint {
  /// Hostname or IP address of the remote application endpoint.
  final pulumi.Input<String> host;
  /// Port of the remote application endpoint.
  final pulumi.Input<int> port;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint].
  /// [host] Hostname or IP address of the remote application endpoint.
  /// [port] Port of the remote application endpoint.
  const GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint({
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': port,
    };
  }

  factory GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint(
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
