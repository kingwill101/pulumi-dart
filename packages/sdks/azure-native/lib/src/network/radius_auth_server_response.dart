// ignore_for_file: unused_element, unnecessary_cast


/// Gateway or VpnServerConfiguration Radius server with radius secret details
class RadiusAuthServerResponse {
  /// Radius server IPAddress
  final String? radiusServerAddress;
  /// Radius server secret
  final String? radiusServerSecret;

  /// Creates a new [RadiusAuthServerResponse].
  /// [radiusServerAddress] Radius server IPAddress
  /// [radiusServerSecret] Radius server secret
  RadiusAuthServerResponse({
    this.radiusServerAddress,
    this.radiusServerSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'radiusServerAddress': ?radiusServerAddress,
      'radiusServerSecret': ?radiusServerSecret,
    };
  }

  factory RadiusAuthServerResponse.fromMap(Map<String, dynamic> map) {
    return RadiusAuthServerResponse(
      radiusServerAddress: map['radiusServerAddress'] == null ? null : map['radiusServerAddress'] as String,
      radiusServerSecret: map['radiusServerSecret'] == null ? null : map['radiusServerSecret'] as String,
    );
  }
}

