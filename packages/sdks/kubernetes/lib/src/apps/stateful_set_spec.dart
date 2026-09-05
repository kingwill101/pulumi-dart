// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/persistent_volume_claim.dart';
import '../core/pod_template_spec.dart';
import '../meta/label_selector.dart';
import 'stateful_set_ordinals.dart';
import 'stateful_set_persistent_volume_claim_retention_policy.dart';
import 'stateful_set_update_strategy.dart';

/// A StatefulSetSpec is the specification of a StatefulSet.
class StatefulSetSpec {
  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  final pulumi.Input<int?>? minReadySeconds;
  /// ordinals controls the numbering of replica indices in a StatefulSet. The default ordinals behavior assigns a "0" index to the first replica and increments the index by one for each additional replica requested.
  final pulumi.Input<StatefulSetOrdinals?>? ordinals;
  /// persistentVolumeClaimRetentionPolicy describes the lifecycle of persistent volume claims created from volumeClaimTemplates. By default, all persistent volume claims are created as needed and retained until manually deleted. This policy allows the lifecycle to be altered, for example by deleting persistent volume claims when their stateful set is deleted, or when their pod is scaled down.
  final pulumi.Input<StatefulSetPersistentVolumeClaimRetentionPolicy?>? persistentVolumeClaimRetentionPolicy;
  /// podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
  final pulumi.Input<String?>? podManagementPolicy;
  /// replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
  final pulumi.Input<int?>? replicas;
  /// revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
  final pulumi.Input<int?>? revisionHistoryLimit;
  /// selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final pulumi.Input<LabelSelector> selector;
  /// serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.
  final pulumi.Input<String?>? serviceName;
  /// template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet. Each pod will be named with the format &lt;statefulsetname&gt;-&lt;podindex&gt;. For example, a pod in a StatefulSet named "web" with index number "3" would be named "web-3". The only allowed template.spec.restartPolicy value is "Always".
  final pulumi.Input<PodTemplateSpec> template;
  /// updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
  final pulumi.Input<StatefulSetUpdateStrategy?>? updateStrategy;
  /// volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
  final pulumi.Input<List<PersistentVolumeClaim>?>? volumeClaimTemplates;

  /// Creates a new [StatefulSetSpec].
  /// [minReadySeconds] Minimum number of seconds for which a newly created pod should be ready without any of its container crashing for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  /// [ordinals] ordinals controls the numbering of replica indices in a StatefulSet. The default ordinals behavior assigns a "0" index to the first replica and increments the index by one for each additional replica requested.
  /// [persistentVolumeClaimRetentionPolicy] persistentVolumeClaimRetentionPolicy describes the lifecycle of persistent volume claims created from volumeClaimTemplates. By default, all persistent volume claims are created as needed and retained until manually deleted. This policy allows the lifecycle to be altered, for example by deleting persistent volume claims when their stateful set is deleted, or when their pod is scaled down.
  /// [podManagementPolicy] podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
  /// [replicas] replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
  /// [revisionHistoryLimit] revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
  /// [selector] selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// [serviceName] serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.
  /// [template] template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet. Each pod will be named with the format &lt;statefulsetname&gt;-&lt;podindex&gt;. For example, a pod in a StatefulSet named "web" with index number "3" would be named "web-3". The only allowed template.spec.restartPolicy value is "Always".
  /// [updateStrategy] updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
  /// [volumeClaimTemplates] volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
  const StatefulSetSpec({
    this.minReadySeconds,
    this.ordinals,
    this.persistentVolumeClaimRetentionPolicy,
    this.podManagementPolicy,
    this.replicas,
    this.revisionHistoryLimit,
    required this.selector,
    this.serviceName,
    required this.template,
    this.updateStrategy,
    this.volumeClaimTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReadySeconds': ?minReadySeconds,
      'ordinals': ?pulumi.Input.mapOptionalInputValue<StatefulSetOrdinals, Map<String, dynamic>>(ordinals, (value) => value.toMap()),
      'persistentVolumeClaimRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<StatefulSetPersistentVolumeClaimRetentionPolicy, Map<String, dynamic>>(persistentVolumeClaimRetentionPolicy, (value) => value.toMap()),
      'podManagementPolicy': ?podManagementPolicy,
      'replicas': ?replicas,
      'revisionHistoryLimit': ?revisionHistoryLimit,
      'selector': pulumi.Input.mapInputValue<LabelSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'serviceName': ?serviceName,
      'template': pulumi.Input.mapInputValue<PodTemplateSpec, Map<String, dynamic>>(template, (value) => value.toMap()),
      'updateStrategy': ?pulumi.Input.mapOptionalInputValue<StatefulSetUpdateStrategy, Map<String, dynamic>>(updateStrategy, (value) => value.toMap()),
      'volumeClaimTemplates': ?pulumi.Input.mapOptionalInputValue<List<PersistentVolumeClaim>, List<Map<String, dynamic>>>(volumeClaimTemplates, (value) => pulumi.Input.encodeList<PersistentVolumeClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StatefulSetSpec.fromMap(Map<String, dynamic> map) {
    return StatefulSetSpec(
      minReadySeconds: (() { final guardedValue = map['minReadySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ordinals: (() { final guardedValue = map['ordinals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatefulSetOrdinals.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistentVolumeClaimRetentionPolicy: (() { final guardedValue = map['persistentVolumeClaimRetentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatefulSetPersistentVolumeClaimRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podManagementPolicy: (() { final guardedValue = map['podManagementPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      revisionHistoryLimit: (() { final guardedValue = map['revisionHistoryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      selector: pulumi.Input.fromValue(LabelSelector.fromMap((map['selector']! as Map).cast<String, dynamic>())),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      template: pulumi.Input.fromValue(PodTemplateSpec.fromMap((map['template']! as Map).cast<String, dynamic>())),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatefulSetUpdateStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeClaimTemplates: (() { final guardedValue = map['volumeClaimTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PersistentVolumeClaim>(guardedValue, (value) => PersistentVolumeClaim.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
