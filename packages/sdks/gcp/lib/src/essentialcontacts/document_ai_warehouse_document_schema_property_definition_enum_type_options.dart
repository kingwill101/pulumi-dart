// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions {
  /// List of possible enum values.
  final pulumi.Input<List<String>> possibleValues;
  /// Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default.
  final pulumi.Input<bool>? validationCheckDisabled;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions].
  /// [possibleValues] List of possible enum values.
  /// [validationCheckDisabled] Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default.
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions({
    required this.possibleValues,
    this.validationCheckDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'possibleValues': possibleValues,
      'validationCheckDisabled': ?validationCheckDisabled,
    };
  }

  factory DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions.fromMap(Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions(
      possibleValues: pulumi.Input.fromValue((map['possibleValues'] as List).cast<String>()),
      validationCheckDisabled: (() { final guardedValue = map['validationCheckDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
