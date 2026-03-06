// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource {
  /// The schema name in the source.
  final pulumi.Input<String>? name;
  /// The Doc AI processor type name.
  final pulumi.Input<String>? processorType;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource].
  /// [name] The schema name in the source.
  /// [processorType] The Doc AI processor type name.
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource({
    this.name,
    this.processorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'processorType': ?processorType,
    };
  }

  factory DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource.fromMap(Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processorType: (() { final guardedValue = map['processorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

