// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Serializer and deserializer information.
class SerDeInfo {
  /// The fully qualified Java class name of the serialization library.
  final pulumi.Input<String>? serializationLib;

  /// Creates a new [SerDeInfo].
  /// [serializationLib] The fully qualified Java class name of the serialization library.
  const SerDeInfo({
    this.serializationLib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serializationLib': ?serializationLib,
    };
  }

  factory SerDeInfo.fromMap(Map<String, dynamic> map) {
    return SerDeInfo(
      serializationLib: (() { final guardedValue = map['serializationLib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
