// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedAccessCheckResponse {
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

  /// Creates a new [LinkedAccessCheckResponse].
  /// [actionName] The action name.
  /// [linkedAction] The linked action.
  /// [linkedActionVerb] The linked action verb.
  /// [linkedProperty] The linked property.
  /// [linkedType] The linked type.
  LinkedAccessCheckResponse({
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

  factory LinkedAccessCheckResponse.fromMap(Map<String, dynamic> map) {
    return LinkedAccessCheckResponse(
      actionName: map['actionName'] == null ? null : (map['actionName']! as String).input(),
      linkedAction: map['linkedAction'] == null ? null : (map['linkedAction']! as String).input(),
      linkedActionVerb: map['linkedActionVerb'] == null ? null : (map['linkedActionVerb']! as String).input(),
      linkedProperty: map['linkedProperty'] == null ? null : (map['linkedProperty']! as String).input(),
      linkedType: map['linkedType'] == null ? null : (map['linkedType']! as String).input(),
    );
  }
}

