// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// APIResource specifies the name of a resource and whether it is namespaced.
class APIResource {
  /// categories is a list of the grouped resources this resource belongs to (e.g. 'all')
  final pulumi.Input<List<String>>? categories;
  /// group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale".
  final pulumi.Input<String>? group;
  /// kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
  final pulumi.Input<String> kind;
  /// name is the plural name of the resource.
  final pulumi.Input<String> name;
  /// namespaced indicates if a resource is namespaced or not.
  final pulumi.Input<bool> namespaced;
  /// shortNames is a list of suggested short names of the resource.
  final pulumi.Input<List<String>>? shortNames;
  /// singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
  final pulumi.Input<String> singularName;
  /// The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.
  final pulumi.Input<String>? storageVersionHash;
  /// verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
  final pulumi.Input<List<String>> verbs;
  /// version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
  final pulumi.Input<String>? version;

  /// Creates a new [APIResource].
  /// [categories] categories is a list of the grouped resources this resource belongs to (e.g. 'all')
  /// [group] group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale".
  /// [kind] kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
  /// [name] name is the plural name of the resource.
  /// [namespaced] namespaced indicates if a resource is namespaced or not.
  /// [shortNames] shortNames is a list of suggested short names of the resource.
  /// [singularName] singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
  /// [storageVersionHash] The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.
  /// [verbs] verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
  /// [version] version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
  const APIResource({
    this.categories,
    this.group,
    required this.kind,
    required this.name,
    required this.namespaced,
    this.shortNames,
    required this.singularName,
    this.storageVersionHash,
    required this.verbs,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?categories,
      'group': ?group,
      'kind': kind,
      'name': name,
      'namespaced': namespaced,
      'shortNames': ?shortNames,
      'singularName': singularName,
      'storageVersionHash': ?storageVersionHash,
      'verbs': verbs,
      'version': ?version,
    };
  }

  factory APIResource.fromMap(Map<String, dynamic> map) {
    return APIResource(
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaced: pulumi.Input.fromValue(map['namespaced'] as bool),
      shortNames: (() { final guardedValue = map['shortNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      singularName: pulumi.Input.fromValue(map['singularName'] as String),
      storageVersionHash: (() { final guardedValue = map['storageVersionHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verbs: pulumi.Input.fromValue((map['verbs'] as List).cast<String>()),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

