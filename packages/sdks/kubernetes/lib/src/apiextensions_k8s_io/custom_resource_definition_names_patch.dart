// ignore_for_file: unused_element, unnecessary_cast


/// CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
class CustomResourceDefinitionNamesPatch {
  /// categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
  final List<String>? categories;
  /// kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
  final String? kind;
  /// listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
  final String? listKind;
  /// plural is the plural name of the resource to serve. The custom resources are served under `/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.
  final String? plural;
  /// shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase.
  final List<String>? shortNames;
  /// singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
  final String? singular;

  /// Creates a new [CustomResourceDefinitionNamesPatch].
  /// [categories] categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
  /// [kind] kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
  /// [listKind] listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
  /// [plural] plural is the plural name of the resource to serve. The custom resources are served under `/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.
  /// [shortNames] shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase.
  /// [singular] singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
  CustomResourceDefinitionNamesPatch({
    this.categories,
    this.kind,
    this.listKind,
    this.plural,
    this.shortNames,
    this.singular,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?categories,
      'kind': ?kind,
      'listKind': ?listKind,
      'plural': ?plural,
      'shortNames': ?shortNames,
      'singular': ?singular,
    };
  }

  factory CustomResourceDefinitionNamesPatch.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionNamesPatch(
      categories: map['categories'] == null ? null : (map['categories'] as List).cast<String>(),
      kind: map['kind'] == null ? null : map['kind'] as String,
      listKind: map['listKind'] == null ? null : map['listKind'] as String,
      plural: map['plural'] == null ? null : map['plural'] as String,
      shortNames: map['shortNames'] == null ? null : (map['shortNames'] as List).cast<String>(),
      singular: map['singular'] == null ? null : map['singular'] as String,
    );
  }
}

