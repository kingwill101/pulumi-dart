// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key-value pair to store extra metadata.
class GoogleCloudApigeeV1AttributeResponse {
  /// API key of the attribute.
  final pulumi.Input<String> name;

  /// Value of the attribute.
  final pulumi.Input<String> value;

  /// Creates a new [GoogleCloudApigeeV1AttributeResponse].
  /// [name] API key of the attribute.
  /// [value] Value of the attribute.
  GoogleCloudApigeeV1AttributeResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GoogleCloudApigeeV1AttributeResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1AttributeResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
