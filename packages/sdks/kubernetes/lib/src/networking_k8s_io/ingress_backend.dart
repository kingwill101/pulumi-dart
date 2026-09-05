// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/typed_local_object_reference.dart';
import 'ingress_service_backend.dart';

/// IngressBackend describes all endpoints for a given service and port.
class IngressBackend {
  /// resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
  final pulumi.Input<TypedLocalObjectReference?>? resource;
  /// service references a service as a backend. This is a mutually exclusive setting with "Resource".
  final pulumi.Input<IngressServiceBackend?>? service;

  /// Creates a new [IngressBackend].
  /// [resource] resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
  /// [service] service references a service as a backend. This is a mutually exclusive setting with "Resource".
  const IngressBackend({
    this.resource,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?pulumi.Input.mapOptionalInputValue<TypedLocalObjectReference, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'service': ?pulumi.Input.mapOptionalInputValue<IngressServiceBackend, Map<String, dynamic>>(service, (value) => value.toMap()),
    };
  }

  factory IngressBackend.fromMap(Map<String, dynamic> map) {
    return IngressBackend(
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TypedLocalObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressServiceBackend.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
