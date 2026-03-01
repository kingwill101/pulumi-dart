// ignore_for_file: unused_element, unnecessary_cast


/// Model for authentication with the API Key. Will result in additional header on the request (default behavior) to the remote server: 'ApiKeyName: ApiKeyIdentifier ApiKey'. If 'IsApiKeyInPostPayload' is true it will send it in the body of the request and not the header.
class ApiKeyAuthModelResponse {
  /// API Key for the user secret key credential
  final String apiKey;
  /// API Key Identifier
  final String? apiKeyIdentifier;
  /// API Key name
  final String apiKeyName;
  /// Flag to indicate if API key is set in HTTP POST payload
  final bool? isApiKeyInPostPayload;
  /// Type of paging
  /// Expected value is 'APIKey'.
  final String type;

  /// Creates a new [ApiKeyAuthModelResponse].
  /// [apiKey] API Key for the user secret key credential
  /// [apiKeyIdentifier] API Key Identifier
  /// [apiKeyName] API Key name
  /// [isApiKeyInPostPayload] Flag to indicate if API key is set in HTTP POST payload
  /// [type] Type of paging
  ApiKeyAuthModelResponse({
    required this.apiKey,
    this.apiKeyIdentifier,
    required this.apiKeyName,
    this.isApiKeyInPostPayload,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'apiKeyIdentifier': ?apiKeyIdentifier,
      'apiKeyName': apiKeyName,
      'isApiKeyInPostPayload': ?isApiKeyInPostPayload,
      'type': type,
    };
  }

  factory ApiKeyAuthModelResponse.fromMap(Map<String, dynamic> map) {
    return ApiKeyAuthModelResponse(
      apiKey: map['apiKey'] as String,
      apiKeyIdentifier: map['apiKeyIdentifier'] == null ? null : map['apiKeyIdentifier'] as String,
      apiKeyName: map['apiKeyName'] as String,
      isApiKeyInPostPayload: map['isApiKeyInPostPayload'] == null ? null : map['isApiKeyInPostPayload'] as bool,
      type: map['type'] as String,
    );
  }
}

