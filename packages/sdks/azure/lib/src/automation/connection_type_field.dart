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
  ConnectionTypeField({
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
      isEncrypted: map['isEncrypted'] == null ? null : (map['isEncrypted'] as bool).input(),
      isOptional: map['isOptional'] == null ? null : (map['isOptional'] as bool).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

