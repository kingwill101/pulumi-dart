// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';

/// {@template pulumi_apps_v1beta1_controller_revision_apps_v1beta1_args_doc}
/// The set of arguments for ControllerRevision.
/// {@endtemplate}
/// {@macro pulumi_apps_v1beta1_controller_revision_apps_v1beta1_args_doc}
class ControllerRevisionAppsV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Data is the serialized representation of the state.
  final pulumi.Input<dynamic>? data;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// Revision indicates the revision of the state represented by Data.
  final pulumi.Input<int> revision;

  /// Creates a new [ControllerRevisionAppsV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [data] Data is the serialized representation of the state.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [revision] Revision indicates the revision of the state represented by Data.
  ControllerRevisionAppsV1beta1Args({
    this.apiVersion,
    this.data,
    this.kind,
    this.metadata,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'data': ?data,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'revision': revision,
    };
  }

  factory ControllerRevisionAppsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ControllerRevisionAppsV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      data: map['data'] == null ? null : (map['data']!).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      revision: (map['revision'] as int).input(),
    );
  }
}

