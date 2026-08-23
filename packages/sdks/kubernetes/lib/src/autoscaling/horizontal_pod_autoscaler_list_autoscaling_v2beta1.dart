// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'horizontal_pod_autoscaler_autoscaling_v2beta1.dart';

/// HorizontalPodAutoscaler is a list of horizontal pod autoscaler objects.
class HorizontalPodAutoscalerListAutoscalingV2beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// items is the list of horizontal pod autoscaler objects.
  final pulumi.Input<List<HorizontalPodAutoscalerAutoscalingV2beta1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// metadata is the standard list metadata.
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [HorizontalPodAutoscalerListAutoscalingV2beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] items is the list of horizontal pod autoscaler objects.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard list metadata.
  const HorizontalPodAutoscalerListAutoscalingV2beta1({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': pulumi.Input.mapInputValue<List<HorizontalPodAutoscalerAutoscalingV2beta1>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<HorizontalPodAutoscalerAutoscalingV2beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory HorizontalPodAutoscalerListAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalerListAutoscalingV2beta1(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<HorizontalPodAutoscalerAutoscalingV2beta1>(map['items']!, (value) => HorizontalPodAutoscalerAutoscalingV2beta1.fromMap((value as Map).cast<String, dynamic>()))),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
