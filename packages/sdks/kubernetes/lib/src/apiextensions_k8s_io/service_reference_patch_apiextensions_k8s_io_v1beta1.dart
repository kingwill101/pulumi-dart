// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceReference holds a reference to Service.legacy.k8s.io
class ServiceReferencePatchApiextensionsK8sIoV1beta1 {
  /// name is the name of the service. Required
  final pulumi.Input<String?>? name;
  /// namespace is the namespace of the service. Required
  final pulumi.Input<String?>? namespace;
  /// path is an optional URL path at which the webhook will be contacted.
  final pulumi.Input<String?>? path;
  /// port is an optional service port at which the webhook will be contacted. `port` should be a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
  final pulumi.Input<int?>? port;

  /// Creates a new [ServiceReferencePatchApiextensionsK8sIoV1beta1].
  /// [name] name is the name of the service. Required
  /// [namespace] namespace is the namespace of the service. Required
  /// [path] path is an optional URL path at which the webhook will be contacted.
  /// [port] port is an optional service port at which the webhook will be contacted. `port` should be a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
  const ServiceReferencePatchApiextensionsK8sIoV1beta1({
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

  factory ServiceReferencePatchApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ServiceReferencePatchApiextensionsK8sIoV1beta1(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
