// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RateLimitBypass {
  /// Available values: "url".
  final pulumi.Input<String?>? name;
  /// The URL to bypass.
  final pulumi.Input<String?>? value;

  /// Creates a new [RateLimitBypass].
  /// [name] Available values: "url".
  /// [value] The URL to bypass.
  const RateLimitBypass({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory RateLimitBypass.fromMap(Map<String, dynamic> map) {
    return RateLimitBypass(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
