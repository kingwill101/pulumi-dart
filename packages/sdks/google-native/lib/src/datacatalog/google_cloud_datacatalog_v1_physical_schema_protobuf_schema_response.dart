// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schema in protocol buffer format.
class GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchemaResponse {
  /// Protocol buffer source of the schema.
  final pulumi.Input<String> text;

  /// Creates a new [GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchemaResponse].
  /// [text] Protocol buffer source of the schema.
  GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchemaResponse({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': text};
  }

  factory GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchemaResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchemaResponse(
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
