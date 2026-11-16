// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCasbWebhookHeader {
  /// Header key name (lowercase).
  final pulumi.Input<String> key;
  /// Header value. This field is never returned in API responses for security reasons.
  final pulumi.Input<String> value;

  /// Creates a new [GetZeroTrustCasbWebhookHeader].
  /// [key] Header key name (lowercase).
  /// [value] Header value. This field is never returned in API responses for security reasons.
  const GetZeroTrustCasbWebhookHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetZeroTrustCasbWebhookHeader.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbWebhookHeader(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
