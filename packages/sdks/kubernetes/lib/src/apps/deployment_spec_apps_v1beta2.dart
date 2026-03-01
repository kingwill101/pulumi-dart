// ignore_for_file: unused_element, unnecessary_cast

import '../core/pod_template_spec.dart';
import '../meta/label_selector.dart';
import 'deployment_strategy_apps_v1beta2.dart';

/// DeploymentSpec is the specification of the desired behavior of the Deployment.
class DeploymentSpecAppsV1beta2 {
  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  final int? minReadySeconds;
  /// Indicates that the deployment is paused.
  final bool? paused;
  /// The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
  final int? progressDeadlineSeconds;
  /// Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  final int? replicas;
  /// The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  final int? revisionHistoryLimit;
  /// Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment. It must match the pod template's labels.
  final LabelSelector selector;
  /// The deployment strategy to use to replace existing pods with new ones.
  final DeploymentStrategyAppsV1beta2? strategy;
  /// Template describes the pods that will be created.
  final PodTemplateSpec template;

  /// Creates a new [DeploymentSpecAppsV1beta2].
  /// [minReadySeconds] Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  /// [paused] Indicates that the deployment is paused.
  /// [progressDeadlineSeconds] The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
  /// [replicas] Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  /// [revisionHistoryLimit] The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  /// [selector] Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment. It must match the pod template's labels.
  /// [strategy] The deployment strategy to use to replace existing pods with new ones.
  /// [template] Template describes the pods that will be created.
  DeploymentSpecAppsV1beta2({
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
      'selector': selector.toMap(),
      'strategy': ?strategy == null ? null : strategy!.toMap(),
      'template': template.toMap(),
    };
  }

  factory DeploymentSpecAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return DeploymentSpecAppsV1beta2(
      minReadySeconds: map['minReadySeconds'] == null ? null : map['minReadySeconds'] as int,
      paused: map['paused'] == null ? null : map['paused'] as bool,
      progressDeadlineSeconds: map['progressDeadlineSeconds'] == null ? null : map['progressDeadlineSeconds'] as int,
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
      revisionHistoryLimit: map['revisionHistoryLimit'] == null ? null : map['revisionHistoryLimit'] as int,
      selector: LabelSelector.fromMap((map['selector'] as Map).cast<String, dynamic>()),
      strategy: map['strategy'] == null ? null : DeploymentStrategyAppsV1beta2.fromMap((map['strategy'] as Map).cast<String, dynamic>()),
      template: PodTemplateSpec.fromMap((map['template'] as Map).cast<String, dynamic>()),
    );
  }
}

