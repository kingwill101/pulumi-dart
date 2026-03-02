// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identifier_helper_response.dart';

/// Product contains information about a product and how to uniquely identify it.
class ProductResponseContaineranalysisV1alpha1 {
  /// Helps in identifying the underlying product.
  final pulumi.Input<IdentifierHelperResponse> identifierHelper;
  /// Name of the product.
  final pulumi.Input<String> name;

  /// Creates a new [ProductResponseContaineranalysisV1alpha1].
  /// [identifierHelper] Helps in identifying the underlying product.
  /// [name] Name of the product.
  ProductResponseContaineranalysisV1alpha1({
    required this.identifierHelper,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifierHelper': pulumi.Input.mapInputValue<IdentifierHelperResponse, Map<String, dynamic>>(identifierHelper, (value) => value.toMap()),
      'name': name,
    };
  }

  factory ProductResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return ProductResponseContaineranalysisV1alpha1(
      identifierHelper: (IdentifierHelperResponse.fromMap((map['identifierHelper'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

