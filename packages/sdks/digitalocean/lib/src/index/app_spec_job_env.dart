// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecJobEnv {
  /// The name of the environment variable.
  final pulumi.Input<String>? key;
  /// The visibility scope of the environment variable. One of `RUN_TIME`, `BUILD_TIME`, or `RUN_AND_BUILD_TIME` (default).
  final pulumi.Input<String>? scope;
  /// The type of the environment variable, `GENERAL` or `SECRET`.
  final pulumi.Input<String>? type;
  /// The value of the environment variable.
  final pulumi.Input<String>? value;

  /// Creates a new [AppSpecJobEnv].
  /// [key] The name of the environment variable.
  /// [scope] The visibility scope of the environment variable. One of `RUN_TIME`, `BUILD_TIME`, or `RUN_AND_BUILD_TIME` (default).
  /// [type] The type of the environment variable, `GENERAL` or `SECRET`.
  /// [value] The value of the environment variable.
  const AppSpecJobEnv({
    this.key,
    this.scope,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'scope': ?scope,
      'type': ?type,
      'value': ?value,
    };
  }

  factory AppSpecJobEnv.fromMap(Map<String, dynamic> map) {
    return AppSpecJobEnv(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
