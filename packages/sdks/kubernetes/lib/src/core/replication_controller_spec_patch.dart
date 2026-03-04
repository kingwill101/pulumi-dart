// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_template_spec_patch.dart';

/// ReplicationControllerSpec is the specification of a replication controller.
class ReplicationControllerSpecPatch {
  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  final pulumi.Input<int>? minReadySeconds;

  /// Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  final pulumi.Input<int>? replicas;

  /// Selector is a label query over pods that should match the Replicas count. If Selector is empty, it is defaulted to the labels present on the Pod template. Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final pulumi.Input<Map<String, String>>? selector;

  /// Template is the object that describes the pod that will be created if insufficient replicas are detected. This takes precedence over a TemplateRef. The only allowed template.spec.restartPolicy value is "Always". More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  final pulumi.Input<PodTemplateSpecPatch>? template;

  /// Creates a new [ReplicationControllerSpecPatch].
  /// [minReadySeconds] Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  /// [replicas] Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  /// [selector] Selector is a label query over pods that should match the Replicas count. If Selector is empty, it is defaulted to the labels present on the Pod template. Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// [template] Template is the object that describes the pod that will be created if insufficient replicas are detected. This takes precedence over a TemplateRef. The only allowed template.spec.restartPolicy value is "Always". More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  ReplicationControllerSpecPatch({
    this.minReadySeconds,
    this.replicas,
    this.selector,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReadySeconds': ?minReadySeconds,
      'replicas': ?replicas,
      'selector': ?selector,
      'template':
          ?pulumi.Input.mapOptionalInputValue<
            PodTemplateSpecPatch,
            Map<String, dynamic>
          >(template, (value) => value.toMap()),
    };
  }

  factory ReplicationControllerSpecPatch.fromMap(Map<String, dynamic> map) {
    return ReplicationControllerSpecPatch(
      minReadySeconds: (() {
        final guardedValue = map['minReadySeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      replicas: (() {
        final guardedValue = map['replicas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      selector: (() {
        final guardedValue = map['selector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      template: (() {
        final guardedValue = map['template'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PodTemplateSpecPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
