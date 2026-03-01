// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the app registration for providers that have client ids and client secrets
class ClientRegistration {
  /// The Client ID of the app used for login.
  final String? clientId;
  /// The app setting name that contains the client secret.
  final String? clientSecretSettingName;

  /// Creates a new [ClientRegistration].
  /// [clientId] The Client ID of the app used for login.
  /// [clientSecretSettingName] The app setting name that contains the client secret.
  ClientRegistration({
    this.clientId,
    this.clientSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecretSettingName': ?clientSecretSettingName,
    };
  }

  factory ClientRegistration.fromMap(Map<String, dynamic> map) {
    return ClientRegistration(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : map['clientSecretSettingName'] as String,
    );
  }
}

