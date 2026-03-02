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
  DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource({
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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      processorType: map['processorType'] == null ? null : (map['processorType']! as String).input(),
    );
  }
}

