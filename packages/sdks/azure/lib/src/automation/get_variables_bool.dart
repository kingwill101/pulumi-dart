// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVariablesBool {
  /// The description of the Automation Variable.
  final pulumi.Input<String> description;
  /// Specifies if the Automation Variable is encrypted.
  final pulumi.Input<bool> encrypted;
  final pulumi.Input<String> id;
  /// The name of the Automation Variable.
  final pulumi.Input<String> name;
  /// The value of the Automation Variable.
  final pulumi.Input<bool> value;

  /// Creates a new [GetVariablesBool].
  /// [description] The description of the Automation Variable.
  /// [encrypted] Specifies if the Automation Variable is encrypted.
  /// [id] Required.
  /// [name] The name of the Automation Variable.
  /// [value] The value of the Automation Variable.
  GetVariablesBool({
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

  factory GetVariablesBool.fromMap(Map<String, dynamic> map) {
    return GetVariablesBool(
      description: (map['description'] as String).input(),
      encrypted: (map['encrypted'] as bool).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      value: (map['value'] as bool).input(),
    );
  }
}

