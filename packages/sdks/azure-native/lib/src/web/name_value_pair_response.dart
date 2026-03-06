// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Name value pair.
class NameValuePairResponse {
  /// Pair name.
  final pulumi.Input<String>? name;
  /// Pair value.
  final pulumi.Input<String>? value;

  /// Creates a new [NameValuePairResponse].
  /// [name] Pair name.
  /// [value] Pair value.
  const NameValuePairResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory NameValuePairResponse.fromMap(Map<String, dynamic> map) {
    return NameValuePairResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

