// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_resource_metric_source.dart';
import 'external_metric_source.dart';
import 'object_metric_source.dart';
import 'pods_metric_source.dart';
import 'resource_metric_source.dart';

/// MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
class MetricSpec {
  /// containerResource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final pulumi.Input<ContainerResourceMetricSource>? containerResource;
  /// external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  final pulumi.Input<ExternalMetricSource>? external;
  /// object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  final pulumi.Input<ObjectMetricSource>? object_;
  /// pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  final pulumi.Input<PodsMetricSource>? pods;
  /// resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final pulumi.Input<ResourceMetricSource>? resource;
  /// type is the type of metric source.  It should be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each mapping to a matching field in the object.
  final pulumi.Input<String> type;

  /// Creates a new [MetricSpec].
  /// [containerResource] containerResource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  /// [external] external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  /// [object_] object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  /// [pods] pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  /// [resource] resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  /// [type] type is the type of metric source.  It should be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each mapping to a matching field in the object.
  const MetricSpec({
    this.containerResource,
    this.external,
    this.object_,
    this.pods,
    this.resource,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerResource': ?pulumi.Input.mapOptionalInputValue<ContainerResourceMetricSource, Map<String, dynamic>>(containerResource, (value) => value.toMap()),
      'external': ?pulumi.Input.mapOptionalInputValue<ExternalMetricSource, Map<String, dynamic>>(external, (value) => value.toMap()),
      'object': ?pulumi.Input.mapOptionalInputValue<ObjectMetricSource, Map<String, dynamic>>(object_, (value) => value.toMap()),
      'pods': ?pulumi.Input.mapOptionalInputValue<PodsMetricSource, Map<String, dynamic>>(pods, (value) => value.toMap()),
      'resource': ?pulumi.Input.mapOptionalInputValue<ResourceMetricSource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'type': type,
    };
  }

  factory MetricSpec.fromMap(Map<String, dynamic> map) {
    return MetricSpec(
      containerResource: (() { final guardedValue = map['containerResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerResourceMetricSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      external: (() { final guardedValue = map['external']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExternalMetricSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      object_: (() { final guardedValue = map['object']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetricSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pods: (() { final guardedValue = map['pods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodsMetricSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceMetricSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
