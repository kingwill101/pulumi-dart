// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_api_validation_response.dart';

class OpenApiConfigurationResponse {
  /// The open api validation.
  final pulumi.Input<OpenApiValidationResponse>? validation;

  /// Creates a new [OpenApiConfigurationResponse].
  /// [validation] The open api validation.
  OpenApiConfigurationResponse({
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validation': ?pulumi.Input.mapOptionalInputValue<OpenApiValidationResponse, Map<String, dynamic>>(validation, (value) => value.toMap()),
    };
  }

  factory OpenApiConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return OpenApiConfigurationResponse(
      validation: map['validation'] == null ? null : (OpenApiValidationResponse.fromMap((map['validation']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

