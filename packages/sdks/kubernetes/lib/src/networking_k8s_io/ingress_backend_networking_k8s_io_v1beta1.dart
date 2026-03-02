// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/typed_local_object_reference.dart';

/// IngressBackend describes all endpoints for a given service and port.
class IngressBackendNetworkingK8sIoV1beta1 {
  /// Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
  final pulumi.Input<TypedLocalObjectReference>? resource;
  /// Specifies the name of the referenced service.
  final pulumi.Input<String> serviceName;
  /// Specifies the port of the referenced service.
  final pulumi.Input<int> servicePort;

  /// Creates a new [IngressBackendNetworkingK8sIoV1beta1].
  /// [resource] Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
  /// [serviceName] Specifies the name of the referenced service.
  /// [servicePort] Specifies the port of the referenced service.
  IngressBackendNetworkingK8sIoV1beta1({
    this.resource,
    required this.serviceName,
    required this.servicePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?pulumi.Input.mapOptionalInputValue<TypedLocalObjectReference, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'serviceName': serviceName,
      'servicePort': servicePort,
    };
  }

  factory IngressBackendNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return IngressBackendNetworkingK8sIoV1beta1(
      resource: map['resource'] == null ? null : (TypedLocalObjectReference.fromMap((map['resource']! as Map).cast<String, dynamic>())).input(),
      serviceName: (map['serviceName'] as String).input(),
      servicePort: (map['servicePort'] as int).input(),
    );
  }
}

