// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';

/// PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
class PodDisruptionBudgetSpecPatchPolicyV1beta1 {
  /// An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with "minAvailable".
  final pulumi.Input<int>? maxUnavailable;
  /// An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
  final pulumi.Input<int>? minAvailable;
  /// Label query over pods whose evictions are managed by the disruption budget.
  final pulumi.Input<LabelSelectorPatch>? selector;

  /// Creates a new [PodDisruptionBudgetSpecPatchPolicyV1beta1].
  /// [maxUnavailable] An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with "minAvailable".
  /// [minAvailable] An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
  /// [selector] Label query over pods whose evictions are managed by the disruption budget.
  PodDisruptionBudgetSpecPatchPolicyV1beta1({
    this.maxUnavailable,
    this.minAvailable,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUnavailable': ?maxUnavailable,
      'minAvailable': ?minAvailable,
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(selector, (value) => value.toMap()),
    };
  }

  factory PodDisruptionBudgetSpecPatchPolicyV1beta1.fromMap(Map<String, dynamic> map) {
    return PodDisruptionBudgetSpecPatchPolicyV1beta1(
      maxUnavailable: map['maxUnavailable'] == null ? null : (map['maxUnavailable']! as int).input(),
      minAvailable: map['minAvailable'] == null ? null : (map['minAvailable']! as int).input(),
      selector: map['selector'] == null ? null : (LabelSelectorPatch.fromMap((map['selector']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

