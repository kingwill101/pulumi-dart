// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/pod_template_spec.dart';
import '../meta/label_selector.dart';
import 'daemon_set_update_strategy.dart';

/// DaemonSetSpec is the specification of a daemon set.
class DaemonSetSpec {
  /// The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  final pulumi.Input<int>? minReadySeconds;
  /// The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  final pulumi.Input<int>? revisionHistoryLimit;
  /// A label query over pods that are managed by the daemon set. Must match in order to be controlled. If empty, defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final pulumi.Input<LabelSelector>? selector;
  /// An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  final pulumi.Input<PodTemplateSpec> template;
  /// DEPRECATED. A sequence number representing a specific generation of the template. Populated by the system. It can be set only during the creation.
  final pulumi.Input<int>? templateGeneration;
  /// An update strategy to replace existing DaemonSet pods with new pods.
  final pulumi.Input<DaemonSetUpdateStrategy>? updateStrategy;

  /// Creates a new [DaemonSetSpec].
  /// [minReadySeconds] The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  /// [revisionHistoryLimit] The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  /// [selector] A label query over pods that are managed by the daemon set. Must match in order to be controlled. If empty, defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// [template] An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  /// [templateGeneration] DEPRECATED. A sequence number representing a specific generation of the template. Populated by the system. It can be set only during the creation.
  /// [updateStrategy] An update strategy to replace existing DaemonSet pods with new pods.
  const DaemonSetSpec({
    this.minReadySeconds,
    this.revisionHistoryLimit,
    this.selector,
    required this.template,
    this.templateGeneration,
    this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReadySeconds': ?minReadySeconds,
      'revisionHistoryLimit': ?revisionHistoryLimit,
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'template': pulumi.Input.mapInputValue<PodTemplateSpec, Map<String, dynamic>>(template, (value) => value.toMap()),
      'templateGeneration': ?templateGeneration,
      'updateStrategy': ?pulumi.Input.mapOptionalInputValue<DaemonSetUpdateStrategy, Map<String, dynamic>>(updateStrategy, (value) => value.toMap()),
    };
  }

  factory DaemonSetSpec.fromMap(Map<String, dynamic> map) {
    return DaemonSetSpec(
      minReadySeconds: (() { final guardedValue = map['minReadySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      revisionHistoryLimit: (() { final guardedValue = map['revisionHistoryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      template: pulumi.Input.fromValue(PodTemplateSpec.fromMap((map['template']! as Map).cast<String, dynamic>())),
      templateGeneration: (() { final guardedValue = map['templateGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonSetUpdateStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
