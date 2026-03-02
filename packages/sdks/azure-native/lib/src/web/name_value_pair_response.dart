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
  NameValuePairResponse({
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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

