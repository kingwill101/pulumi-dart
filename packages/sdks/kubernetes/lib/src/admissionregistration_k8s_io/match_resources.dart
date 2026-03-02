// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector.dart';
import 'named_rule_with_operations.dart';

/// MatchResources decides whether to run the admission control policy on an object based on whether it meets the match criteria. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
class MatchResources {
  /// ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
  final pulumi.Input<List<NamedRuleWithOperations>>? excludeResourceRules;
  /// matchPolicy defines how the "MatchResources" list is used to match incoming requests. Allowed values are "Exact" or "Equivalent".
  ///
  /// - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the ValidatingAdmissionPolicy.
  ///
  /// - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the ValidatingAdmissionPolicy.
  ///
  /// Defaults to "Equivalent"
  final pulumi.Input<String>? matchPolicy;
  /// NamespaceSelector decides whether to run the admission control policy on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the policy.
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
  final pulumi.Input<LabelSelector>? namespaceSelector;
  /// ObjectSelector decides whether to run the validation based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the cel validation, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything.
  final pulumi.Input<LabelSelector>? objectSelector;
  /// ResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches _any_ Rule.
  final pulumi.Input<List<NamedRuleWithOperations>>? resourceRules;

  /// Creates a new [MatchResources].
  /// [excludeResourceRules] ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
  /// [matchPolicy] matchPolicy defines how the "MatchResources" list is used to match incoming requests. Allowed values are "Exact" or "Equivalent".
  /// [namespaceSelector] NamespaceSelector decides whether to run the admission control policy on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the policy.
  /// [objectSelector] ObjectSelector decides whether to run the validation based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the cel validation, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything.
  /// [resourceRules] ResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches _any_ Rule.
  MatchResources({
    this.excludeResourceRules,
    this.matchPolicy,
    this.namespaceSelector,
    this.objectSelector,
    this.resourceRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeResourceRules': ?pulumi.Input.mapOptionalInputValue<List<NamedRuleWithOperations>, List<Map<String, dynamic>>>(excludeResourceRules, (value) => pulumi.Input.encodeList<NamedRuleWithOperations, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchPolicy': ?matchPolicy,
      'namespaceSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(namespaceSelector, (value) => value.toMap()),
      'objectSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(objectSelector, (value) => value.toMap()),
      'resourceRules': ?pulumi.Input.mapOptionalInputValue<List<NamedRuleWithOperations>, List<Map<String, dynamic>>>(resourceRules, (value) => pulumi.Input.encodeList<NamedRuleWithOperations, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MatchResources.fromMap(Map<String, dynamic> map) {
    return MatchResources(
      excludeResourceRules: map['excludeResourceRules'] == null ? null : (pulumi.Input.decodeList<NamedRuleWithOperations>(map['excludeResourceRules']!, (value) => NamedRuleWithOperations.fromMap((value as Map).cast<String, dynamic>()))).input(),
      matchPolicy: map['matchPolicy'] == null ? null : (map['matchPolicy']! as String).input(),
      namespaceSelector: map['namespaceSelector'] == null ? null : (LabelSelector.fromMap((map['namespaceSelector']! as Map).cast<String, dynamic>())).input(),
      objectSelector: map['objectSelector'] == null ? null : (LabelSelector.fromMap((map['objectSelector']! as Map).cast<String, dynamic>())).input(),
      resourceRules: map['resourceRules'] == null ? null : (pulumi.Input.decodeList<NamedRuleWithOperations>(map['resourceRules']!, (value) => NamedRuleWithOperations.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

