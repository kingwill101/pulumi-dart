// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_selector_attributes_patch.dart';
import 'label_selector_attributes_patch.dart';

/// ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
class ResourceAttributesPatch {
  /// fieldSelector describes the limitation on access based on field.  It can only limit access, not broaden it.
  final pulumi.Input<FieldSelectorAttributesPatch>? fieldSelector;
  /// Group is the API Group of the Resource.  "*" means all.
  final pulumi.Input<String>? group;
  /// labelSelector describes the limitation on access based on labels.  It can only limit access, not broaden it.
  final pulumi.Input<LabelSelectorAttributesPatch>? labelSelector;
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

  /// Creates a new [ResourceAttributesPatch].
  /// [fieldSelector] fieldSelector describes the limitation on access based on field.  It can only limit access, not broaden it.
  /// [group] Group is the API Group of the Resource.  "*" means all.
  /// [labelSelector] labelSelector describes the limitation on access based on labels.  It can only limit access, not broaden it.
  /// [name] Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
  /// [namespace] Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
  /// [resource] Resource is one of the existing resource types.  "*" means all.
  /// [subresource] Subresource is one of the existing resource types.  "" means none.
  /// [verb] Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  /// [version] Version is the API Version of the Resource.  "*" means all.
  ResourceAttributesPatch({
    this.fieldSelector,
    this.group,
    this.labelSelector,
    this.name,
    this.namespace,
    this.resource,
    this.subresource,
    this.verb,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldSelector': ?pulumi.Input.mapOptionalInputValue<FieldSelectorAttributesPatch, Map<String, dynamic>>(fieldSelector, (value) => value.toMap()),
      'group': ?group,
      'labelSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorAttributesPatch, Map<String, dynamic>>(labelSelector, (value) => value.toMap()),
      'name': ?name,
      'namespace': ?namespace,
      'resource': ?resource,
      'subresource': ?subresource,
      'verb': ?verb,
      'version': ?version,
    };
  }

  factory ResourceAttributesPatch.fromMap(Map<String, dynamic> map) {
    return ResourceAttributesPatch(
      fieldSelector: map['fieldSelector'] == null ? null : (FieldSelectorAttributesPatch.fromMap((map['fieldSelector'] as Map).cast<String, dynamic>())).input(),
      group: map['group'] == null ? null : (map['group'] as String).input(),
      labelSelector: map['labelSelector'] == null ? null : (LabelSelectorAttributesPatch.fromMap((map['labelSelector'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      resource: map['resource'] == null ? null : (map['resource'] as String).input(),
      subresource: map['subresource'] == null ? null : (map['subresource'] as String).input(),
      verb: map['verb'] == null ? null : (map['verb'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

