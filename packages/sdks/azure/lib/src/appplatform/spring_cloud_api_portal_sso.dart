// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudApiPortalSso {
  /// The public identifier for the application.
  final String? clientId;
  /// The secret known only to the application and the authorization server.
  final String? clientSecret;
  /// The URI of Issuer Identifier.
  final String? issuerUri;
  /// It defines the specific actions applications can be allowed to do on a user's behalf.
  final List<String>? scopes;

  /// Creates a new [SpringCloudApiPortalSso].
  /// [clientId] The public identifier for the application.
  /// [clientSecret] The secret known only to the application and the authorization server.
  /// [issuerUri] The URI of Issuer Identifier.
  /// [scopes] It defines the specific actions applications can be allowed to do on a user's behalf.
  SpringCloudApiPortalSso({
    this.clientId,
    this.clientSecret,
    this.issuerUri,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'issuerUri': ?issuerUri,
      'scopes': ?scopes,
    };
  }

  factory SpringCloudApiPortalSso.fromMap(Map<String, dynamic> map) {
    return SpringCloudApiPortalSso(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      issuerUri: map['issuerUri'] == null ? null : map['issuerUri'] as String,
      scopes: map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
    );
  }
}

