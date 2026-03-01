// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'horizontal_pod_autoscaler_autoscaling_v2.dart';

/// HorizontalPodAutoscalerList is a list of horizontal pod autoscaler objects.
class HorizontalPodAutoscalerListAutoscalingV2 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// items is the list of horizontal pod autoscaler objects.
  final List<HorizontalPodAutoscalerAutoscalingV2> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// metadata is the standard list metadata.
  final ListMeta? metadata;

  /// Creates a new [HorizontalPodAutoscalerListAutoscalingV2].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] items is the list of horizontal pod autoscaler objects.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard list metadata.
  HorizontalPodAutoscalerListAutoscalingV2({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': pulumi.Input.encodeList<HorizontalPodAutoscalerAutoscalingV2, Map<String, dynamic>>(items, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory HorizontalPodAutoscalerListAutoscalingV2.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerListAutoscalingV2(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      items: pulumi.Input.decodeList<HorizontalPodAutoscalerAutoscalingV2>(map['items'], (value) => HorizontalPodAutoscalerAutoscalingV2.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

