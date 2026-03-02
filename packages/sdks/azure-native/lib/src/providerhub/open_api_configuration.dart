// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_api_validation.dart';

class OpenApiConfiguration {
  /// The open api validation.
  final pulumi.Input<OpenApiValidation>? validation;

  /// Creates a new [OpenApiConfiguration].
  /// [validation] The open api validation.
  OpenApiConfiguration({
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validation': ?pulumi.Input.mapOptionalInputValue<OpenApiValidation, Map<String, dynamic>>(validation, (value) => value.toMap()),
    };
  }

  factory OpenApiConfiguration.fromMap(Map<String, dynamic> map) {
    return OpenApiConfiguration(
      validation: map['validation'] == null ? null : (OpenApiValidation.fromMap((map['validation']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

