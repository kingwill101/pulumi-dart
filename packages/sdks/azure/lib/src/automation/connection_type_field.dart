// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionTypeField {
  /// Whether to set the isEncrypted flag of the connection field definition.
  final pulumi.Input<bool>? isEncrypted;
  /// Whether to set the isOptional flag of the connection field definition.
  final pulumi.Input<bool>? isOptional;
  /// The name which should be used for this connection field definition.
  final pulumi.Input<String> name;
  /// The type of the connection field definition.
  final pulumi.Input<String> type;

  /// Creates a new [ConnectionTypeField].
  /// [isEncrypted] Whether to set the isEncrypted flag of the connection field definition.
  /// [isOptional] Whether to set the isOptional flag of the connection field definition.
  /// [name] The name which should be used for this connection field definition.
  /// [type] The type of the connection field definition.
  const ConnectionTypeField({
    this.isEncrypted,
    this.isOptional,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEncrypted': ?isEncrypted,
      'isOptional': ?isOptional,
      'name': name,
      'type': type,
    };
  }

  factory ConnectionTypeField.fromMap(Map<String, dynamic> map) {
    return ConnectionTypeField(
      isEncrypted: (() { final guardedValue = map['isEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isOptional: (() { final guardedValue = map['isOptional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

