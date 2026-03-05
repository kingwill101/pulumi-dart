// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A single property entry in the Properties message.
class GoogleCloudApigeeV1Property {
  /// The property key
  final pulumi.Input<String>? name;
  /// The property value
  final pulumi.Input<String>? value;

  /// Creates a new [GoogleCloudApigeeV1Property].
  /// [name] The property key
  /// [value] The property value
  GoogleCloudApigeeV1Property({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory GoogleCloudApigeeV1Property.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1Property(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

