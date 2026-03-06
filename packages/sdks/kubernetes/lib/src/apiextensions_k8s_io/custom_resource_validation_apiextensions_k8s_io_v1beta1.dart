// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jsonschema_props_apiextensions_k8s_io_v1beta1.dart';

/// CustomResourceValidation is a list of validation methods for CustomResources.
class CustomResourceValidationApiextensionsK8sIoV1beta1 {
  /// openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  final pulumi.Input<JSONSchemaPropsApiextensionsK8sIoV1beta1>? openAPIV3Schema;

  /// Creates a new [CustomResourceValidationApiextensionsK8sIoV1beta1].
  /// [openAPIV3Schema] openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  const CustomResourceValidationApiextensionsK8sIoV1beta1({
    this.openAPIV3Schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openAPIV3Schema': ?pulumi.Input.mapOptionalInputValue<JSONSchemaPropsApiextensionsK8sIoV1beta1, Map<String, dynamic>>(openAPIV3Schema, (value) => value.toMap()),
    };
  }

  factory CustomResourceValidationApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceValidationApiextensionsK8sIoV1beta1(
      openAPIV3Schema: (() { final guardedValue = map['openAPIV3Schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JSONSchemaPropsApiextensionsK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

