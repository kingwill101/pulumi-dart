// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceReference holds a reference to Service.legacy.k8s.io
class ServiceReferenceAdmissionregistrationK8sIoV1beta1 {
  /// `name` is the name of the service. Required
  final pulumi.Input<String> name;
  /// `namespace` is the namespace of the service. Required
  final pulumi.Input<String> namespace;
  /// `path` is an optional URL path which will be sent in any request to this service.
  final pulumi.Input<String>? path;
  /// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  final pulumi.Input<int>? port;

  /// Creates a new [ServiceReferenceAdmissionregistrationK8sIoV1beta1].
  /// [name] `name` is the name of the service. Required
  /// [namespace] `namespace` is the namespace of the service. Required
  /// [path] `path` is an optional URL path which will be sent in any request to this service.
  /// [port] If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  const ServiceReferenceAdmissionregistrationK8sIoV1beta1({
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

  factory ServiceReferenceAdmissionregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ServiceReferenceAdmissionregistrationK8sIoV1beta1(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

