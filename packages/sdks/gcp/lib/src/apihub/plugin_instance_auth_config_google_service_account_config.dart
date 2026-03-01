// ignore_for_file: unused_element, unnecessary_cast


class PluginInstanceAuthConfigGoogleServiceAccountConfig {
  /// The service account to be used for authenticating request.
  /// The `iam.serviceAccounts.getAccessToken` permission should be granted on
  /// this service account to the impersonator service account.
  final String serviceAccount;

  /// Creates a new [PluginInstanceAuthConfigGoogleServiceAccountConfig].
  /// [serviceAccount] The service account to be used for authenticating request.
  PluginInstanceAuthConfigGoogleServiceAccountConfig({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': serviceAccount,
    };
  }

  factory PluginInstanceAuthConfigGoogleServiceAccountConfig.fromMap(Map<String, dynamic> map) {
    return PluginInstanceAuthConfigGoogleServiceAccountConfig(
      serviceAccount: map['serviceAccount'] as String,
    );
  }
}

