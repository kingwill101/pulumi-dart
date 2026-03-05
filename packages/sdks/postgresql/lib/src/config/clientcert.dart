// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Clientcert {
  /// The SSL client certificate file path. The file must contain PEM encoded data.
  final pulumi.Input<String> cert;
  /// The SSL client certificate private key file path. The file must contain PEM encoded data.
  final pulumi.Input<String> key;
  /// Must be set to true if you are inlining the cert/key instead of using a file path.
  final pulumi.Input<bool>? sslinline;

  /// Creates a new [Clientcert].
  /// [cert] The SSL client certificate file path. The file must contain PEM encoded data.
  /// [key] The SSL client certificate private key file path. The file must contain PEM encoded data.
  /// [sslinline] Must be set to true if you are inlining the cert/key instead of using a file path.
  Clientcert({
    required this.cert,
    required this.key,
    this.sslinline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': cert,
      'key': key,
      'sslinline': ?sslinline,
    };
  }

  factory Clientcert.fromMap(Map<String, dynamic> map) {
    return Clientcert(
      cert: pulumi.Input.fromValue(map['cert'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      sslinline: (() { final guardedValue = map['sslinline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

