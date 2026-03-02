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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

