// ignore_for_file: unused_element, unnecessary_cast

import 'api_key_response.dart';

/// Result data returned by listWorkspaceKeys.
class ListWorkspaceKeysResult {
  /// Indicator of enablement of the Quantum workspace Api keys.
  final bool? apiKeyEnabled;
  /// The connection string of the primary api key.
  final String primaryConnectionString;
  /// The quantum workspace primary api key.
  final ApiKeyResponse? primaryKey;
  /// The connection string of the secondary api key.
  final String secondaryConnectionString;
  /// The quantum workspace secondary api key.
  final ApiKeyResponse? secondaryKey;

  /// Creates a new [ListWorkspaceKeysResult].
  /// [apiKeyEnabled] Indicator of enablement of the Quantum workspace Api keys.
  /// [primaryConnectionString] The connection string of the primary api key.
  /// [primaryKey] The quantum workspace primary api key.
  /// [secondaryConnectionString] The connection string of the secondary api key.
  /// [secondaryKey] The quantum workspace secondary api key.
  ListWorkspaceKeysResult({
    this.apiKeyEnabled,
    required this.primaryConnectionString,
    this.primaryKey,
    required this.secondaryConnectionString,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyEnabled': ?apiKeyEnabled,
      'primaryConnectionString': primaryConnectionString,
      'primaryKey': ?primaryKey == null ? null : primaryKey!.toMap(),
      'secondaryConnectionString': secondaryConnectionString,
      'secondaryKey': ?secondaryKey == null ? null : secondaryKey!.toMap(),
    };
  }

  factory ListWorkspaceKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceKeysResult(
      apiKeyEnabled: map['apiKeyEnabled'] == null ? null : map['apiKeyEnabled']! as bool,
      primaryConnectionString: map['primaryConnectionString'] as String,
      primaryKey: map['primaryKey'] == null ? null : ApiKeyResponse.fromMap((map['primaryKey']! as Map).cast<String, dynamic>()),
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : ApiKeyResponse.fromMap((map['secondaryKey']! as Map).cast<String, dynamic>()),
    );
  }
}

