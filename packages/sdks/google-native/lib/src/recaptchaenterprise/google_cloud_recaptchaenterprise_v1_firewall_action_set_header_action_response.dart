// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set header action sets a header and forwards the request to the backend. This can be used to trigger custom protection implemented on the backend.
class GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse {
  /// Optional. The header key to set in the request to the backend server.
  final pulumi.Input<String> key;
  /// Optional. The header value to set in the request to the backend server.
  final pulumi.Input<String> value;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse].
  /// [key] Optional. The header key to set in the request to the backend server.
  /// [value] Optional. The header value to set in the request to the backend server.
  const GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

