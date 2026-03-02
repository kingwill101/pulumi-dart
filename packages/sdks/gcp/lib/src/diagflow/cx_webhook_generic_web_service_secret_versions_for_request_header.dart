// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxWebhookGenericWebServiceSecretVersionsForRequestHeader {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> key;
  /// The SecretManager secret version resource storing the header value.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  final pulumi.Input<String> secretVersion;

  /// Creates a new [CxWebhookGenericWebServiceSecretVersionsForRequestHeader].
  /// [key] The identifier for this object. Format specified above.
  /// [secretVersion] The SecretManager secret version resource storing the header value.
  CxWebhookGenericWebServiceSecretVersionsForRequestHeader({
    required this.key,
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'secretVersion': secretVersion,
    };
  }

  factory CxWebhookGenericWebServiceSecretVersionsForRequestHeader.fromMap(Map<String, dynamic> map) {
    return CxWebhookGenericWebServiceSecretVersionsForRequestHeader(
      key: (map['key'] as String).input(),
      secretVersion: (map['secretVersion'] as String).input(),
    );
  }
}

