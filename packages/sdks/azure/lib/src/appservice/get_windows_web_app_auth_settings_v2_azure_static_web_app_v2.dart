// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppAuthSettingsV2AzureStaticWebAppV2 {
  /// The OAuth 2.0 client ID used by the app for authentication.
  final String clientId;

  /// Creates a new [GetWindowsWebAppAuthSettingsV2AzureStaticWebAppV2].
  /// [clientId] The OAuth 2.0 client ID used by the app for authentication.
  GetWindowsWebAppAuthSettingsV2AzureStaticWebAppV2({
    required this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
    };
  }

  factory GetWindowsWebAppAuthSettingsV2AzureStaticWebAppV2.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppAuthSettingsV2AzureStaticWebAppV2(
      clientId: map['clientId'] as String,
    );
  }
}

