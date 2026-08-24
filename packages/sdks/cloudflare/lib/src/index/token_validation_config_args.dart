// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_validation_config_credentials.dart';

/// {@template pulumi_index_token_validation_config_token_validation_config_args_doc}
/// The set of arguments for TokenValidationConfig.
/// {@endtemplate}
/// {@macro pulumi_index_token_validation_config_token_validation_config_args_doc}
class TokenValidationConfigArgs {
  /// Request payload for create and PUT credentials operations. Provided keys define the complete stored key set. Key identities (`{alg,kid}`) must be unique.
  final pulumi.Input<TokenValidationConfigCredentials> credentials;
  final pulumi.Input<String> description;
  final pulumi.Input<String> title;
  final pulumi.Input<List<String>> tokenSources;
  /// Available values: "JWT".
  final pulumi.Input<String> tokenType;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [TokenValidationConfigArgs].
  /// [credentials] Request payload for create and PUT credentials operations. Provided keys define the complete stored key set. Key identities (`{alg,kid}`) must be unique.
  /// [description] Required.
  /// [title] Required.
  /// [tokenSources] Required.
  /// [tokenType] Available values: "JWT".
  /// [zoneId] Identifier.
  const TokenValidationConfigArgs({
    required this.credentials,
    required this.description,
    required this.title,
    required this.tokenSources,
    required this.tokenType,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': pulumi.Input.mapInputValue<TokenValidationConfigCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'description': description,
      'title': title,
      'tokenSources': tokenSources,
      'tokenType': tokenType,
      'zoneId': zoneId,
    };
  }

  factory TokenValidationConfigArgs.fromMap(Map<String, dynamic> map) {
    return TokenValidationConfigArgs(
      credentials: pulumi.Input.fromValue(TokenValidationConfigCredentials.fromMap((map['credentials']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
      tokenSources: pulumi.Input.fromValue((map['tokenSources'] as List).cast<String>()),
      tokenType: pulumi.Input.fromValue(map['tokenType'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
