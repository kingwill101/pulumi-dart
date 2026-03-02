// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jsonschema_props_patch.dart';

/// CustomResourceValidation is a list of validation methods for CustomResources.
class CustomResourceValidationPatch {
  /// openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  final pulumi.Input<JSONSchemaPropsPatch>? openAPIV3Schema;

  /// Creates a new [CustomResourceValidationPatch].
  /// [openAPIV3Schema] openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  CustomResourceValidationPatch({
    this.openAPIV3Schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openAPIV3Schema': ?pulumi.Input.mapOptionalInputValue<JSONSchemaPropsPatch, Map<String, dynamic>>(openAPIV3Schema, (value) => value.toMap()),
    };
  }

  factory CustomResourceValidationPatch.fromMap(Map<String, dynamic> map) {
    return CustomResourceValidationPatch(
      openAPIV3Schema: map['openAPIV3Schema'] == null ? null : (JSONSchemaPropsPatch.fromMap((map['openAPIV3Schema'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

