// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';
import 'named_rule_with_operations_patch_admissionregistration_k8s_io_v1alpha1.dart';

/// MatchResources decides whether to run the admission control policy on an object based on whether it meets the match criteria. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
class MatchResourcesPatchAdmissionregistrationK8sIoV1alpha1 {
  /// excludeResourceRules describes what operations on what resources/subresources the policy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
  final pulumi.Input<List<NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1alpha1>?>? excludeResourceRules;
  /// matchPolicy defines how the "MatchResources" list is used to match incoming requests. Allowed values are "Exact" or "Equivalent".
  ///
  /// - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, the admission policy does not consider requests to apps/v1beta1 or extensions/v1beta1 API groups.
  ///
  /// - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, the admission policy **does** consider requests made to apps/v1beta1 or extensions/v1beta1 API groups. The API server translates the request to a matched resource API if necessary.
  ///
  /// Defaults to "Equivalent"
  final pulumi.Input<String?>? matchPolicy;
  /// namespaceSelector decides whether to run the admission control policy on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the policy.
  ///
  /// For example, to run the webhook on any objects whose namespace is not associated with "runlevel" of "0" or "1";  you will set the selector as follows: "namespaceSelector": {
  /// "matchExpressions": [
  /// {
  /// "key": "runlevel",
  /// "operator": "NotIn",
  /// "values": [
  /// "0",
  /// "1"
  /// ]
  /// }
  /// ]
  /// }
  ///
  /// If instead you want to only run the policy on any objects whose namespace is associated with the "environment" of "prod" or "staging"; you will set the selector as follows: "namespaceSelector": {
  /// "matchExpressions": [
  /// {
  /// "key": "environment",
  /// "operator": "In",
  /// "values": [
  /// "prod",
  /// "staging"
  /// ]
  /// }
  /// ]
  /// }
  ///
  /// See https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.
  ///
  /// Default to the empty LabelSelector, which matches everything.
  final pulumi.Input<LabelSelectorPatch?>? namespaceSelector;
  /// objectSelector decides whether to run the policy based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the policy's expression (CEL), and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything.
  final pulumi.Input<LabelSelectorPatch?>? objectSelector;
  /// resourceRules describes what operations on what resources/subresources the admission policy matches. The policy cares about an operation if it matches _any_ Rule.
  final pulumi.Input<List<NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1alpha1>?>? resourceRules;

  /// Creates a new [MatchResourcesPatchAdmissionregistrationK8sIoV1alpha1].
  /// [excludeResourceRules] excludeResourceRules describes what operations on what resources/subresources the policy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
  /// [matchPolicy] matchPolicy defines how the "MatchResources" list is used to match incoming requests. Allowed values are "Exact" or "Equivalent".
  /// [namespaceSelector] namespaceSelector decides whether to run the admission control policy on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the policy.
  /// [objectSelector] objectSelector decides whether to run the policy based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the policy's expression (CEL), and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything.
  /// [resourceRules] resourceRules describes what operations on what resources/subresources the admission policy matches. The policy cares about an operation if it matches _any_ Rule.
  const MatchResourcesPatchAdmissionregistrationK8sIoV1alpha1({
    this.excludeResourceRules,
    this.matchPolicy,
    this.namespaceSelector,
    this.objectSelector,
    this.resourceRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeResourceRules': ?pulumi.Input.mapOptionalInputValue<List<NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1alpha1>, List<Map<String, dynamic>>>(excludeResourceRules, (value) => pulumi.Input.encodeList<NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchPolicy': ?matchPolicy,
      'namespaceSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(namespaceSelector, (value) => value.toMap()),
      'objectSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(objectSelector, (value) => value.toMap()),
      'resourceRules': ?pulumi.Input.mapOptionalInputValue<List<NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1alpha1>, List<Map<String, dynamic>>>(resourceRules, (value) => pulumi.Input.encodeList<NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MatchResourcesPatchAdmissionregistrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return MatchResourcesPatchAdmissionregistrationK8sIoV1alpha1(
      excludeResourceRules: (() { final guardedValue = map['excludeResourceRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1alpha1>(guardedValue, (value) => NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchPolicy: (() { final guardedValue = map['matchPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceSelector: (() { final guardedValue = map['namespaceSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objectSelector: (() { final guardedValue = map['objectSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceRules: (() { final guardedValue = map['resourceRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1alpha1>(guardedValue, (value) => NamedRuleWithOperationsPatchAdmissionregistrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
