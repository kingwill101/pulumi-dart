// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'ipaddress_spec_patch_networking_k8s_io_v1beta1.dart';

/// {@template pulumi_networking_k8s_io_v1beta1_ipaddress_patch_networking_k8s_io_v1beta1_args_doc}
/// The set of arguments for IPAddressPatch.
/// {@endtemplate}
/// {@macro pulumi_networking_k8s_io_v1beta1_ipaddress_patch_networking_k8s_io_v1beta1_args_doc}
class IPAddressPatchNetworkingK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// spec is the desired state of the IPAddress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<IPAddressSpecPatchNetworkingK8sIoV1beta1>? spec;

  /// Creates a new [IPAddressPatchNetworkingK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] spec is the desired state of the IPAddress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  IPAddressPatchNetworkingK8sIoV1beta1Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMetaPatch>? metadata,
    pulumi.Output<IPAddressSpecPatchNetworkingK8sIoV1beta1>? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      spec = pulumi.Input.asOptionalInput<IPAddressSpecPatchNetworkingK8sIoV1beta1>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<IPAddressSpecPatchNetworkingK8sIoV1beta1, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory IPAddressPatchNetworkingK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return IPAddressPatchNetworkingK8sIoV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: map['spec'] == null ? null : pulumi.Output.create<IPAddressSpecPatchNetworkingK8sIoV1beta1>(IPAddressSpecPatchNetworkingK8sIoV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

