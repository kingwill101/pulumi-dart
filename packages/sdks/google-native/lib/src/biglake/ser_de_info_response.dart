// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Serializer and deserializer information.
class SerDeInfoResponse {
  /// The fully qualified Java class name of the serialization library.
  final pulumi.Input<String> serializationLib;

  /// Creates a new [SerDeInfoResponse].
  /// [serializationLib] The fully qualified Java class name of the serialization library.
  const SerDeInfoResponse({
    required this.serializationLib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serializationLib': serializationLib,
    };
  }

  factory SerDeInfoResponse.fromMap(Map<String, dynamic> map) {
    return SerDeInfoResponse(
      serializationLib: pulumi.Input.fromValue(map['serializationLib'] as String),
    );
  }
}
