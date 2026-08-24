// ignore_for_file: unused_element, unnecessary_cast

import 'get_token_validation_config_credentials.dart';

/// Result data returned by getTokenValidationConfig.
class GetTokenValidationConfigResult {
  /// UUID.
  final String? configId;
  final String? createdAt;
  final GetTokenValidationConfigCredentials? credentials;
  final String? description;
  /// UUID.
  final String? id;
  final String? lastUpdated;
  final String? title;
  final List<String>? tokenSources;
  /// Available values: "JWT".
  final String? tokenType;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetTokenValidationConfigResult].
  /// [configId] UUID.
  /// [createdAt] Optional.
  /// [credentials] Optional.
  /// [description] Optional.
  /// [id] UUID.
  /// [lastUpdated] Optional.
  /// [title] Optional.
  /// [tokenSources] Optional.
  /// [tokenType] Available values: "JWT".
  /// [zoneId] Identifier.
  const GetTokenValidationConfigResult({
    this.configId,
    this.createdAt,
    this.credentials,
    this.description,
    this.id,
    this.lastUpdated,
    this.title,
    this.tokenSources,
    this.tokenType,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'createdAt': ?createdAt,
      'credentials': ?credentials?.toMap(),
      'description': ?description,
      'id': ?id,
      'lastUpdated': ?lastUpdated,
      'title': ?title,
      'tokenSources': ?tokenSources,
      'tokenType': ?tokenType,
      'zoneId': ?zoneId,
    };
  }

  factory GetTokenValidationConfigResult.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationConfigResult(
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return GetTokenValidationConfigCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tokenSources: (() { final guardedValue = map['tokenSources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tokenType: (() { final guardedValue = map['tokenType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
