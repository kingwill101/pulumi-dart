// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/persistent_volume_claim.dart';
import '../core/pod_template_spec.dart';
import '../meta/label_selector.dart';
import 'stateful_set_update_strategy_apps_v1beta2.dart';

/// A StatefulSetSpec is the specification of a StatefulSet.
class StatefulSetSpecAppsV1beta2 {
  /// podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
  final pulumi.Input<String>? podManagementPolicy;
  /// replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
  final pulumi.Input<int>? replicas;
  /// revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
  final pulumi.Input<int>? revisionHistoryLimit;
  /// selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final pulumi.Input<LabelSelector> selector;
  /// serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.
  final pulumi.Input<String> serviceName;
  /// template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.
  final pulumi.Input<PodTemplateSpec> template;
  /// updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
  final pulumi.Input<StatefulSetUpdateStrategyAppsV1beta2>? updateStrategy;
  /// volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
  final pulumi.Input<List<PersistentVolumeClaim>>? volumeClaimTemplates;

  /// Creates a new [StatefulSetSpecAppsV1beta2].
  /// [podManagementPolicy] podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
  /// [replicas] replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
  /// [revisionHistoryLimit] revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
  /// [selector] selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// [serviceName] serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.
  /// [template] template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.
  /// [updateStrategy] updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
  /// [volumeClaimTemplates] volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
  StatefulSetSpecAppsV1beta2({
    this.podManagementPolicy,
    this.replicas,
    this.revisionHistoryLimit,
    required this.selector,
    required this.serviceName,
    required this.template,
    this.updateStrategy,
    this.volumeClaimTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podManagementPolicy': ?podManagementPolicy,
      'replicas': ?replicas,
      'revisionHistoryLimit': ?revisionHistoryLimit,
      'selector': pulumi.Input.mapInputValue<LabelSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'serviceName': serviceName,
      'template': pulumi.Input.mapInputValue<PodTemplateSpec, Map<String, dynamic>>(template, (value) => value.toMap()),
      'updateStrategy': ?pulumi.Input.mapOptionalInputValue<StatefulSetUpdateStrategyAppsV1beta2, Map<String, dynamic>>(updateStrategy, (value) => value.toMap()),
      'volumeClaimTemplates': ?pulumi.Input.mapOptionalInputValue<List<PersistentVolumeClaim>, List<Map<String, dynamic>>>(volumeClaimTemplates, (value) => pulumi.Input.encodeList<PersistentVolumeClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StatefulSetSpecAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return StatefulSetSpecAppsV1beta2(
      podManagementPolicy: map['podManagementPolicy'] == null ? null : (map['podManagementPolicy']! as String).input(),
      replicas: map['replicas'] == null ? null : (map['replicas']! as int).input(),
      revisionHistoryLimit: map['revisionHistoryLimit'] == null ? null : (map['revisionHistoryLimit']! as int).input(),
      selector: (LabelSelector.fromMap((map['selector'] as Map).cast<String, dynamic>())).input(),
      serviceName: (map['serviceName'] as String).input(),
      template: (PodTemplateSpec.fromMap((map['template'] as Map).cast<String, dynamic>())).input(),
      updateStrategy: map['updateStrategy'] == null ? null : (StatefulSetUpdateStrategyAppsV1beta2.fromMap((map['updateStrategy']! as Map).cast<String, dynamic>())).input(),
      volumeClaimTemplates: map['volumeClaimTemplates'] == null ? null : (pulumi.Input.decodeList<PersistentVolumeClaim>(map['volumeClaimTemplates']!, (value) => PersistentVolumeClaim.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

