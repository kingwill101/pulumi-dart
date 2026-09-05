// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/persistent_volume_claim_patch.dart';
import '../core/pod_template_spec_patch.dart';
import '../meta/label_selector_patch.dart';
import 'stateful_set_update_strategy_patch_apps_v1beta2.dart';

/// A StatefulSetSpec is the specification of a StatefulSet.
class StatefulSetSpecPatchAppsV1beta2 {
  /// podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
  final pulumi.Input<String?>? podManagementPolicy;
  /// replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
  final pulumi.Input<int?>? replicas;
  /// revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
  final pulumi.Input<int?>? revisionHistoryLimit;
  /// selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final pulumi.Input<LabelSelectorPatch?>? selector;
  /// serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.
  final pulumi.Input<String?>? serviceName;
  /// template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.
  final pulumi.Input<PodTemplateSpecPatch?>? template;
  /// updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
  final pulumi.Input<StatefulSetUpdateStrategyPatchAppsV1beta2?>? updateStrategy;
  /// volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
  final pulumi.Input<List<PersistentVolumeClaimPatch>?>? volumeClaimTemplates;

  /// Creates a new [StatefulSetSpecPatchAppsV1beta2].
  /// [podManagementPolicy] podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
  /// [replicas] replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
  /// [revisionHistoryLimit] revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
  /// [selector] selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// [serviceName] serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.
  /// [template] template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.
  /// [updateStrategy] updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
  /// [volumeClaimTemplates] volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
  const StatefulSetSpecPatchAppsV1beta2({
    this.podManagementPolicy,
    this.replicas,
    this.revisionHistoryLimit,
    this.selector,
    this.serviceName,
    this.template,
    this.updateStrategy,
    this.volumeClaimTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podManagementPolicy': ?podManagementPolicy,
      'replicas': ?replicas,
      'revisionHistoryLimit': ?revisionHistoryLimit,
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'serviceName': ?serviceName,
      'template': ?pulumi.Input.mapOptionalInputValue<PodTemplateSpecPatch, Map<String, dynamic>>(template, (value) => value.toMap()),
      'updateStrategy': ?pulumi.Input.mapOptionalInputValue<StatefulSetUpdateStrategyPatchAppsV1beta2, Map<String, dynamic>>(updateStrategy, (value) => value.toMap()),
      'volumeClaimTemplates': ?pulumi.Input.mapOptionalInputValue<List<PersistentVolumeClaimPatch>, List<Map<String, dynamic>>>(volumeClaimTemplates, (value) => pulumi.Input.encodeList<PersistentVolumeClaimPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StatefulSetSpecPatchAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return StatefulSetSpecPatchAppsV1beta2(
      podManagementPolicy: (() { final guardedValue = map['podManagementPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      revisionHistoryLimit: (() { final guardedValue = map['revisionHistoryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodTemplateSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatefulSetUpdateStrategyPatchAppsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeClaimTemplates: (() { final guardedValue = map['volumeClaimTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PersistentVolumeClaimPatch>(guardedValue, (value) => PersistentVolumeClaimPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
