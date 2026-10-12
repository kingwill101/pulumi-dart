// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCasbWebhooksResultHeader {
  /// Header key name (lowercase).
  final pulumi.Input<String> key;
  /// Header value. This field is never returned in API responses for security reasons.
  final pulumi.Input<String> value;

  /// Creates a new [GetZeroTrustCasbWebhooksResultHeader].
  /// [key] Header key name (lowercase).
  /// [value] Header value. This field is never returned in API responses for security reasons.
  const GetZeroTrustCasbWebhooksResultHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetZeroTrustCasbWebhooksResultHeader.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbWebhooksResultHeader(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
