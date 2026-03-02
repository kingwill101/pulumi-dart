// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_resource_metric_status_autoscaling_v2beta1.dart';
import 'external_metric_status_autoscaling_v2beta1.dart';
import 'object_metric_status_autoscaling_v2beta1.dart';
import 'pods_metric_status_autoscaling_v2beta1.dart';
import 'resource_metric_status_autoscaling_v2beta1.dart';

/// MetricStatus describes the last-read state of a single metric.
class MetricStatusAutoscalingV2beta1 {
  /// container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final pulumi.Input<ContainerResourceMetricStatusAutoscalingV2beta1>? containerResource;
  /// external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  final pulumi.Input<ExternalMetricStatusAutoscalingV2beta1>? external;
  /// object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  final pulumi.Input<ObjectMetricStatusAutoscalingV2beta1>? object;
  /// pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  final pulumi.Input<PodsMetricStatusAutoscalingV2beta1>? pods;
  /// resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final pulumi.Input<ResourceMetricStatusAutoscalingV2beta1>? resource;
  /// type is the type of metric source.  It will be one of "Object", "Pods" or "Resource", each corresponds to a matching field in the object.
  final pulumi.Input<String> type;

  /// Creates a new [MetricStatusAutoscalingV2beta1].
  /// [containerResource] container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  /// [external] external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  /// [object] object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  /// [pods] pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  /// [resource] resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  /// [type] type is the type of metric source.  It will be one of "Object", "Pods" or "Resource", each corresponds to a matching field in the object.
  MetricStatusAutoscalingV2beta1({
    this.containerResource,
    this.external,
    this.object,
    this.pods,
    this.resource,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerResource': ?pulumi.Input.mapOptionalInputValue<ContainerResourceMetricStatusAutoscalingV2beta1, Map<String, dynamic>>(containerResource, (value) => value.toMap()),
      'external': ?pulumi.Input.mapOptionalInputValue<ExternalMetricStatusAutoscalingV2beta1, Map<String, dynamic>>(external, (value) => value.toMap()),
      'object': ?pulumi.Input.mapOptionalInputValue<ObjectMetricStatusAutoscalingV2beta1, Map<String, dynamic>>(object, (value) => value.toMap()),
      'pods': ?pulumi.Input.mapOptionalInputValue<PodsMetricStatusAutoscalingV2beta1, Map<String, dynamic>>(pods, (value) => value.toMap()),
      'resource': ?pulumi.Input.mapOptionalInputValue<ResourceMetricStatusAutoscalingV2beta1, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'type': type,
    };
  }

  factory MetricStatusAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return MetricStatusAutoscalingV2beta1(
      containerResource: map['containerResource'] == null ? null : (ContainerResourceMetricStatusAutoscalingV2beta1.fromMap((map['containerResource'] as Map).cast<String, dynamic>())).input(),
      external: map['external'] == null ? null : (ExternalMetricStatusAutoscalingV2beta1.fromMap((map['external'] as Map).cast<String, dynamic>())).input(),
      object: map['object'] == null ? null : (ObjectMetricStatusAutoscalingV2beta1.fromMap((map['object'] as Map).cast<String, dynamic>())).input(),
      pods: map['pods'] == null ? null : (PodsMetricStatusAutoscalingV2beta1.fromMap((map['pods'] as Map).cast<String, dynamic>())).input(),
      resource: map['resource'] == null ? null : (ResourceMetricStatusAutoscalingV2beta1.fromMap((map['resource'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

