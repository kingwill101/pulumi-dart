// ignore_for_file: unused_element, unnecessary_cast


/// Description of a NotificationHub XiaomiCredential.
class XiaomiCredentialResponse {
  /// Gets or sets app secret.
  final String? appSecret;
  /// Gets or sets xiaomi service endpoint.
  final String? endpoint;

  /// Creates a new [XiaomiCredentialResponse].
  /// [appSecret] Gets or sets app secret.
  /// [endpoint] Gets or sets xiaomi service endpoint.
  XiaomiCredentialResponse({
    this.appSecret,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSecret': ?appSecret,
      'endpoint': ?endpoint,
    };
  }

  factory XiaomiCredentialResponse.fromMap(Map<String, dynamic> map) {
    return XiaomiCredentialResponse(
      appSecret: map['appSecret'] == null ? null : map['appSecret'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
    );
  }
}

