// ignore_for_file: unused_element, unnecessary_cast


/// ServiceReference holds a reference to Service.legacy.k8s.io
class ServiceReference {
  /// name is the name of the service. Required
  final String name;
  /// namespace is the namespace of the service. Required
  final String namespace;
  /// path is an optional URL path at which the webhook will be contacted.
  final String? path;
  /// port is an optional service port at which the webhook will be contacted. `port` should be a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
  final int? port;

  /// Creates a new [ServiceReference].
  /// [name] name is the name of the service. Required
  /// [namespace] namespace is the namespace of the service. Required
  /// [path] path is an optional URL path at which the webhook will be contacted.
  /// [port] port is an optional service port at which the webhook will be contacted. `port` should be a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
  ServiceReference({
    required this.name,
    required this.namespace,
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespace': namespace,
      'path': ?path,
      'port': ?port,
    };
  }

  factory ServiceReference.fromMap(Map<String, dynamic> map) {
    return ServiceReference(
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

