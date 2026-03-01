// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'driver_requests.dart';
import 'resource_claim_parameters_reference_resource_k8s_io_v1alpha2.dart';

/// ResourceClaimParameters defines resource requests for a ResourceClaim in an in-tree format understood by Kubernetes.
class ResourceClaimParameters {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// DriverRequests describes all resources that are needed for the allocated claim. A single claim may use resources coming from different drivers. For each driver, this array has at most one entry which then may have one or more per-driver requests.
  ///
  /// May be empty, in which case the claim can always be allocated.
  final List<DriverRequests>? driverRequests;
  /// If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the claim parameters when the parameter reference of the claim refers to some unknown type.
  final ResourceClaimParametersReferenceResourceK8sIoV1alpha2? generatedFrom;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata
  final ObjectMeta? metadata;
  /// Shareable indicates whether the allocated claim is meant to be shareable by multiple consumers at the same time.
  final bool? shareable;

  /// Creates a new [ResourceClaimParameters].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [driverRequests] DriverRequests describes all resources that are needed for the allocated claim. A single claim may use resources coming from different drivers. For each driver, this array has at most one entry which then may have one or more per-driver requests.
  /// [generatedFrom] If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the claim parameters when the parameter reference of the claim refers to some unknown type.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [shareable] Shareable indicates whether the allocated claim is meant to be shareable by multiple consumers at the same time.
  ResourceClaimParameters({
    this.apiVersion,
    this.driverRequests,
    this.generatedFrom,
    this.kind,
    this.metadata,
    this.shareable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'driverRequests': ?driverRequests == null ? null : pulumi.Input.encodeList<DriverRequests, Map<String, dynamic>>(driverRequests!, (value) => value.toMap()),
      'generatedFrom': ?generatedFrom == null ? null : generatedFrom!.toMap(),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'shareable': ?shareable,
    };
  }

  factory ResourceClaimParameters.fromMap(Map<String, dynamic> map) {
    return ResourceClaimParameters(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      driverRequests: map['driverRequests'] == null ? null : pulumi.Input.decodeList<DriverRequests>(map['driverRequests'], (value) => DriverRequests.fromMap((value as Map).cast<String, dynamic>())),
      generatedFrom: map['generatedFrom'] == null ? null : ResourceClaimParametersReferenceResourceK8sIoV1alpha2.fromMap((map['generatedFrom'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      shareable: map['shareable'] == null ? null : map['shareable'] as bool,
    );
  }
}

