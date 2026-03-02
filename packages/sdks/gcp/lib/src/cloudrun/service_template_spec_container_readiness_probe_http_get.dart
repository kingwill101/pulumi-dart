// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateSpecContainerReadinessProbeHttpGet {
  /// Path to access on the HTTP server. If set, it should not be empty string.
  final pulumi.Input<String>? path;
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final pulumi.Input<int>? port;

  /// Creates a new [ServiceTemplateSpecContainerReadinessProbeHttpGet].
  /// [path] Path to access on the HTTP server. If set, it should not be empty string.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  ServiceTemplateSpecContainerReadinessProbeHttpGet({
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'port': ?port,
    };
  }

  factory ServiceTemplateSpecContainerReadinessProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerReadinessProbeHttpGet(
      path: map['path'] == null ? null : (map['path'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

