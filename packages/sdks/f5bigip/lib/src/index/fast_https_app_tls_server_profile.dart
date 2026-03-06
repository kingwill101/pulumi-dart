// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FastHttpsAppTlsServerProfile {
  /// Name of existing BIG-IP SSL certificate to be used for FAST-Generated TLS Server Profile.
  final pulumi.Input<String> tlsCertName;
  /// Name of existing BIG-IP SSL Key to be used for FAST-Generated TLS Server Profile.
  final pulumi.Input<String> tlsKeyName;

  /// Creates a new [FastHttpsAppTlsServerProfile].
  /// [tlsCertName] Name of existing BIG-IP SSL certificate to be used for FAST-Generated TLS Server Profile.
  /// [tlsKeyName] Name of existing BIG-IP SSL Key to be used for FAST-Generated TLS Server Profile.
  const FastHttpsAppTlsServerProfile({
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
      tlsCertName: pulumi.Input.fromValue(map['tlsCertName'] as String),
      tlsKeyName: pulumi.Input.fromValue(map['tlsKeyName'] as String),
    );
  }
}

