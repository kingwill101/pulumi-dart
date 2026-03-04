// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVariablesString {
  /// The description of the Automation Variable.
  final pulumi.Input<String> description;

  /// Specifies if the Automation Variable is encrypted.
  final pulumi.Input<bool> encrypted;
  final pulumi.Input<String> id;

  /// The name of the Automation Variable.
  final pulumi.Input<String> name;

  /// The value of the Automation Variable.
  final pulumi.Input<String> value;

  /// Creates a new [GetVariablesString].
  /// [description] The description of the Automation Variable.
  /// [encrypted] Specifies if the Automation Variable is encrypted.
  /// [id] Required.
  /// [name] The name of the Automation Variable.
  /// [value] The value of the Automation Variable.
  GetVariablesString({
    required this.description,
    required this.encrypted,
    required this.id,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'encrypted': encrypted,
      'id': id,
      'name': name,
      'value': value,
    };
  }

  factory GetVariablesString.fromMap(Map<String, dynamic> map) {
    return GetVariablesString(
      description: pulumi.Input.fromValue(map['description'] as String),
      encrypted: pulumi.Input.fromValue(map['encrypted'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
