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
      'primaryKey': ?primaryKey?.toMap(),
      'secondaryConnectionString': secondaryConnectionString,
      'secondaryKey': ?secondaryKey?.toMap(),
    };
  }

  factory ListWorkspaceKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceKeysResult(
      apiKeyEnabled: (() { final guardedValue = map['apiKeyEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      primaryConnectionString: map['primaryConnectionString'] as String,
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return ApiKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return ApiKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

