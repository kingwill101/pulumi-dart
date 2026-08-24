// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSchemaValidationSchemasFilter {
  /// Filter for enabled schemas
  final pulumi.Input<bool?>? validationEnabled;

  /// Creates a new [GetSchemaValidationSchemasFilter].
  /// [validationEnabled] Filter for enabled schemas
  const GetSchemaValidationSchemasFilter({
    this.validationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validationEnabled': ?validationEnabled,
    };
  }

  factory GetSchemaValidationSchemasFilter.fromMap(Map<String, dynamic> map) {
    return GetSchemaValidationSchemasFilter(
      validationEnabled: (() { final guardedValue = map['validationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
