// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jsonschema_props_patch.dart';

/// CustomResourceValidation is a list of validation methods for CustomResources.
class CustomResourceValidationPatch {
  /// openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  final pulumi.Input<JSONSchemaPropsPatch?>? openAPIV3Schema;

  /// Creates a new [CustomResourceValidationPatch].
  /// [openAPIV3Schema] openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  const CustomResourceValidationPatch({
    this.openAPIV3Schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openAPIV3Schema': ?pulumi.Input.mapOptionalInputValue<JSONSchemaPropsPatch, Map<String, dynamic>>(openAPIV3Schema, (value) => value.toMap()),
    };
  }

  factory CustomResourceValidationPatch.fromMap(Map<String, dynamic> map) {
    return CustomResourceValidationPatch(
      openAPIV3Schema: (() { final guardedValue = map['openAPIV3Schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JSONSchemaPropsPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
