// ignore_for_file: unused_element, unnecessary_cast

import '../core/typed_local_object_reference_patch.dart';

/// IngressBackend describes all endpoints for a given service and port.
class IngressBackendPatchNetworkingK8sIoV1beta1 {
  /// Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
  final TypedLocalObjectReferencePatch? resource;
  /// Specifies the name of the referenced service.
  final String? serviceName;
  /// Specifies the port of the referenced service.
  final int? servicePort;

  /// Creates a new [IngressBackendPatchNetworkingK8sIoV1beta1].
  /// [resource] Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
  /// [serviceName] Specifies the name of the referenced service.
  /// [servicePort] Specifies the port of the referenced service.
  IngressBackendPatchNetworkingK8sIoV1beta1({
    this.resource,
    this.serviceName,
    this.servicePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource == null ? null : resource!.toMap(),
      'serviceName': ?serviceName,
      'servicePort': ?servicePort,
    };
  }

  factory IngressBackendPatchNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return IngressBackendPatchNetworkingK8sIoV1beta1(
      resource: map['resource'] == null ? null : TypedLocalObjectReferencePatch.fromMap((map['resource'] as Map).cast<String, dynamic>()),
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      servicePort: map['servicePort'] == null ? null : map['servicePort'] as int,
    );
  }
}

