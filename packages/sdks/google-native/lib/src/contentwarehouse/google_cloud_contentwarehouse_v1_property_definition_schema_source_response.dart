// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The schema source information.
class GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse {
  /// The schema name in the source.
  final pulumi.Input<String> name;
  /// The Doc AI processor type name.
  final pulumi.Input<String> processorType;

  /// Creates a new [GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse].
  /// [name] The schema name in the source.
  /// [processorType] The Doc AI processor type name.
  GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse({
    required this.name,
    required this.processorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'processorType': processorType,
    };
  }

  factory GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      processorType: pulumi.Input.fromValue(map['processorType'] as String),
    );
  }
}

