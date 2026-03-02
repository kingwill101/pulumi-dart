// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamedResourcesRequest is used in ResourceRequestModel.
class NamedResourcesRequestPatch {
  /// Selector is a CEL expression which must evaluate to true if a resource instance is suitable. The language is as defined in https://kubernetes.io/docs/reference/using-api/cel/
  ///
  /// In addition, for each type NamedResourcesin AttributeValue there is a map that resolves to the corresponding value of the instance under evaluation. For example:
  ///
  /// attributes.quantity["a"].isGreaterThan(quantity("0")) &&
  /// attributes.stringslice["b"].isSorted()
  final pulumi.Input<String>? selector;

  /// Creates a new [NamedResourcesRequestPatch].
  /// [selector] Selector is a CEL expression which must evaluate to true if a resource instance is suitable. The language is as defined in https://kubernetes.io/docs/reference/using-api/cel/
  NamedResourcesRequestPatch({
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selector': ?selector,
    };
  }

  factory NamedResourcesRequestPatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesRequestPatch(
      selector: map['selector'] == null ? null : (map['selector']! as String).input(),
    );
  }
}

