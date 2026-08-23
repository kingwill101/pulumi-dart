// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RemoteConfigRemoteConfigCondition {
  /// The logic of this condition.
  /// See the documentation regarding
  /// [Condition
  /// Expressions](https://firebase.google.com/docs/remote-config/condition-reference)
  /// for the expected syntax of this field.
  final pulumi.Input<String> expression;
  /// A non-empty and unique name of this condition.
  final pulumi.Input<String> name;
  /// The color associated with this condition for display purposes in the Firebase Console.
  /// Not specifying this value results in the Console picking an arbitrary color to associate with the condition.
  /// Possible values are: `BLUE`, `BROWN`, `CYAN`, `DEEP_ORANGE`, `GREEN`, `INDIGO`, `LIME`, `ORANGE`, `PINK`, `PURPLE`, `TEAL`.
  final pulumi.Input<String>? tagColor;

  /// Creates a new [RemoteConfigRemoteConfigCondition].
  /// [expression] The logic of this condition.
  /// [name] A non-empty and unique name of this condition.
  /// [tagColor] The color associated with this condition for display purposes in the Firebase Console.
  const RemoteConfigRemoteConfigCondition({
    required this.expression,
    required this.name,
    this.tagColor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'name': name,
      'tagColor': ?tagColor,
    };
  }

  factory RemoteConfigRemoteConfigCondition.fromMap(Map<String, dynamic> map) {
    return RemoteConfigRemoteConfigCondition(
      expression: pulumi.Input.fromValue(map['expression'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      tagColor: (() { final guardedValue = map['tagColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
