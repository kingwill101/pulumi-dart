// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_validation_config_credentials.dart';

/// Input properties used for looking up and filtering TokenValidationConfig resources.
class TokenValidationConfigState {
  final pulumi.Input<String?>? createdAt;
  /// Request payload for create and PUT credentials operations. Provided keys define the complete stored key set. Key identities (`{alg,kid}`) must be unique.
  final pulumi.Input<TokenValidationConfigCredentials?>? credentials;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? lastUpdated;
  final pulumi.Input<String?>? title;
  final pulumi.Input<List<String>?>? tokenSources;
  /// Available values: "JWT".
  final pulumi.Input<String?>? tokenType;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [TokenValidationConfigState].
  /// [createdAt] Optional.
  /// [credentials] Request payload for create and PUT credentials operations. Provided keys define the complete stored key set. Key identities (`{alg,kid}`) must be unique.
  /// [description] Optional.
  /// [lastUpdated] Optional.
  /// [title] Optional.
  /// [tokenSources] Optional.
  /// [tokenType] Available values: "JWT".
  /// [zoneId] Identifier.
  const TokenValidationConfigState({
    this.createdAt,
    this.credentials,
    this.description,
    this.lastUpdated,
    this.title,
    this.tokenSources,
    this.tokenType,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'credentials': ?pulumi.Input.mapOptionalInputValue<TokenValidationConfigCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'description': ?description,
      'lastUpdated': ?lastUpdated,
      'title': ?title,
      'tokenSources': ?tokenSources,
      'tokenType': ?tokenType,
      'zoneId': ?zoneId,
    };
  }

  factory TokenValidationConfigState.fromMap(Map<String, dynamic> map) {
    return TokenValidationConfigState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TokenValidationConfigCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenSources: (() { final guardedValue = map['tokenSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tokenType: (() { final guardedValue = map['tokenType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
