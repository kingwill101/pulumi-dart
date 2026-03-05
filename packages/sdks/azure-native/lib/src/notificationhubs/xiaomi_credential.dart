// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a NotificationHub XiaomiCredential.
class XiaomiCredential {
  /// Gets or sets app secret.
  final pulumi.Input<String>? appSecret;
  /// Gets or sets xiaomi service endpoint.
  final pulumi.Input<String>? endpoint;

  /// Creates a new [XiaomiCredential].
  /// [appSecret] Gets or sets app secret.
  /// [endpoint] Gets or sets xiaomi service endpoint.
  XiaomiCredential({
    this.appSecret,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSecret': ?appSecret,
      'endpoint': ?endpoint,
    };
  }

  factory XiaomiCredential.fromMap(Map<String, dynamic> map) {
    return XiaomiCredential(
      appSecret: (() { final guardedValue = map['appSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

