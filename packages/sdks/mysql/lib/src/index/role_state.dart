// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Role resources.
class RoleState {
  /// The name of the role.
  final pulumi.Input<String>? name;

  /// Creates a new [RoleState].
  /// [name] The name of the role.
  RoleState({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory RoleState.fromMap(Map<String, dynamic> map) {
    return RoleState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

