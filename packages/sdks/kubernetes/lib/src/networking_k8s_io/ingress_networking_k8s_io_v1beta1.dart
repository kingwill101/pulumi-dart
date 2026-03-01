// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'ingress_spec_networking_k8s_io_v1beta1.dart';
import 'ingress_status_networking_k8s_io_v1beta1.dart';

/// Ingress is a collection of rules that allow inbound connections to reach the endpoints defined by a backend. An Ingress can be configured to give services externally-reachable urls, load balance traffic, terminate SSL, offer name based virtual hosting etc.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1.  Ingress object exists.
/// 2.  Endpoint objects exist with matching names for each Ingress path (except when Service
/// type is ExternalName).
/// 3.  Ingress entry exists for '.status.loadBalancer.ingress'.
///
/// If the Ingress has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
class IngressNetworkingK8sIoV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;
  /// Spec is the desired state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final IngressSpecNetworkingK8sIoV1beta1? spec;
  /// Status is the current state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final IngressStatusNetworkingK8sIoV1beta1? status;

  /// Creates a new [IngressNetworkingK8sIoV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Spec is the desired state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// [status] Status is the current state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  IngressNetworkingK8sIoV1beta1({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory IngressNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return IngressNetworkingK8sIoV1beta1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : IngressSpecNetworkingK8sIoV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : IngressStatusNetworkingK8sIoV1beta1.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

