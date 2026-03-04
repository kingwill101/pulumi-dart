// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_resource_metric_source_patch.dart';
import 'external_metric_source_patch.dart';
import 'object_metric_source_patch.dart';
import 'pods_metric_source_patch.dart';
import 'resource_metric_source_patch.dart';

/// MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
class MetricSpecPatch {
  /// containerResource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final pulumi.Input<ContainerResourceMetricSourcePatch>? containerResource;

  /// external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  final pulumi.Input<ExternalMetricSourcePatch>? external;

  /// object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  final pulumi.Input<ObjectMetricSourcePatch>? object_;

  /// pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  final pulumi.Input<PodsMetricSourcePatch>? pods;

  /// resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final pulumi.Input<ResourceMetricSourcePatch>? resource;

  /// type is the type of metric source.  It should be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each mapping to a matching field in the object.
  final pulumi.Input<String>? type;

  /// Creates a new [MetricSpecPatch].
  /// [containerResource] containerResource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  /// [external] external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  /// [object_] object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  /// [pods] pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  /// [resource] resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  /// [type] type is the type of metric source.  It should be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each mapping to a matching field in the object.
  MetricSpecPatch({
    this.containerResource,
    this.external,
    this.object_,
    this.pods,
    this.resource,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerResource':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerResourceMetricSourcePatch,
            Map<String, dynamic>
          >(containerResource, (value) => value.toMap()),
      'external':
          ?pulumi.Input.mapOptionalInputValue<
            ExternalMetricSourcePatch,
            Map<String, dynamic>
          >(external, (value) => value.toMap()),
      'object':
          ?pulumi.Input.mapOptionalInputValue<
            ObjectMetricSourcePatch,
            Map<String, dynamic>
          >(object_, (value) => value.toMap()),
      'pods':
          ?pulumi.Input.mapOptionalInputValue<
            PodsMetricSourcePatch,
            Map<String, dynamic>
          >(pods, (value) => value.toMap()),
      'resource':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceMetricSourcePatch,
            Map<String, dynamic>
          >(resource, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory MetricSpecPatch.fromMap(Map<String, dynamic> map) {
    return MetricSpecPatch(
      containerResource: (() {
        final guardedValue = map['containerResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ContainerResourceMetricSourcePatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      external: (() {
        final guardedValue = map['external'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExternalMetricSourcePatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      object_: (() {
        final guardedValue = map['object'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectMetricSourcePatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      pods: (() {
        final guardedValue = map['pods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PodsMetricSourcePatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resource: (() {
        final guardedValue = map['resource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceMetricSourcePatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
