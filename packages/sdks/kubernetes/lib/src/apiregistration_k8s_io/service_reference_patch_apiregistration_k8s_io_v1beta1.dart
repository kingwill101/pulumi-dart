// ignore_for_file: unused_element, unnecessary_cast


/// ServiceReference holds a reference to Service.legacy.k8s.io
class ServiceReferencePatchApiregistrationK8sIoV1beta1 {
  /// Name is the name of the service
  final String? name;
  /// Namespace is the namespace of the service
  final String? namespace;
  /// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  final int? port;

  /// Creates a new [ServiceReferencePatchApiregistrationK8sIoV1beta1].
  /// [name] Name is the name of the service
  /// [namespace] Namespace is the namespace of the service
  /// [port] If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  ServiceReferencePatchApiregistrationK8sIoV1beta1({
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

  factory ServiceReferencePatchApiregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ServiceReferencePatchApiregistrationK8sIoV1beta1(
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

