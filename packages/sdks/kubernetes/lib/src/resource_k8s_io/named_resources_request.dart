// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamedResourcesRequest is used in ResourceRequestModel.
class NamedResourcesRequest {
  /// Selector is a CEL expression which must evaluate to true if a resource instance is suitable. The language is as defined in https://kubernetes.io/docs/reference/using-api/cel/
  ///
  /// In addition, for each type NamedResourcesin AttributeValue there is a map that resolves to the corresponding value of the instance under evaluation. For example:
  ///
  /// attributes.quantity["a"].isGreaterThan(quantity("0")) &&
  /// attributes.stringslice["b"].isSorted()
  final pulumi.Input<String> selector;

  /// Creates a new [NamedResourcesRequest].
  /// [selector] Selector is a CEL expression which must evaluate to true if a resource instance is suitable. The language is as defined in https://kubernetes.io/docs/reference/using-api/cel/
  NamedResourcesRequest({required this.selector});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'selector': selector};
  }

  factory NamedResourcesRequest.fromMap(Map<String, dynamic> map) {
    return NamedResourcesRequest(
      selector: pulumi.Input.fromValue(map['selector'] as String),
    );
  }
}
