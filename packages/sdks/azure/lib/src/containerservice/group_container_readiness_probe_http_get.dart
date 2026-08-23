// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupContainerReadinessProbeHttpGet {
  /// A map of HTTP headers used to access on the container. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? httpHeaders;
  /// Path to access on the HTTP server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? path;
  /// Number of the port to access on the container. Changing this forces a new resource to be created.
  final pulumi.Input<int>? port;
  /// Scheme to use for connecting to the host. Possible values are `Http` and `Https`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scheme;

  /// Creates a new [GroupContainerReadinessProbeHttpGet].
  /// [httpHeaders] A map of HTTP headers used to access on the container. Changing this forces a new resource to be created.
  /// [path] Path to access on the HTTP server. Changing this forces a new resource to be created.
  /// [port] Number of the port to access on the container. Changing this forces a new resource to be created.
  /// [scheme] Scheme to use for connecting to the host. Possible values are `Http` and `Https`. Changing this forces a new resource to be created.
  const GroupContainerReadinessProbeHttpGet({
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

  factory GroupContainerReadinessProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return GroupContainerReadinessProbeHttpGet(
      httpHeaders: (() { final guardedValue = map['httpHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scheme: (() { final guardedValue = map['scheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
