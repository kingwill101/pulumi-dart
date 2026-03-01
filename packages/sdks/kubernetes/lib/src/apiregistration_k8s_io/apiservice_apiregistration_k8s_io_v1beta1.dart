// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'apiservice_spec_apiregistration_k8s_io_v1beta1.dart';
import 'apiservice_status_apiregistration_k8s_io_v1beta1.dart';

/// APIService represents a server for a particular GroupVersion. Name must be "version.group".
class APIServiceApiregistrationK8sIoV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  final ObjectMeta? metadata;
  /// Spec contains information for locating and communicating with a server
  final APIServiceSpecApiregistrationK8sIoV1beta1? spec;
  /// Status contains derived information about an API server
  final APIServiceStatusApiregistrationK8sIoV1beta1? status;

  /// Creates a new [APIServiceApiregistrationK8sIoV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] Spec contains information for locating and communicating with a server
  /// [status] Status contains derived information about an API server
  APIServiceApiregistrationK8sIoV1beta1({
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

  factory APIServiceApiregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return APIServiceApiregistrationK8sIoV1beta1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : APIServiceSpecApiregistrationK8sIoV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : APIServiceStatusApiregistrationK8sIoV1beta1.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

