// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'driver_requests_patch.dart';
import 'resource_claim_parameters_reference_patch_resource_k8s_io_v1alpha2.dart';

/// {@template pulumi_resource_k8s_io_v1alpha2_resource_claim_parameters_patch_args_doc}
/// The set of arguments for ResourceClaimParametersPatch.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha2_resource_claim_parameters_patch_args_doc}
class ResourceClaimParametersPatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// DriverRequests describes all resources that are needed for the allocated claim. A single claim may use resources coming from different drivers. For each driver, this array has at most one entry which then may have one or more per-driver requests.
  ///
  /// May be empty, in which case the claim can always be allocated.
  final pulumi.Input<List<DriverRequestsPatch>>? driverRequests;
  /// If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the claim parameters when the parameter reference of the claim refers to some unknown type.
  final pulumi.Input<ResourceClaimParametersReferencePatchResourceK8sIoV1alpha2>? generatedFrom;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Shareable indicates whether the allocated claim is meant to be shareable by multiple consumers at the same time.
  final pulumi.Input<bool>? shareable;

  /// Creates a new [ResourceClaimParametersPatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [driverRequests] DriverRequests describes all resources that are needed for the allocated claim. A single claim may use resources coming from different drivers. For each driver, this array has at most one entry which then may have one or more per-driver requests.
  /// [generatedFrom] If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the claim parameters when the parameter reference of the claim refers to some unknown type.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [shareable] Shareable indicates whether the allocated claim is meant to be shareable by multiple consumers at the same time.
  const ResourceClaimParametersPatchArgs({
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
      'driverRequests': ?pulumi.Input.mapOptionalInputValue<List<DriverRequestsPatch>, List<Map<String, dynamic>>>(driverRequests, (value) => pulumi.Input.encodeList<DriverRequestsPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'generatedFrom': ?pulumi.Input.mapOptionalInputValue<ResourceClaimParametersReferencePatchResourceK8sIoV1alpha2, Map<String, dynamic>>(generatedFrom, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'shareable': ?shareable,
    };
  }

  factory ResourceClaimParametersPatchArgs.fromMap(Map<String, dynamic> map) {
    return ResourceClaimParametersPatchArgs(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driverRequests: (() { final guardedValue = map['driverRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DriverRequestsPatch>(guardedValue, (value) => DriverRequestsPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      generatedFrom: (() { final guardedValue = map['generatedFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceClaimParametersReferencePatchResourceK8sIoV1alpha2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shareable: (() { final guardedValue = map['shareable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
