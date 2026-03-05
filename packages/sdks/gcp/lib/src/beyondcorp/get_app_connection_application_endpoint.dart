// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppConnectionApplicationEndpoint {
  /// Hostname or IP address of the remote application endpoint.
  final pulumi.Input<String> host;
  /// Port of the remote application endpoint.
  final pulumi.Input<int> port;

  /// Creates a new [GetAppConnectionApplicationEndpoint].
  /// [host] Hostname or IP address of the remote application endpoint.
  /// [port] Port of the remote application endpoint.
  GetAppConnectionApplicationEndpoint({
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': port,
    };
  }

  factory GetAppConnectionApplicationEndpoint.fromMap(Map<String, dynamic> map) {
    return GetAppConnectionApplicationEndpoint(
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}

