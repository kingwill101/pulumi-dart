// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HiveTableStorageDescriptorSerdeInfo {
  /// Description of the SerDe.
  final pulumi.Input<String>? description;
  /// The fully qualified Java class name of the deserializer.
  final pulumi.Input<String>? deserializerClass;
  /// Name of the SerDe, table name by default.
  final pulumi.Input<String> name;
  /// Parameters of the SerDe.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The SerDe type.
  /// Possible values are: `SERDE_TYPE_UNSPECIFIED`, `HIVE`, `SCHEMA_REGISTRY`.
  final pulumi.Input<String>? serdeType;
  /// The fully qualified Java class name of the serialization library.
  final pulumi.Input<String> serializationLib;
  /// The fully qualified Java class name of the serializer.
  final pulumi.Input<String>? serializerClass;

  /// Creates a new [HiveTableStorageDescriptorSerdeInfo].
  /// [description] Description of the SerDe.
  /// [deserializerClass] The fully qualified Java class name of the deserializer.
  /// [name] Name of the SerDe, table name by default.
  /// [parameters] Parameters of the SerDe.
  /// [serdeType] The SerDe type.
  /// [serializationLib] The fully qualified Java class name of the serialization library.
  /// [serializerClass] The fully qualified Java class name of the serializer.
  const HiveTableStorageDescriptorSerdeInfo({
    this.description,
    this.deserializerClass,
    required this.name,
    this.parameters,
    this.serdeType,
    required this.serializationLib,
    this.serializerClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'deserializerClass': ?deserializerClass,
      'name': name,
      'parameters': ?parameters,
      'serdeType': ?serdeType,
      'serializationLib': serializationLib,
      'serializerClass': ?serializerClass,
    };
  }

  factory HiveTableStorageDescriptorSerdeInfo.fromMap(Map<String, dynamic> map) {
    return HiveTableStorageDescriptorSerdeInfo(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deserializerClass: (() { final guardedValue = map['deserializerClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serdeType: (() { final guardedValue = map['serdeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serializationLib: pulumi.Input.fromValue(map['serializationLib'] as String),
      serializerClass: (() { final guardedValue = map['serializerClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
