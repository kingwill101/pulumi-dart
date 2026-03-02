// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamedResourcesFilter is used in ResourceFilterModel.
class NamedResourcesFilter {
  /// Selector is a CEL expression which must evaluate to true if a resource instance is suitable. The language is as defined in https://kubernetes.io/docs/reference/using-api/cel/
  ///
  /// In addition, for each type NamedResourcesin AttributeValue there is a map that resolves to the corresponding value of the instance under evaluation. For example:
  ///
  /// attributes.quantity["a"].isGreaterThan(quantity("0")) &&
  /// attributes.stringslice["b"].isSorted()
  final pulumi.Input<String> selector;

  /// Creates a new [NamedResourcesFilter].
  /// [selector] Selector is a CEL expression which must evaluate to true if a resource instance is suitable. The language is as defined in https://kubernetes.io/docs/reference/using-api/cel/
  NamedResourcesFilter({
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selector': selector,
    };
  }

  factory NamedResourcesFilter.fromMap(Map<String, dynamic> map) {
    return NamedResourcesFilter(
      selector: (map['selector'] as String).input(),
    );
  }
}

