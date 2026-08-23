// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RunBookDraftParameter {
  /// Specifies the default value of the parameter.
  final pulumi.Input<String>? defaultValue;
  /// The name of the parameter.
  final pulumi.Input<String> key;
  /// Whether this parameter is mandatory.
  final pulumi.Input<bool>? mandatory;
  /// Specifies the position of the parameter.
  final pulumi.Input<int>? position;
  /// Specifies the type of this parameter.
  final pulumi.Input<String> type;

  /// Creates a new [RunBookDraftParameter].
  /// [defaultValue] Specifies the default value of the parameter.
  /// [key] The name of the parameter.
  /// [mandatory] Whether this parameter is mandatory.
  /// [position] Specifies the position of the parameter.
  /// [type] Specifies the type of this parameter.
  const RunBookDraftParameter({
    this.defaultValue,
    required this.key,
    this.mandatory,
    this.position,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'key': key,
      'mandatory': ?mandatory,
      'position': ?position,
      'type': type,
    };
  }

  factory RunBookDraftParameter.fromMap(Map<String, dynamic> map) {
    return RunBookDraftParameter(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      mandatory: (() { final guardedValue = map['mandatory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
