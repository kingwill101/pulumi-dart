// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedAccessCheck {
  /// The action name.
  final pulumi.Input<String>? actionName;
  /// The linked action.
  final pulumi.Input<String>? linkedAction;
  /// The linked action verb.
  final pulumi.Input<String>? linkedActionVerb;
  /// The linked property.
  final pulumi.Input<String>? linkedProperty;
  /// The linked type.
  final pulumi.Input<String>? linkedType;

  /// Creates a new [LinkedAccessCheck].
  /// [actionName] The action name.
  /// [linkedAction] The linked action.
  /// [linkedActionVerb] The linked action verb.
  /// [linkedProperty] The linked property.
  /// [linkedType] The linked type.
  const LinkedAccessCheck({
    this.actionName,
    this.linkedAction,
    this.linkedActionVerb,
    this.linkedProperty,
    this.linkedType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': ?actionName,
      'linkedAction': ?linkedAction,
      'linkedActionVerb': ?linkedActionVerb,
      'linkedProperty': ?linkedProperty,
      'linkedType': ?linkedType,
    };
  }

  factory LinkedAccessCheck.fromMap(Map<String, dynamic> map) {
    return LinkedAccessCheck(
      actionName: (() { final guardedValue = map['actionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedAction: (() { final guardedValue = map['linkedAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedActionVerb: (() { final guardedValue = map['linkedActionVerb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedProperty: (() { final guardedValue = map['linkedProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedType: (() { final guardedValue = map['linkedType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

