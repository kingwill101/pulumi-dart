// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the login flow of the custom Open ID Connect provider.
class OpenIdConnectLoginResponse {
  /// The name of the claim that contains the users name.
  final String? nameClaimType;
  /// A list of the scopes that should be requested while authenticating.
  final List<String>? scopes;

  /// Creates a new [OpenIdConnectLoginResponse].
  /// [nameClaimType] The name of the claim that contains the users name.
  /// [scopes] A list of the scopes that should be requested while authenticating.
  OpenIdConnectLoginResponse({
    this.nameClaimType,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameClaimType': ?nameClaimType,
      'scopes': ?scopes,
    };
  }

  factory OpenIdConnectLoginResponse.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectLoginResponse(
      nameClaimType: map['nameClaimType'] == null ? null : map['nameClaimType'] as String,
      scopes: map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
    );
  }
}

