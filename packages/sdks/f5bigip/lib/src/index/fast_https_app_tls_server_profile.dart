// ignore_for_file: unused_element, unnecessary_cast


class FastHttpsAppTlsServerProfile {
  /// Name of existing BIG-IP SSL certificate to be used for FAST-Generated TLS Server Profile.
  final String tlsCertName;
  /// Name of existing BIG-IP SSL Key to be used for FAST-Generated TLS Server Profile.
  final String tlsKeyName;

  /// Creates a new [FastHttpsAppTlsServerProfile].
  /// [tlsCertName] Name of existing BIG-IP SSL certificate to be used for FAST-Generated TLS Server Profile.
  /// [tlsKeyName] Name of existing BIG-IP SSL Key to be used for FAST-Generated TLS Server Profile.
  FastHttpsAppTlsServerProfile({
    required this.tlsCertName,
    required this.tlsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tlsCertName': tlsCertName,
      'tlsKeyName': tlsKeyName,
    };
  }

  factory FastHttpsAppTlsServerProfile.fromMap(Map<String, dynamic> map) {
    return FastHttpsAppTlsServerProfile(
      tlsCertName: map['tlsCertName'] as String,
      tlsKeyName: map['tlsKeyName'] as String,
    );
  }
}

