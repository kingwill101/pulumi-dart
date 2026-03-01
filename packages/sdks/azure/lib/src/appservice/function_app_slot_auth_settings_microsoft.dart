// ignore_for_file: unused_element, unnecessary_cast


class FunctionAppSlotAuthSettingsMicrosoft {
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final String clientId;
  /// The OAuth 2.0 client secret that was created for the app used for authentication.
  final String clientSecret;
  /// The OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. <https://msdn.microsoft.com/en-us/library/dn631845.aspx>
  final List<String>? oauthScopes;

  /// Creates a new [FunctionAppSlotAuthSettingsMicrosoft].
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecret] The OAuth 2.0 client secret that was created for the app used for authentication.
  /// [oauthScopes] The OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. <https://msdn.microsoft.com/en-us/library/dn631845.aspx>
  FunctionAppSlotAuthSettingsMicrosoft({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
      'oauthScopes': ?oauthScopes,
    };
  }

  factory FunctionAppSlotAuthSettingsMicrosoft.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotAuthSettingsMicrosoft(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      oauthScopes: map['oauthScopes'] == null ? null : (map['oauthScopes'] as List).cast<String>(),
    );
  }
}

