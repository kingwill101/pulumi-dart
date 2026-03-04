// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureStateState {
  /// (Output)
  /// The high-level, machine-readable status of this Feature.
  final pulumi.Input<String>? code;

  /// (Output)
  /// A human-readable description of the current status.
  final pulumi.Input<String>? description;

  /// (Output)
  /// The time this status and any related Feature-specific details were updated. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final pulumi.Input<String>? updateTime;

  /// Creates a new [FeatureStateState].
  /// [code] (Output)
  /// [description] (Output)
  /// [updateTime] (Output)
  FeatureStateState({this.code, this.description, this.updateTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'description': ?description,
      'updateTime': ?updateTime,
    };
  }

  factory FeatureStateState.fromMap(Map<String, dynamic> map) {
    return FeatureStateState(
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
