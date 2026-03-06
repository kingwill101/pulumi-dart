// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schema in Thrift format.
class GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema {
  /// Thrift IDL source of the schema.
  final pulumi.Input<String>? text;

  /// Creates a new [GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema].
  /// [text] Thrift IDL source of the schema.
  const GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?text,
    };
  }

  factory GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema(
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

