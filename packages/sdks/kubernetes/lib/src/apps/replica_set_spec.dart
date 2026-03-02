// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/pod_template_spec.dart';
import '../meta/label_selector.dart';

/// ReplicaSetSpec is the specification of a ReplicaSet.
class ReplicaSetSpec {
  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  final pulumi.Input<int>? minReadySeconds;
  /// Replicas is the number of desired pods. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset
  final pulumi.Input<int>? replicas;
  /// Selector is a label query over pods that should match the replica count. Label keys and values that must match in order to be controlled by this replica set. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final pulumi.Input<LabelSelector> selector;
  /// Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/#pod-template
  final pulumi.Input<PodTemplateSpec>? template;

  /// Creates a new [ReplicaSetSpec].
  /// [minReadySeconds] Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  /// [replicas] Replicas is the number of desired pods. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset
  /// [selector] Selector is a label query over pods that should match the replica count. Label keys and values that must match in order to be controlled by this replica set. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// [template] Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/#pod-template
  ReplicaSetSpec({
    this.minReadySeconds,
    this.replicas,
    required this.selector,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReadySeconds': ?minReadySeconds,
      'replicas': ?replicas,
      'selector': pulumi.Input.mapInputValue<LabelSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'template': ?pulumi.Input.mapOptionalInputValue<PodTemplateSpec, Map<String, dynamic>>(template, (value) => value.toMap()),
    };
  }

  factory ReplicaSetSpec.fromMap(Map<String, dynamic> map) {
    return ReplicaSetSpec(
      minReadySeconds: map['minReadySeconds'] == null ? null : (map['minReadySeconds'] as int).input(),
      replicas: map['replicas'] == null ? null : (map['replicas'] as int).input(),
      selector: (LabelSelector.fromMap((map['selector'] as Map).cast<String, dynamic>())).input(),
      template: map['template'] == null ? null : (PodTemplateSpec.fromMap((map['template'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

