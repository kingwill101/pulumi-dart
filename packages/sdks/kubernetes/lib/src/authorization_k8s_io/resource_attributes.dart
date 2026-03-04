// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_selector_attributes.dart';
import 'label_selector_attributes.dart';

/// ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
class ResourceAttributes {
  /// fieldSelector describes the limitation on access based on field.  It can only limit access, not broaden it.
  final pulumi.Input<FieldSelectorAttributes>? fieldSelector;

  /// Group is the API Group of the Resource.  "*" means all.
  final pulumi.Input<String>? group;

  /// labelSelector describes the limitation on access based on labels.  It can only limit access, not broaden it.
  final pulumi.Input<LabelSelectorAttributes>? labelSelector;

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

  /// Creates a new [ResourceAttributes].
  /// [fieldSelector] fieldSelector describes the limitation on access based on field.  It can only limit access, not broaden it.
  /// [group] Group is the API Group of the Resource.  "*" means all.
  /// [labelSelector] labelSelector describes the limitation on access based on labels.  It can only limit access, not broaden it.
  /// [name] Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
  /// [namespace] Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
  /// [resource] Resource is one of the existing resource types.  "*" means all.
  /// [subresource] Subresource is one of the existing resource types.  "" means none.
  /// [verb] Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  /// [version] Version is the API Version of the Resource.  "*" means all.
  ResourceAttributes({
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
      'fieldSelector':
          ?pulumi.Input.mapOptionalInputValue<
            FieldSelectorAttributes,
            Map<String, dynamic>
          >(fieldSelector, (value) => value.toMap()),
      'group': ?group,
      'labelSelector':
          ?pulumi.Input.mapOptionalInputValue<
            LabelSelectorAttributes,
            Map<String, dynamic>
          >(labelSelector, (value) => value.toMap()),
      'name': ?name,
      'namespace': ?namespace,
      'resource': ?resource,
      'subresource': ?subresource,
      'verb': ?verb,
      'version': ?version,
    };
  }

  factory ResourceAttributes.fromMap(Map<String, dynamic> map) {
    return ResourceAttributes(
      fieldSelector: (() {
        final guardedValue = map['fieldSelector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FieldSelectorAttributes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      group: (() {
        final guardedValue = map['group'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labelSelector: (() {
        final guardedValue = map['labelSelector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LabelSelectorAttributes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resource: (() {
        final guardedValue = map['resource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subresource: (() {
        final guardedValue = map['subresource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      verb: (() {
        final guardedValue = map['verb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
