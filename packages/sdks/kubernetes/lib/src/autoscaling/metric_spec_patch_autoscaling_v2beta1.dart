// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_resource_metric_source_patch_autoscaling_v2beta1.dart';
import 'external_metric_source_patch_autoscaling_v2beta1.dart';
import 'object_metric_source_patch_autoscaling_v2beta1.dart';
import 'pods_metric_source_patch_autoscaling_v2beta1.dart';
import 'resource_metric_source_patch_autoscaling_v2beta1.dart';

/// MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
class MetricSpecPatchAutoscalingV2beta1 {
  /// container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source. This is an alpha feature and can be enabled by the HPAContainerMetrics feature flag.
  final pulumi.Input<ContainerResourceMetricSourcePatchAutoscalingV2beta1>? containerResource;
  /// external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  final pulumi.Input<ExternalMetricSourcePatchAutoscalingV2beta1>? external;
  /// object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  final pulumi.Input<ObjectMetricSourcePatchAutoscalingV2beta1>? object;
  /// pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  final pulumi.Input<PodsMetricSourcePatchAutoscalingV2beta1>? pods;
  /// resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final pulumi.Input<ResourceMetricSourcePatchAutoscalingV2beta1>? resource;
  /// type is the type of metric source.  It should be one of "Object", "Pods" or "Resource", each mapping to a matching field in the object.
  final pulumi.Input<String>? type;

  /// Creates a new [MetricSpecPatchAutoscalingV2beta1].
  /// [containerResource] container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source. This is an alpha feature and can be enabled by the HPAContainerMetrics feature flag.
  /// [external] external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  /// [object] object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  /// [pods] pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  /// [resource] resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  /// [type] type is the type of metric source.  It should be one of "Object", "Pods" or "Resource", each mapping to a matching field in the object.
  MetricSpecPatchAutoscalingV2beta1({
    this.containerResource,
    this.external,
    this.object,
    this.pods,
    this.resource,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerResource': ?pulumi.Input.mapOptionalInputValue<ContainerResourceMetricSourcePatchAutoscalingV2beta1, Map<String, dynamic>>(containerResource, (value) => value.toMap()),
      'external': ?pulumi.Input.mapOptionalInputValue<ExternalMetricSourcePatchAutoscalingV2beta1, Map<String, dynamic>>(external, (value) => value.toMap()),
      'object': ?pulumi.Input.mapOptionalInputValue<ObjectMetricSourcePatchAutoscalingV2beta1, Map<String, dynamic>>(object, (value) => value.toMap()),
      'pods': ?pulumi.Input.mapOptionalInputValue<PodsMetricSourcePatchAutoscalingV2beta1, Map<String, dynamic>>(pods, (value) => value.toMap()),
      'resource': ?pulumi.Input.mapOptionalInputValue<ResourceMetricSourcePatchAutoscalingV2beta1, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory MetricSpecPatchAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return MetricSpecPatchAutoscalingV2beta1(
      containerResource: map['containerResource'] == null ? null : (ContainerResourceMetricSourcePatchAutoscalingV2beta1.fromMap((map['containerResource']! as Map).cast<String, dynamic>())).input(),
      external: map['external'] == null ? null : (ExternalMetricSourcePatchAutoscalingV2beta1.fromMap((map['external']! as Map).cast<String, dynamic>())).input(),
      object: map['object'] == null ? null : (ObjectMetricSourcePatchAutoscalingV2beta1.fromMap((map['object']! as Map).cast<String, dynamic>())).input(),
      pods: map['pods'] == null ? null : (PodsMetricSourcePatchAutoscalingV2beta1.fromMap((map['pods']! as Map).cast<String, dynamic>())).input(),
      resource: map['resource'] == null ? null : (ResourceMetricSourcePatchAutoscalingV2beta1.fromMap((map['resource']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

