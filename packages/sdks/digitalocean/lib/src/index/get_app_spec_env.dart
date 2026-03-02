// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecEnv {
  /// The name of the environment variable.
  final pulumi.Input<String>? key;
  /// The visibility scope of the environment variable. One of `RUN_TIME`, `BUILD_TIME`, or `RUN_AND_BUILD_TIME` (default).
  final pulumi.Input<String>? scope;
  /// The type of the environment variable, `GENERAL` or `SECRET`.
  final pulumi.Input<String> type;
  /// The threshold for the type of the warning.
  final pulumi.Input<String>? value;

  /// Creates a new [GetAppSpecEnv].
  /// [key] The name of the environment variable.
  /// [scope] The visibility scope of the environment variable. One of `RUN_TIME`, `BUILD_TIME`, or `RUN_AND_BUILD_TIME` (default).
  /// [type] The type of the environment variable, `GENERAL` or `SECRET`.
  /// [value] The threshold for the type of the warning.
  GetAppSpecEnv({
    this.key,
    this.scope,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'scope': ?scope,
      'type': type,
      'value': ?value,
    };
  }

  factory GetAppSpecEnv.fromMap(Map<String, dynamic> map) {
    return GetAppSpecEnv(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      type: (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

