// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppConnectionApplicationEndpoint {
  /// Hostname or IP address of the remote application endpoint.
  final pulumi.Input<String> host;
  /// Port of the remote application endpoint.
  final pulumi.Input<int> port;

  /// Creates a new [AppConnectionApplicationEndpoint].
  /// [host] Hostname or IP address of the remote application endpoint.
  /// [port] Port of the remote application endpoint.
  AppConnectionApplicationEndpoint({
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': port,
    };
  }

  factory AppConnectionApplicationEndpoint.fromMap(Map<String, dynamic> map) {
    return AppConnectionApplicationEndpoint(
      host: (map['host'] as String).input(),
      port: (map['port'] as int).input(),
    );
  }
}

