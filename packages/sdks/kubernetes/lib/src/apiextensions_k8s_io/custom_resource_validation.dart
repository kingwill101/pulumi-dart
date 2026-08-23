// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jsonschema_props.dart';

/// CustomResourceValidation is a list of validation methods for CustomResources.
class CustomResourceValidation {
  /// openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  final pulumi.Input<JSONSchemaProps>? openAPIV3Schema;

  /// Creates a new [CustomResourceValidation].
  /// [openAPIV3Schema] openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  const CustomResourceValidation({
    this.openAPIV3Schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openAPIV3Schema': ?pulumi.Input.mapOptionalInputValue<JSONSchemaProps, Map<String, dynamic>>(openAPIV3Schema, (value) => value.toMap()),
    };
  }

  factory CustomResourceValidation.fromMap(Map<String, dynamic> map) {
    return CustomResourceValidation(
      openAPIV3Schema: (() { final guardedValue = map['openAPIV3Schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JSONSchemaProps.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
