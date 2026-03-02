// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for authentication with the API Key. Will result in additional header on the request (default behavior) to the remote server: 'ApiKeyName: ApiKeyIdentifier ApiKey'. If 'IsApiKeyInPostPayload' is true it will send it in the body of the request and not the header.
class ApiKeyAuthModel {
  /// API Key for the user secret key credential
  final pulumi.Input<String> apiKey;
  /// API Key Identifier
  final pulumi.Input<String>? apiKeyIdentifier;
  /// API Key name
  final pulumi.Input<String> apiKeyName;
  /// Flag to indicate if API key is set in HTTP POST payload
  final pulumi.Input<bool>? isApiKeyInPostPayload;
  /// Type of paging
  /// Expected value is 'APIKey'.
  final pulumi.Input<String> type;

  /// Creates a new [ApiKeyAuthModel].
  /// [apiKey] API Key for the user secret key credential
  /// [apiKeyIdentifier] API Key Identifier
  /// [apiKeyName] API Key name
  /// [isApiKeyInPostPayload] Flag to indicate if API key is set in HTTP POST payload
  /// [type] Type of paging
  ApiKeyAuthModel({
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

  factory ApiKeyAuthModel.fromMap(Map<String, dynamic> map) {
    return ApiKeyAuthModel(
      apiKey: (map['apiKey'] as String).input(),
      apiKeyIdentifier: map['apiKeyIdentifier'] == null ? null : (map['apiKeyIdentifier'] as String).input(),
      apiKeyName: (map['apiKeyName'] as String).input(),
      isApiKeyInPostPayload: map['isApiKeyInPostPayload'] == null ? null : (map['isApiKeyInPostPayload'] as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

