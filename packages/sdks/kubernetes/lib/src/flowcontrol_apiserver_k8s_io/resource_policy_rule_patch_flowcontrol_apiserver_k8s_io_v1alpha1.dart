// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourcePolicyRule is a predicate that matches some resource requests, testing the request's verb and the target resource. A ResourcePolicyRule matches a resource request if and only if: (a) at least one member of verbs matches the request, (b) at least one member of apiGroups matches the request, (c) at least one member of resources matches the request, and (d) least one member of namespaces matches the request.
class ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1alpha1 {
  /// `apiGroups` is a list of matching API groups and may not be empty. "*" matches all API groups and, if present, must be the only entry. Required.
  final pulumi.Input<List<String>>? apiGroups;
  /// `clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.
  final pulumi.Input<bool>? clusterScope;
  /// `namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains "*".  Note that "*" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.
  final pulumi.Input<List<String>>? namespaces;
  /// `resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ "services", "nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.
  final pulumi.Input<List<String>>? resources;
  /// `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs and, if present, must be the only entry. Required.
  final pulumi.Input<List<String>>? verbs;

  /// Creates a new [ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1alpha1].
  /// [apiGroups] `apiGroups` is a list of matching API groups and may not be empty. "*" matches all API groups and, if present, must be the only entry. Required.
  /// [clusterScope] `clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.
  /// [namespaces] `namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains "*".  Note that "*" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.
  /// [resources] `resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ "services", "nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.
  /// [verbs] `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs and, if present, must be the only entry. Required.
  ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1alpha1({
    this.apiGroups,
    this.clusterScope,
    this.namespaces,
    this.resources,
    this.verbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroups': ?apiGroups,
      'clusterScope': ?clusterScope,
      'namespaces': ?namespaces,
      'resources': ?resources,
      'verbs': ?verbs,
    };
  }

  factory ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyRulePatchFlowcontrolApiserverK8sIoV1alpha1(
      apiGroups: map['apiGroups'] == null ? null : ((map['apiGroups']! as List).cast<String>()).input(),
      clusterScope: map['clusterScope'] == null ? null : (map['clusterScope']! as bool).input(),
      namespaces: map['namespaces'] == null ? null : ((map['namespaces']! as List).cast<String>()).input(),
      resources: map['resources'] == null ? null : ((map['resources']! as List).cast<String>()).input(),
      verbs: map['verbs'] == null ? null : ((map['verbs']! as List).cast<String>()).input(),
    );
  }
}

