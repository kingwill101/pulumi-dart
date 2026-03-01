// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the registration for the Apple provider
class AppleRegistrationResponse {
  /// The Client ID of the app used for login.
  final String? clientId;
  /// The app setting name that contains the client secret.
  final String? clientSecretSettingName;

  /// Creates a new [AppleRegistrationResponse].
  /// [clientId] The Client ID of the app used for login.
  /// [clientSecretSettingName] The app setting name that contains the client secret.
  AppleRegistrationResponse({
    this.clientId,
    this.clientSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecretSettingName': ?clientSecretSettingName,
    };
  }

  factory AppleRegistrationResponse.fromMap(Map<String, dynamic> map) {
    return AppleRegistrationResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : map['clientSecretSettingName'] as String,
    );
  }
}

