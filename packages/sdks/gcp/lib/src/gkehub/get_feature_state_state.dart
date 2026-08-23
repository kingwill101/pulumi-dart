// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureStateState {
  /// The high-level, machine-readable status of this Feature.
  final pulumi.Input<String> code;
  /// A human-readable description of the current status.
  final pulumi.Input<String> description;
  /// The time this status and any related Feature-specific details were updated. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetFeatureStateState].
  /// [code] The high-level, machine-readable status of this Feature.
  /// [description] A human-readable description of the current status.
  /// [updateTime] The time this status and any related Feature-specific details were updated. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  const GetFeatureStateState({
    required this.code,
    required this.description,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
      'updateTime': updateTime,
    };
  }

  factory GetFeatureStateState.fromMap(Map<String, dynamic> map) {
    return GetFeatureStateState(
      code: pulumi.Input.fromValue(map['code'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
