// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthorizationServerTokenBodyParameter {
  /// The Name of the Parameter.
  final pulumi.Input<String> name;
  /// The Value of the Parameter.
  final pulumi.Input<String> value;

  /// Creates a new [AuthorizationServerTokenBodyParameter].
  /// [name] The Name of the Parameter.
  /// [value] The Value of the Parameter.
  AuthorizationServerTokenBodyParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory AuthorizationServerTokenBodyParameter.fromMap(Map<String, dynamic> map) {
    return AuthorizationServerTokenBodyParameter(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

