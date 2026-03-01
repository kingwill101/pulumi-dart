// ignore_for_file: unused_element, unnecessary_cast

import 'jsonschema_props.dart';

/// CustomResourceValidation is a list of validation methods for CustomResources.
class CustomResourceValidation {
  /// openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  final JSONSchemaProps? openAPIV3Schema;

  /// Creates a new [CustomResourceValidation].
  /// [openAPIV3Schema] openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  CustomResourceValidation({
    this.openAPIV3Schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openAPIV3Schema': ?openAPIV3Schema == null ? null : openAPIV3Schema!.toMap(),
    };
  }

  factory CustomResourceValidation.fromMap(Map<String, dynamic> map) {
    return CustomResourceValidation(
      openAPIV3Schema: map['openAPIV3Schema'] == null ? null : JSONSchemaProps.fromMap((map['openAPIV3Schema'] as Map).cast<String, dynamic>()),
    );
  }
}

