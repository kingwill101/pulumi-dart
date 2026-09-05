// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_backend_port_patch.dart';

/// IngressServiceBackend references a Kubernetes Service as a Backend.
class IngressServiceBackendPatch {
  /// name is the referenced service. The service must exist in the same namespace as the Ingress object.
  final pulumi.Input<String?>? name;
  /// port of the referenced service. A port name or port number is required for a IngressServiceBackend.
  final pulumi.Input<ServiceBackendPortPatch?>? port;

  /// Creates a new [IngressServiceBackendPatch].
  /// [name] name is the referenced service. The service must exist in the same namespace as the Ingress object.
  /// [port] port of the referenced service. A port name or port number is required for a IngressServiceBackend.
  const IngressServiceBackendPatch({
    this.name,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'port': ?pulumi.Input.mapOptionalInputValue<ServiceBackendPortPatch, Map<String, dynamic>>(port, (value) => value.toMap()),
    };
  }

  factory IngressServiceBackendPatch.fromMap(Map<String, dynamic> map) {
    return IngressServiceBackendPatch(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceBackendPortPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
