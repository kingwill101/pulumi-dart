// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/typed_local_object_reference_patch.dart';
import 'ingress_service_backend_patch.dart';

/// IngressBackend describes all endpoints for a given service and port.
class IngressBackendPatch {
  /// resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
  final pulumi.Input<TypedLocalObjectReferencePatch>? resource;
  /// service references a service as a backend. This is a mutually exclusive setting with "Resource".
  final pulumi.Input<IngressServiceBackendPatch>? service;

  /// Creates a new [IngressBackendPatch].
  /// [resource] resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
  /// [service] service references a service as a backend. This is a mutually exclusive setting with "Resource".
  const IngressBackendPatch({
    this.resource,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?pulumi.Input.mapOptionalInputValue<TypedLocalObjectReferencePatch, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'service': ?pulumi.Input.mapOptionalInputValue<IngressServiceBackendPatch, Map<String, dynamic>>(service, (value) => value.toMap()),
    };
  }

  factory IngressBackendPatch.fromMap(Map<String, dynamic> map) {
    return IngressBackendPatch(
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TypedLocalObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressServiceBackendPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

