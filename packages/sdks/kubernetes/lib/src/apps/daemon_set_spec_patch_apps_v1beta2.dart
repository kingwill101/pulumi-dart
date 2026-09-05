// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/pod_template_spec_patch.dart';
import '../meta/label_selector_patch.dart';
import 'daemon_set_update_strategy_patch_apps_v1beta2.dart';

/// DaemonSetSpec is the specification of a daemon set.
class DaemonSetSpecPatchAppsV1beta2 {
  /// The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  final pulumi.Input<int?>? minReadySeconds;
  /// The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  final pulumi.Input<int?>? revisionHistoryLimit;
  /// A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final pulumi.Input<LabelSelectorPatch?>? selector;
  /// An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  final pulumi.Input<PodTemplateSpecPatch?>? template;
  /// An update strategy to replace existing DaemonSet pods with new pods.
  final pulumi.Input<DaemonSetUpdateStrategyPatchAppsV1beta2?>? updateStrategy;

  /// Creates a new [DaemonSetSpecPatchAppsV1beta2].
  /// [minReadySeconds] The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  /// [revisionHistoryLimit] The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  /// [selector] A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// [template] An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  /// [updateStrategy] An update strategy to replace existing DaemonSet pods with new pods.
  const DaemonSetSpecPatchAppsV1beta2({
    this.minReadySeconds,
    this.revisionHistoryLimit,
    this.selector,
    this.template,
    this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReadySeconds': ?minReadySeconds,
      'revisionHistoryLimit': ?revisionHistoryLimit,
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'template': ?pulumi.Input.mapOptionalInputValue<PodTemplateSpecPatch, Map<String, dynamic>>(template, (value) => value.toMap()),
      'updateStrategy': ?pulumi.Input.mapOptionalInputValue<DaemonSetUpdateStrategyPatchAppsV1beta2, Map<String, dynamic>>(updateStrategy, (value) => value.toMap()),
    };
  }

  factory DaemonSetSpecPatchAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return DaemonSetSpecPatchAppsV1beta2(
      minReadySeconds: (() { final guardedValue = map['minReadySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      revisionHistoryLimit: (() { final guardedValue = map['revisionHistoryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodTemplateSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonSetUpdateStrategyPatchAppsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
