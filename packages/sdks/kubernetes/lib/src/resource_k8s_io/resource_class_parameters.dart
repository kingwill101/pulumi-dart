// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_class_parameters_reference_resource_k8s_io_v1alpha2.dart';
import 'resource_filter.dart';
import 'vendor_parameters.dart';

/// ResourceClassParameters defines resource requests for a ResourceClass in an in-tree format understood by Kubernetes.
class ResourceClassParameters {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Filters describes additional contraints that must be met when using the class.
  final List<ResourceFilter>? filters;
  /// If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the class parameters when the parameter reference of the class refers to some unknown type.
  final ResourceClassParametersReferenceResourceK8sIoV1alpha2? generatedFrom;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata
  final ObjectMeta? metadata;
  /// VendorParameters are arbitrary setup parameters for all claims using this class. They are ignored while allocating the claim. There must not be more than one entry per driver.
  final List<VendorParameters>? vendorParameters;

  /// Creates a new [ResourceClassParameters].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [filters] Filters describes additional contraints that must be met when using the class.
  /// [generatedFrom] If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the class parameters when the parameter reference of the class refers to some unknown type.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [vendorParameters] VendorParameters are arbitrary setup parameters for all claims using this class. They are ignored while allocating the claim. There must not be more than one entry per driver.
  ResourceClassParameters({
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
      'filters': ?filters == null ? null : pulumi.Input.encodeList<ResourceFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'generatedFrom': ?generatedFrom == null ? null : generatedFrom!.toMap(),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'vendorParameters': ?vendorParameters == null ? null : pulumi.Input.encodeList<VendorParameters, Map<String, dynamic>>(vendorParameters!, (value) => value.toMap()),
    };
  }

  factory ResourceClassParameters.fromMap(Map<String, dynamic> map) {
    return ResourceClassParameters(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<ResourceFilter>(map['filters'], (value) => ResourceFilter.fromMap((value as Map).cast<String, dynamic>())),
      generatedFrom: map['generatedFrom'] == null ? null : ResourceClassParametersReferenceResourceK8sIoV1alpha2.fromMap((map['generatedFrom'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      vendorParameters: map['vendorParameters'] == null ? null : pulumi.Input.decodeList<VendorParameters>(map['vendorParameters'], (value) => VendorParameters.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

