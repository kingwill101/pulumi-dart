// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'component_condition.dart';

/// ComponentStatus (and ComponentStatusList) holds the cluster validation info. Deprecated: This API is deprecated in v1.19+
class ComponentStatus {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// List of component conditions observed
  final List<ComponentCondition>? conditions;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// Creates a new [ComponentStatus].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [conditions] List of component conditions observed
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  ComponentStatus({
    this.apiVersion,
    this.conditions,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<ComponentCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory ComponentStatus.fromMap(Map<String, dynamic> map) {
    return ComponentStatus(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<ComponentCondition>(map['conditions'], (value) => ComponentCondition.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

