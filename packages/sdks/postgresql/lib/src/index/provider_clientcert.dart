// ignore_for_file: unused_element, unnecessary_cast


class ProviderClientcert {
  /// The SSL client certificate file path. The file must contain PEM encoded data.
  final String cert;
  /// The SSL client certificate private key file path. The file must contain PEM encoded data.
  final String key;
  /// Must be set to true if you are inlining the cert/key instead of using a file path.
  final bool? sslinline;

  /// Creates a new [ProviderClientcert].
  /// [cert] The SSL client certificate file path. The file must contain PEM encoded data.
  /// [key] The SSL client certificate private key file path. The file must contain PEM encoded data.
  /// [sslinline] Must be set to true if you are inlining the cert/key instead of using a file path.
  ProviderClientcert({
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

  factory ProviderClientcert.fromMap(Map<String, dynamic> map) {
    return ProviderClientcert(
      cert: map['cert'] as String,
      key: map['key'] as String,
      sslinline: map['sslinline'] == null ? null : map['sslinline'] as bool,
    );
  }
}

