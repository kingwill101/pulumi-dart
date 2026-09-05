// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'resource_class_parameters_reference_patch_resource_k8s_io_v1alpha2.dart';
import 'resource_filter_patch.dart';
import 'vendor_parameters_patch.dart';

/// {@template pulumi_resource_k8s_io_v1alpha2_resource_class_parameters_patch_args_doc}
/// The set of arguments for ResourceClassParametersPatch.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha2_resource_class_parameters_patch_args_doc}
class ResourceClassParametersPatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Filters describes additional contraints that must be met when using the class.
  final pulumi.Input<List<ResourceFilterPatch>?>? filters;
  /// If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the class parameters when the parameter reference of the class refers to some unknown type.
  final pulumi.Input<ResourceClassParametersReferencePatchResourceK8sIoV1alpha2?>? generatedFrom;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// VendorParameters are arbitrary setup parameters for all claims using this class. They are ignored while allocating the claim. There must not be more than one entry per driver.
  final pulumi.Input<List<VendorParametersPatch>?>? vendorParameters;

  /// Creates a new [ResourceClassParametersPatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [filters] Filters describes additional contraints that must be met when using the class.
  /// [generatedFrom] If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the class parameters when the parameter reference of the class refers to some unknown type.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [vendorParameters] VendorParameters are arbitrary setup parameters for all claims using this class. They are ignored while allocating the claim. There must not be more than one entry per driver.
  const ResourceClassParametersPatchArgs({
    this.apiVersion,
    this.filters,
    this.generatedFrom,
    this.kind,
    this.metadata,
    this.vendorParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<ResourceFilterPatch>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<ResourceFilterPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'generatedFrom': ?pulumi.Input.mapOptionalInputValue<ResourceClassParametersReferencePatchResourceK8sIoV1alpha2, Map<String, dynamic>>(generatedFrom, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'vendorParameters': ?pulumi.Input.mapOptionalInputValue<List<VendorParametersPatch>, List<Map<String, dynamic>>>(vendorParameters, (value) => pulumi.Input.encodeList<VendorParametersPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceClassParametersPatchArgs.fromMap(Map<String, dynamic> map) {
    return ResourceClassParametersPatchArgs(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceFilterPatch>(guardedValue, (value) => ResourceFilterPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      generatedFrom: (() { final guardedValue = map['generatedFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceClassParametersReferencePatchResourceK8sIoV1alpha2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vendorParameters: (() { final guardedValue = map['vendorParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VendorParametersPatch>(guardedValue, (value) => VendorParametersPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
