// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key-value pair to store extra metadata.
class GoogleCloudApigeeV1Attribute {
  /// API key of the attribute.
  final pulumi.Input<String>? name;
  /// Value of the attribute.
  final pulumi.Input<String>? value;

  /// Creates a new [GoogleCloudApigeeV1Attribute].
  /// [name] API key of the attribute.
  /// [value] Value of the attribute.
  const GoogleCloudApigeeV1Attribute({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory GoogleCloudApigeeV1Attribute.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1Attribute(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

