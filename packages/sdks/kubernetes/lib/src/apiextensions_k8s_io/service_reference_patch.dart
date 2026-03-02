// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceReference holds a reference to Service.legacy.k8s.io
class ServiceReferencePatch {
  /// name is the name of the service. Required
  final pulumi.Input<String>? name;
  /// namespace is the namespace of the service. Required
  final pulumi.Input<String>? namespace;
  /// path is an optional URL path at which the webhook will be contacted.
  final pulumi.Input<String>? path;
  /// port is an optional service port at which the webhook will be contacted. `port` should be a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
  final pulumi.Input<int>? port;

  /// Creates a new [ServiceReferencePatch].
  /// [name] name is the name of the service. Required
  /// [namespace] namespace is the namespace of the service. Required
  /// [path] path is an optional URL path at which the webhook will be contacted.
  /// [port] port is an optional service port at which the webhook will be contacted. `port` should be a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
  ServiceReferencePatch({
    this.name,
    this.namespace,
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
      'path': ?path,
      'port': ?port,
    };
  }

  factory ServiceReferencePatch.fromMap(Map<String, dynamic> map) {
    return ServiceReferencePatch(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
    );
  }
}

