// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The schema source information.
class GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource {
  /// The schema name in the source.
  final pulumi.Input<String>? name;
  /// The Doc AI processor type name.
  final pulumi.Input<String>? processorType;

  /// Creates a new [GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource].
  /// [name] The schema name in the source.
  /// [processorType] The Doc AI processor type name.
  GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource({
    this.name,
    this.processorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'processorType': ?processorType,
    };
  }

  factory GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processorType: (() { final guardedValue = map['processorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

