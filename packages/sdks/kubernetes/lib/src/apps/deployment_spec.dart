// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/pod_template_spec.dart';
import '../meta/label_selector.dart';
import 'deployment_strategy.dart';

/// DeploymentSpec is the specification of the desired behavior of the Deployment.
class DeploymentSpec {
  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  final pulumi.Input<int>? minReadySeconds;
  /// Indicates that the deployment is paused.
  final pulumi.Input<bool>? paused;
  /// The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
  final pulumi.Input<int>? progressDeadlineSeconds;
  /// Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  final pulumi.Input<int>? replicas;
  /// The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  final pulumi.Input<int>? revisionHistoryLimit;
  /// Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment. It must match the pod template's labels.
  final pulumi.Input<LabelSelector> selector;
  /// The deployment strategy to use to replace existing pods with new ones.
  final pulumi.Input<DeploymentStrategy>? strategy;
  /// Template describes the pods that will be created. The only allowed template.spec.restartPolicy value is "Always".
  final pulumi.Input<PodTemplateSpec> template;

  /// Creates a new [DeploymentSpec].
  /// [minReadySeconds] Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  /// [paused] Indicates that the deployment is paused.
  /// [progressDeadlineSeconds] The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
  /// [replicas] Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  /// [revisionHistoryLimit] The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  /// [selector] Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment. It must match the pod template's labels.
  /// [strategy] The deployment strategy to use to replace existing pods with new ones.
  /// [template] Template describes the pods that will be created. The only allowed template.spec.restartPolicy value is "Always".
  DeploymentSpec({
    this.minReadySeconds,
    this.paused,
    this.progressDeadlineSeconds,
    this.replicas,
    this.revisionHistoryLimit,
    required this.selector,
    this.strategy,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReadySeconds': ?minReadySeconds,
      'paused': ?paused,
      'progressDeadlineSeconds': ?progressDeadlineSeconds,
      'replicas': ?replicas,
      'revisionHistoryLimit': ?revisionHistoryLimit,
      'selector': pulumi.Input.mapInputValue<LabelSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'strategy': ?pulumi.Input.mapOptionalInputValue<DeploymentStrategy, Map<String, dynamic>>(strategy, (value) => value.toMap()),
      'template': pulumi.Input.mapInputValue<PodTemplateSpec, Map<String, dynamic>>(template, (value) => value.toMap()),
    };
  }

  factory DeploymentSpec.fromMap(Map<String, dynamic> map) {
    return DeploymentSpec(
      minReadySeconds: (() { final guardedValue = map['minReadySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      progressDeadlineSeconds: (() { final guardedValue = map['progressDeadlineSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      revisionHistoryLimit: (() { final guardedValue = map['revisionHistoryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      selector: pulumi.Input.fromValue(LabelSelector.fromMap((map['selector']! as Map).cast<String, dynamic>())),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      template: pulumi.Input.fromValue(PodTemplateSpec.fromMap((map['template']! as Map).cast<String, dynamic>())),
    );
  }
}

