// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbWebhookHeader {
  /// Header key name.
  final pulumi.Input<String> key;
  /// Header value. Required on Create and Evaluate. On Update, omit or set to null to keep existing value.
  final pulumi.Input<String?>? value;

  /// Creates a new [ZeroTrustCasbWebhookHeader].
  /// [key] Header key name.
  /// [value] Header value. Required on Create and Evaluate. On Update, omit or set to null to keep existing value.
  const ZeroTrustCasbWebhookHeader({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory ZeroTrustCasbWebhookHeader.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbWebhookHeader(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
