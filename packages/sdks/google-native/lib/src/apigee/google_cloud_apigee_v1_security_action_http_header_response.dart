// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An HTTP header.
class GoogleCloudApigeeV1SecurityActionHttpHeaderResponse {
  /// The header name to be sent to the target.
  final pulumi.Input<String> name;

  /// The header value to be sent to the target.
  final pulumi.Input<String> value;

  /// Creates a new [GoogleCloudApigeeV1SecurityActionHttpHeaderResponse].
  /// [name] The header name to be sent to the target.
  /// [value] The header value to be sent to the target.
  GoogleCloudApigeeV1SecurityActionHttpHeaderResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GoogleCloudApigeeV1SecurityActionHttpHeaderResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1SecurityActionHttpHeaderResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
