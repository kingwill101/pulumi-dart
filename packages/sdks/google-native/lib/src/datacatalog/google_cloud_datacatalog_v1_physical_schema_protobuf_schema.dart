// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schema in protocol buffer format.
class GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema {
  /// Protocol buffer source of the schema.
  final pulumi.Input<String>? text;

  /// Creates a new [GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema].
  /// [text] Protocol buffer source of the schema.
  GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema({this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': ?text};
  }

  factory GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema(
      text: (() {
        final guardedValue = map['text'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
