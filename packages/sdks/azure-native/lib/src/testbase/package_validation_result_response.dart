// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The validation results. There's validation on package when it's created or updated.
class PackageValidationResultResponse {
  /// Error information.
  final pulumi.Input<List<String>> errors;
  /// Indicates whether the package passed the validation.
  final pulumi.Input<bool> isValid;
  /// Validation name.
  final pulumi.Input<String> validationName;

  /// Creates a new [PackageValidationResultResponse].
  /// [errors] Error information.
  /// [isValid] Indicates whether the package passed the validation.
  /// [validationName] Validation name.
  const PackageValidationResultResponse({
    required this.errors,
    required this.isValid,
    required this.validationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': errors,
      'isValid': isValid,
      'validationName': validationName,
    };
  }

  factory PackageValidationResultResponse.fromMap(Map<String, dynamic> map) {
    return PackageValidationResultResponse(
      errors: pulumi.Input.fromValue((map['errors'] as List).cast<String>()),
      isValid: pulumi.Input.fromValue(map['isValid'] as bool),
      validationName: pulumi.Input.fromValue(map['validationName'] as String),
    );
  }
}
