// ignore_for_file: unused_element, unnecessary_cast

import 'container_resource_metric_source.dart';
import 'external_metric_source.dart';
import 'object_metric_source.dart';
import 'pods_metric_source.dart';
import 'resource_metric_source.dart';

/// MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
class MetricSpec {
  /// containerResource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final ContainerResourceMetricSource? containerResource;
  /// external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  final ExternalMetricSource? external;
  /// object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  final ObjectMetricSource? object;
  /// pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  final PodsMetricSource? pods;
  /// resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final ResourceMetricSource? resource;
  /// type is the type of metric source.  It should be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each mapping to a matching field in the object.
  final String type;

  /// Creates a new [MetricSpec].
  /// [containerResource] containerResource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  /// [external] external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  /// [object] object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  /// [pods] pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  /// [resource] resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  /// [type] type is the type of metric source.  It should be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each mapping to a matching field in the object.
  MetricSpec({
    this.containerResource,
    this.external,
    this.object,
    this.pods,
    this.resource,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerResource': ?containerResource == null ? null : containerResource!.toMap(),
      'external': ?external == null ? null : external!.toMap(),
      'object': ?object == null ? null : object!.toMap(),
      'pods': ?pods == null ? null : pods!.toMap(),
      'resource': ?resource == null ? null : resource!.toMap(),
      'type': type,
    };
  }

  factory MetricSpec.fromMap(Map<String, dynamic> map) {
    return MetricSpec(
      containerResource: map['containerResource'] == null ? null : ContainerResourceMetricSource.fromMap((map['containerResource'] as Map).cast<String, dynamic>()),
      external: map['external'] == null ? null : ExternalMetricSource.fromMap((map['external'] as Map).cast<String, dynamic>()),
      object: map['object'] == null ? null : ObjectMetricSource.fromMap((map['object'] as Map).cast<String, dynamic>()),
      pods: map['pods'] == null ? null : PodsMetricSource.fromMap((map['pods'] as Map).cast<String, dynamic>()),
      resource: map['resource'] == null ? null : ResourceMetricSource.fromMap((map['resource'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

