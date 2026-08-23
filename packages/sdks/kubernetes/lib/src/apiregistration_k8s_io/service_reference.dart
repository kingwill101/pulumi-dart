// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceReference holds a reference to Service.legacy.k8s.io
class ServiceReference {
  /// Name is the name of the service
  final pulumi.Input<String>? name;
  /// Namespace is the namespace of the service
  final pulumi.Input<String>? namespace;
  /// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  final pulumi.Input<int>? port;

  /// Creates a new [ServiceReference].
  /// [name] Name is the name of the service
  /// [namespace] Namespace is the namespace of the service
  /// [port] If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  const ServiceReference({
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

  factory ServiceReference.fromMap(Map<String, dynamic> map) {
    return ServiceReference(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
