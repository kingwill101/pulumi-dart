// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/pod_template_spec_patch.dart';
import '../meta/label_selector_patch.dart';
import 'deployment_strategy_patch_apps_v1beta1.dart';
import 'rollback_config_patch.dart';

/// DeploymentSpec is the specification of the desired behavior of the Deployment.
class DeploymentSpecPatchAppsV1beta1 {
  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  final pulumi.Input<int>? minReadySeconds;
  /// Indicates that the deployment is paused.
  final pulumi.Input<bool>? paused;
  /// The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
  final pulumi.Input<int>? progressDeadlineSeconds;
  /// Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  final pulumi.Input<int>? replicas;
  /// The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 2.
  final pulumi.Input<int>? revisionHistoryLimit;
  /// DEPRECATED. The config this deployment is rolling back to. Will be cleared after rollback is done.
  final pulumi.Input<RollbackConfigPatch>? rollbackTo;
  /// Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment.
  final pulumi.Input<LabelSelectorPatch>? selector;
  /// The deployment strategy to use to replace existing pods with new ones.
  final pulumi.Input<DeploymentStrategyPatchAppsV1beta1>? strategy;
  /// Template describes the pods that will be created.
  final pulumi.Input<PodTemplateSpecPatch>? template;

  /// Creates a new [DeploymentSpecPatchAppsV1beta1].
  /// [minReadySeconds] Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  /// [paused] Indicates that the deployment is paused.
  /// [progressDeadlineSeconds] The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
  /// [replicas] Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  /// [revisionHistoryLimit] The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 2.
  /// [rollbackTo] DEPRECATED. The config this deployment is rolling back to. Will be cleared after rollback is done.
  /// [selector] Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment.
  /// [strategy] The deployment strategy to use to replace existing pods with new ones.
  /// [template] Template describes the pods that will be created.
  const DeploymentSpecPatchAppsV1beta1({
    this.minReadySeconds,
    this.paused,
    this.progressDeadlineSeconds,
    this.replicas,
    this.revisionHistoryLimit,
    this.rollbackTo,
    this.selector,
    this.strategy,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReadySeconds': ?minReadySeconds,
      'paused': ?paused,
      'progressDeadlineSeconds': ?progressDeadlineSeconds,
      'replicas': ?replicas,
      'revisionHistoryLimit': ?revisionHistoryLimit,
      'rollbackTo': ?pulumi.Input.mapOptionalInputValue<RollbackConfigPatch, Map<String, dynamic>>(rollbackTo, (value) => value.toMap()),
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'strategy': ?pulumi.Input.mapOptionalInputValue<DeploymentStrategyPatchAppsV1beta1, Map<String, dynamic>>(strategy, (value) => value.toMap()),
      'template': ?pulumi.Input.mapOptionalInputValue<PodTemplateSpecPatch, Map<String, dynamic>>(template, (value) => value.toMap()),
    };
  }

  factory DeploymentSpecPatchAppsV1beta1.fromMap(Map<String, dynamic> map) {
    return DeploymentSpecPatchAppsV1beta1(
      minReadySeconds: (() { final guardedValue = map['minReadySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      progressDeadlineSeconds: (() { final guardedValue = map['progressDeadlineSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      revisionHistoryLimit: (() { final guardedValue = map['revisionHistoryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rollbackTo: (() { final guardedValue = map['rollbackTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RollbackConfigPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStrategyPatchAppsV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodTemplateSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

