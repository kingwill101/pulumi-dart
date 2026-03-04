// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
class CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1 {
  /// categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
  final pulumi.Input<List<String>>? categories;

  /// kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
  final pulumi.Input<String>? kind;

  /// listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
  final pulumi.Input<String>? listKind;

  /// plural is the plural name of the resource to serve. The custom resources are served under `/apis/&lt;group&gt;/&lt;version&gt;/.../&lt;plural&gt;`. Must match the name of the CustomResourceDefinition (in the form `&lt;names.plural&gt;.&lt;group&gt;`). Must be all lowercase.
  final pulumi.Input<String>? plural;

  /// shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get &lt;shortname&gt;`. It must be all lowercase.
  final pulumi.Input<List<String>>? shortNames;

  /// singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
  final pulumi.Input<String>? singular;

  /// Creates a new [CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1].
  /// [categories] categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
  /// [kind] kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
  /// [listKind] listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
  /// [plural] plural is the plural name of the resource to serve. The custom resources are served under `/apis/&lt;group&gt;/&lt;version&gt;/.../&lt;plural&gt;`. Must match the name of the CustomResourceDefinition (in the form `&lt;names.plural&gt;.&lt;group&gt;`). Must be all lowercase.
  /// [shortNames] shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get &lt;shortname&gt;`. It must be all lowercase.
  /// [singular] singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
  CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1({
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

  factory CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1(
      categories: (() {
        final guardedValue = map['categories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      listKind: (() {
        final guardedValue = map['listKind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      plural: (() {
        final guardedValue = map['plural'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shortNames: (() {
        final guardedValue = map['shortNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      singular: (() {
        final guardedValue = map['singular'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
