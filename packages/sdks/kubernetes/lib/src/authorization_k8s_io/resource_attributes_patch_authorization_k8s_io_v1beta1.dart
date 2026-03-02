// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
class ResourceAttributesPatchAuthorizationK8sIoV1beta1 {
  /// Group is the API Group of the Resource.  "*" means all.
  final pulumi.Input<String>? group;
  /// Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
  final pulumi.Input<String>? name;
  /// Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
  final pulumi.Input<String>? namespace;
  /// Resource is one of the existing resource types.  "*" means all.
  final pulumi.Input<String>? resource;
  /// Subresource is one of the existing resource types.  "" means none.
  final pulumi.Input<String>? subresource;
  /// Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  final pulumi.Input<String>? verb;
  /// Version is the API Version of the Resource.  "*" means all.
  final pulumi.Input<String>? version;

  /// Creates a new [ResourceAttributesPatchAuthorizationK8sIoV1beta1].
  /// [group] Group is the API Group of the Resource.  "*" means all.
  /// [name] Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
  /// [namespace] Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
  /// [resource] Resource is one of the existing resource types.  "*" means all.
  /// [subresource] Subresource is one of the existing resource types.  "" means none.
  /// [verb] Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  /// [version] Version is the API Version of the Resource.  "*" means all.
  ResourceAttributesPatchAuthorizationK8sIoV1beta1({
    this.group,
    this.name,
    this.namespace,
    this.resource,
    this.subresource,
    this.verb,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'name': ?name,
      'namespace': ?namespace,
      'resource': ?resource,
      'subresource': ?subresource,
      'verb': ?verb,
      'version': ?version,
    };
  }

  factory ResourceAttributesPatchAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceAttributesPatchAuthorizationK8sIoV1beta1(
      group: map['group'] == null ? null : (map['group'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      resource: map['resource'] == null ? null : (map['resource'] as String).input(),
      subresource: map['subresource'] == null ? null : (map['subresource'] as String).input(),
      verb: map['verb'] == null ? null : (map['verb'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

