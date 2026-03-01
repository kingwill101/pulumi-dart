// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsFunctionAppAuthSettingActiveDirectory {
  /// The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  final List<String> allowedAudiences;
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final String clientId;
  /// The OAuth 2.0 client secret that was created for the app used for authentication.
  final String clientSecret;
  /// The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  final String clientSecretSettingName;

  /// Creates a new [GetWindowsFunctionAppAuthSettingActiveDirectory].
  /// [allowedAudiences] The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecret] The OAuth 2.0 client secret that was created for the app used for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  GetWindowsFunctionAppAuthSettingActiveDirectory({
    required this.allowedAudiences,
    required this.clientId,
    required this.clientSecret,
    required this.clientSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': allowedAudiences,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'clientSecretSettingName': clientSecretSettingName,
    };
  }

  factory GetWindowsFunctionAppAuthSettingActiveDirectory.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppAuthSettingActiveDirectory(
      allowedAudiences: (map['allowedAudiences'] as List).cast<String>(),
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] as String,
    );
  }
}

