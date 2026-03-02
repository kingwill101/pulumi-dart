// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceReference holds a reference to Service.legacy.k8s.io
class ServiceReferencePatch {
  /// Name is the name of the service
  final pulumi.Input<String>? name;
  /// Namespace is the namespace of the service
  final pulumi.Input<String>? namespace;
  /// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  final pulumi.Input<int>? port;

  /// Creates a new [ServiceReferencePatch].
  /// [name] Name is the name of the service
  /// [namespace] Namespace is the namespace of the service
  /// [port] If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  ServiceReferencePatch({
    this.name,
    this.namespace,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
      'port': ?port,
    };
  }

  factory ServiceReferencePatch.fromMap(Map<String, dynamic> map) {
    return ServiceReferencePatch(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

