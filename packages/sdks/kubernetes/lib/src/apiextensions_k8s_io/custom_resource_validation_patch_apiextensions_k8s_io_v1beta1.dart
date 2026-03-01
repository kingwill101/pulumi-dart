// ignore_for_file: unused_element, unnecessary_cast

import 'jsonschema_props_patch_apiextensions_k8s_io_v1beta1.dart';

/// CustomResourceValidation is a list of validation methods for CustomResources.
class CustomResourceValidationPatchApiextensionsK8sIoV1beta1 {
  /// openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  final JSONSchemaPropsPatchApiextensionsK8sIoV1beta1? openAPIV3Schema;

  /// Creates a new [CustomResourceValidationPatchApiextensionsK8sIoV1beta1].
  /// [openAPIV3Schema] openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  CustomResourceValidationPatchApiextensionsK8sIoV1beta1({
    this.openAPIV3Schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openAPIV3Schema': ?openAPIV3Schema == null ? null : openAPIV3Schema!.toMap(),
    };
  }

  factory CustomResourceValidationPatchApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceValidationPatchApiextensionsK8sIoV1beta1(
      openAPIV3Schema: map['openAPIV3Schema'] == null ? null : JSONSchemaPropsPatchApiextensionsK8sIoV1beta1.fromMap((map['openAPIV3Schema'] as Map).cast<String, dynamic>()),
    );
  }
}

