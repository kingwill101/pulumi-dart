// ignore_for_file: unused_element, unnecessary_cast


/// Description of a NotificationHub AdmCredential.
class AdmCredentialResponse {
  /// Gets or sets the URL of the authorization token.
  final String authTokenUrl;
  /// Gets or sets the client identifier.
  final String clientId;
  /// Gets or sets the credential secret access key.
  final String clientSecret;

  /// Creates a new [AdmCredentialResponse].
  /// [authTokenUrl] Gets or sets the URL of the authorization token.
  /// [clientId] Gets or sets the client identifier.
  /// [clientSecret] Gets or sets the credential secret access key.
  AdmCredentialResponse({
    required this.authTokenUrl,
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authTokenUrl': authTokenUrl,
      'clientId': clientId,
      'clientSecret': clientSecret,
    };
  }

  factory AdmCredentialResponse.fromMap(Map<String, dynamic> map) {
    return AdmCredentialResponse(
      authTokenUrl: map['authTokenUrl'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
    );
  }
}

