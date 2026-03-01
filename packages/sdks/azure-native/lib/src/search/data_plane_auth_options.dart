// ignore_for_file: unused_element, unnecessary_cast

import 'data_plane_aad_or_api_key_auth_option.dart';

/// Defines the options for how the search service authenticates a data plane request. This cannot be set if 'disableLocalAuth' is set to true.
class DataPlaneAuthOptions {
  /// Indicates that either the API key or an access token from a Microsoft Entra ID tenant can be used for authentication.
  final DataPlaneAadOrApiKeyAuthOption? aadOrApiKey;
  /// Indicates that only the API key can be used for authentication.
  final dynamic apiKeyOnly;

  /// Creates a new [DataPlaneAuthOptions].
  /// [aadOrApiKey] Indicates that either the API key or an access token from a Microsoft Entra ID tenant can be used for authentication.
  /// [apiKeyOnly] Indicates that only the API key can be used for authentication.
  DataPlaneAuthOptions({
    this.aadOrApiKey,
    this.apiKeyOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadOrApiKey': ?aadOrApiKey == null ? null : aadOrApiKey!.toMap(),
      'apiKeyOnly': ?apiKeyOnly,
    };
  }

  factory DataPlaneAuthOptions.fromMap(Map<String, dynamic> map) {
    return DataPlaneAuthOptions(
      aadOrApiKey: map['aadOrApiKey'] == null ? null : DataPlaneAadOrApiKeyAuthOption.fromMap((map['aadOrApiKey'] as Map).cast<String, dynamic>()),
      apiKeyOnly: map['apiKeyOnly'] == null ? null : map['apiKeyOnly'],
    );
  }
}

