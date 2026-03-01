// ignore_for_file: unused_element, unnecessary_cast


/// The managed identity token for the managed app resource.
class ManagedIdentityTokenResponse {
  /// The requested access token.
  final String? accessToken;
  /// The aud (audience) the access token was request for. This is the same as what was provided in the listTokens request.
  final String? authorizationAudience;
  /// The number of seconds the access token will be valid.
  final String? expiresIn;
  /// The timespan when the access token expires. This is represented as the number of seconds from epoch.
  final String? expiresOn;
  /// The timespan when the access token takes effect. This is represented as the number of seconds from epoch.
  final String? notBefore;
  /// The Azure resource ID for the issued token. This is either the managed application ID or the user-assigned identity ID.
  final String? resourceId;
  /// The type of the token.
  final String? tokenType;

  /// Creates a new [ManagedIdentityTokenResponse].
  /// [accessToken] The requested access token.
  /// [authorizationAudience] The aud (audience) the access token was request for. This is the same as what was provided in the listTokens request.
  /// [expiresIn] The number of seconds the access token will be valid.
  /// [expiresOn] The timespan when the access token expires. This is represented as the number of seconds from epoch.
  /// [notBefore] The timespan when the access token takes effect. This is represented as the number of seconds from epoch.
  /// [resourceId] The Azure resource ID for the issued token. This is either the managed application ID or the user-assigned identity ID.
  /// [tokenType] The type of the token.
  ManagedIdentityTokenResponse({
    this.accessToken,
    this.authorizationAudience,
    this.expiresIn,
    this.expiresOn,
    this.notBefore,
    this.resourceId,
    this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'authorizationAudience': ?authorizationAudience,
      'expiresIn': ?expiresIn,
      'expiresOn': ?expiresOn,
      'notBefore': ?notBefore,
      'resourceId': ?resourceId,
      'tokenType': ?tokenType,
    };
  }

  factory ManagedIdentityTokenResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityTokenResponse(
      accessToken: map['accessToken'] == null ? null : map['accessToken'] as String,
      authorizationAudience: map['authorizationAudience'] == null ? null : map['authorizationAudience'] as String,
      expiresIn: map['expiresIn'] == null ? null : map['expiresIn'] as String,
      expiresOn: map['expiresOn'] == null ? null : map['expiresOn'] as String,
      notBefore: map['notBefore'] == null ? null : map['notBefore'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      tokenType: map['tokenType'] == null ? null : map['tokenType'] as String,
    );
  }
}

