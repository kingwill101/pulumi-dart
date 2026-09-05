// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_resource_metric_source_patch_autoscaling_v2beta2.dart';
import 'external_metric_source_patch_autoscaling_v2beta2.dart';
import 'object_metric_source_patch_autoscaling_v2beta2.dart';
import 'pods_metric_source_patch_autoscaling_v2beta2.dart';
import 'resource_metric_source_patch_autoscaling_v2beta2.dart';

/// MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
class MetricSpecPatchAutoscalingV2beta2 {
  /// container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source. This is an alpha feature and can be enabled by the HPAContainerMetrics feature flag.
  final pulumi.Input<ContainerResourceMetricSourcePatchAutoscalingV2beta2?>? containerResource;
  /// external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  final pulumi.Input<ExternalMetricSourcePatchAutoscalingV2beta2?>? external;
  /// object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  final pulumi.Input<ObjectMetricSourcePatchAutoscalingV2beta2?>? object_;
  /// pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  final pulumi.Input<PodsMetricSourcePatchAutoscalingV2beta2?>? pods;
  /// resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final pulumi.Input<ResourceMetricSourcePatchAutoscalingV2beta2?>? resource;
  /// type is the type of metric source.  It should be one of "Object", "Pods" or "Resource", each mapping to a matching field in the object.
  final pulumi.Input<String?>? type;

  /// Creates a new [MetricSpecPatchAutoscalingV2beta2].
  /// [containerResource] container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source. This is an alpha feature and can be enabled by the HPAContainerMetrics feature flag.
  /// [external] external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  /// [object_] object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  /// [pods] pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  /// [resource] resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  /// [type] type is the type of metric source.  It should be one of "Object", "Pods" or "Resource", each mapping to a matching field in the object.
  const MetricSpecPatchAutoscalingV2beta2({
    this.containerResource,
    this.external,
    this.object_,
    this.pods,
    this.resource,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerResource': ?pulumi.Input.mapOptionalInputValue<ContainerResourceMetricSourcePatchAutoscalingV2beta2, Map<String, dynamic>>(containerResource, (value) => value.toMap()),
      'external': ?pulumi.Input.mapOptionalInputValue<ExternalMetricSourcePatchAutoscalingV2beta2, Map<String, dynamic>>(external, (value) => value.toMap()),
      'object': ?pulumi.Input.mapOptionalInputValue<ObjectMetricSourcePatchAutoscalingV2beta2, Map<String, dynamic>>(object_, (value) => value.toMap()),
      'pods': ?pulumi.Input.mapOptionalInputValue<PodsMetricSourcePatchAutoscalingV2beta2, Map<String, dynamic>>(pods, (value) => value.toMap()),
      'resource': ?pulumi.Input.mapOptionalInputValue<ResourceMetricSourcePatchAutoscalingV2beta2, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory MetricSpecPatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return MetricSpecPatchAutoscalingV2beta2(
      containerResource: (() { final guardedValue = map['containerResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerResourceMetricSourcePatchAutoscalingV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      external: (() { final guardedValue = map['external']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExternalMetricSourcePatchAutoscalingV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      object_: (() { final guardedValue = map['object']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetricSourcePatchAutoscalingV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pods: (() { final guardedValue = map['pods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodsMetricSourcePatchAutoscalingV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceMetricSourcePatchAutoscalingV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
