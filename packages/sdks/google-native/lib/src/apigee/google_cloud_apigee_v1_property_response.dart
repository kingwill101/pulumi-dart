// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A single property entry in the Properties message.
class GoogleCloudApigeeV1PropertyResponse {
  /// The property key
  final pulumi.Input<String> name;

  /// The property value
  final pulumi.Input<String> value;

  /// Creates a new [GoogleCloudApigeeV1PropertyResponse].
  /// [name] The property key
  /// [value] The property value
  GoogleCloudApigeeV1PropertyResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GoogleCloudApigeeV1PropertyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1PropertyResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
