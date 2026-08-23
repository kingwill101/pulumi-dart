// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserFlowAttribute resources.
class UserFlowAttributeState {
  /// The type of the user flow attribute. Values include `builtIn`, `custom` or `required`.
  final pulumi.Input<String>? attributeType;
  /// The data type of the user flow attribute. Possible values are `boolean`, `dateTime`, `int64`, `string` or `stringCollection`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dataType;
  /// The description of the user flow attribute that is shown to the user at the time of sign-up.
  final pulumi.Input<String>? description;
  /// The display name of the user flow attribute. Changing this forces a new resource to be created.
  final pulumi.Input<String>? displayName;

  /// Creates a new [UserFlowAttributeState].
  /// [attributeType] The type of the user flow attribute. Values include `builtIn`, `custom` or `required`.
  /// [dataType] The data type of the user flow attribute. Possible values are `boolean`, `dateTime`, `int64`, `string` or `stringCollection`. Changing this forces a new resource to be created.
  /// [description] The description of the user flow attribute that is shown to the user at the time of sign-up.
  /// [displayName] The display name of the user flow attribute. Changing this forces a new resource to be created.
  const UserFlowAttributeState({
    this.attributeType,
    this.dataType,
    this.description,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeType': ?attributeType,
      'dataType': ?dataType,
      'description': ?description,
      'displayName': ?displayName,
    };
  }

  factory UserFlowAttributeState.fromMap(Map<String, dynamic> map) {
    return UserFlowAttributeState(
      attributeType: (() { final guardedValue = map['attributeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
