// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRateLimitsResultBypass {
  /// Available values: "url".
  final pulumi.Input<String> name;
  /// The URL to bypass.
  final pulumi.Input<String> value;

  /// Creates a new [GetRateLimitsResultBypass].
  /// [name] Available values: "url".
  /// [value] The URL to bypass.
  const GetRateLimitsResultBypass({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetRateLimitsResultBypass.fromMap(Map<String, dynamic> map) {
    return GetRateLimitsResultBypass(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
