// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_backend_port.dart';

/// IngressServiceBackend references a Kubernetes Service as a Backend.
class IngressServiceBackend {
  /// name is the referenced service. The service must exist in the same namespace as the Ingress object.
  final pulumi.Input<String> name;
  /// port of the referenced service. A port name or port number is required for a IngressServiceBackend.
  final pulumi.Input<ServiceBackendPort>? port;

  /// Creates a new [IngressServiceBackend].
  /// [name] name is the referenced service. The service must exist in the same namespace as the Ingress object.
  /// [port] port of the referenced service. A port name or port number is required for a IngressServiceBackend.
  IngressServiceBackend({
    required this.name,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': ?pulumi.Input.mapOptionalInputValue<ServiceBackendPort, Map<String, dynamic>>(port, (value) => value.toMap()),
    };
  }

  factory IngressServiceBackend.fromMap(Map<String, dynamic> map) {
    return IngressServiceBackend(
      name: (map['name'] as String).input(),
      port: map['port'] == null ? null : (ServiceBackendPort.fromMap((map['port'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

