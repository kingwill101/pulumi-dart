// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/typed_local_object_reference_patch.dart';

/// IngressBackend describes all endpoints for a given service and port.
class IngressBackendPatch {
  /// Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
  final pulumi.Input<TypedLocalObjectReferencePatch>? resource;
  /// Specifies the name of the referenced service.
  final pulumi.Input<String>? serviceName;
  /// Specifies the port of the referenced service.
  final pulumi.Input<int>? servicePort;

  /// Creates a new [IngressBackendPatch].
  /// [resource] Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
  /// [serviceName] Specifies the name of the referenced service.
  /// [servicePort] Specifies the port of the referenced service.
  const IngressBackendPatch({
    this.resource,
    this.serviceName,
    this.servicePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?pulumi.Input.mapOptionalInputValue<TypedLocalObjectReferencePatch, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'serviceName': ?serviceName,
      'servicePort': ?servicePort,
    };
  }

  factory IngressBackendPatch.fromMap(Map<String, dynamic> map) {
    return IngressBackendPatch(
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TypedLocalObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePort: (() { final guardedValue = map['servicePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

