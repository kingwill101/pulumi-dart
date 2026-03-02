// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupContainerLivenessProbeHttpGet {
  /// A map of HTTP headers used to access on the container. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? httpHeaders;
  /// Path to access on the HTTP server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? path;
  /// Number of the port to access on the container. Changing this forces a new resource to be created.
  final pulumi.Input<int>? port;
  /// Scheme to use for connecting to the host. Possible values are `Http` and `Https`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scheme;

  /// Creates a new [GroupContainerLivenessProbeHttpGet].
  /// [httpHeaders] A map of HTTP headers used to access on the container. Changing this forces a new resource to be created.
  /// [path] Path to access on the HTTP server. Changing this forces a new resource to be created.
  /// [port] Number of the port to access on the container. Changing this forces a new resource to be created.
  /// [scheme] Scheme to use for connecting to the host. Possible values are `Http` and `Https`. Changing this forces a new resource to be created.
  GroupContainerLivenessProbeHttpGet({
    this.httpHeaders,
    this.path,
    this.port,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders': ?httpHeaders,
      'path': ?path,
      'port': ?port,
      'scheme': ?scheme,
    };
  }

  factory GroupContainerLivenessProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return GroupContainerLivenessProbeHttpGet(
      httpHeaders: map['httpHeaders'] == null ? null : ((map['httpHeaders'] as Map).cast<String, String>()).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      scheme: map['scheme'] == null ? null : (map['scheme'] as String).input(),
    );
  }
}

