// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWafEntityUrlMethodOverride {
  /// Specifies that the system allows or disallows a method for this URL
  final pulumi.Input<bool> allow;
  /// Specifies an HTTP method.
  final pulumi.Input<String> method;

  /// Creates a new [GetWafEntityUrlMethodOverride].
  /// [allow] Specifies that the system allows or disallows a method for this URL
  /// [method] Specifies an HTTP method.
  const GetWafEntityUrlMethodOverride({
    required this.allow,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': allow,
      'method': method,
    };
  }

  factory GetWafEntityUrlMethodOverride.fromMap(Map<String, dynamic> map) {
    return GetWafEntityUrlMethodOverride(
      allow: pulumi.Input.fromValue(map['allow'] as bool),
      method: pulumi.Input.fromValue(map['method'] as String),
    );
  }
}

