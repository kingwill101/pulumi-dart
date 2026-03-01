// ignore_for_file: unused_element, unnecessary_cast


/// Indicates that either the API key or an access token from a Microsoft Entra ID tenant can be used for authentication.
class DataPlaneAadOrApiKeyAuthOptionResponse {
  /// Describes what response the data plane API of a search service would send for requests that failed authentication.
  final String? aadAuthFailureMode;

  /// Creates a new [DataPlaneAadOrApiKeyAuthOptionResponse].
  /// [aadAuthFailureMode] Describes what response the data plane API of a search service would send for requests that failed authentication.
  DataPlaneAadOrApiKeyAuthOptionResponse({
    this.aadAuthFailureMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthFailureMode': ?aadAuthFailureMode,
    };
  }

  factory DataPlaneAadOrApiKeyAuthOptionResponse.fromMap(Map<String, dynamic> map) {
    return DataPlaneAadOrApiKeyAuthOptionResponse(
      aadAuthFailureMode: map['aadAuthFailureMode'] == null ? null : map['aadAuthFailureMode'] as String,
    );
  }
}

