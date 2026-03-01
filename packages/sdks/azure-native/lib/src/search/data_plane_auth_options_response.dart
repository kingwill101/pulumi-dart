// ignore_for_file: unused_element, unnecessary_cast

import 'data_plane_aad_or_api_key_auth_option_response.dart';

/// Defines the options for how the search service authenticates a data plane request. This cannot be set if 'disableLocalAuth' is set to true.
class DataPlaneAuthOptionsResponse {
  /// Indicates that either the API key or an access token from a Microsoft Entra ID tenant can be used for authentication.
  final DataPlaneAadOrApiKeyAuthOptionResponse? aadOrApiKey;
  /// Indicates that only the API key can be used for authentication.
  final dynamic apiKeyOnly;

  /// Creates a new [DataPlaneAuthOptionsResponse].
  /// [aadOrApiKey] Indicates that either the API key or an access token from a Microsoft Entra ID tenant can be used for authentication.
  /// [apiKeyOnly] Indicates that only the API key can be used for authentication.
  DataPlaneAuthOptionsResponse({
    this.aadOrApiKey,
    this.apiKeyOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadOrApiKey': ?aadOrApiKey == null ? null : aadOrApiKey!.toMap(),
      'apiKeyOnly': ?apiKeyOnly,
    };
  }

  factory DataPlaneAuthOptionsResponse.fromMap(Map<String, dynamic> map) {
    return DataPlaneAuthOptionsResponse(
      aadOrApiKey: map['aadOrApiKey'] == null ? null : DataPlaneAadOrApiKeyAuthOptionResponse.fromMap((map['aadOrApiKey'] as Map).cast<String, dynamic>()),
      apiKeyOnly: map['apiKeyOnly'] == null ? null : map['apiKeyOnly'],
    );
  }
}

