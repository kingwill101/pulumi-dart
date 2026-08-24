// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_token_validation_configs_result_credentials.dart';

class GetTokenValidationConfigsResult {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<GetTokenValidationConfigsResultCredentials> credentials;
  final pulumi.Input<String> description;
  /// UUID.
  final pulumi.Input<String> id;
  final pulumi.Input<String> lastUpdated;
  final pulumi.Input<String> title;
  final pulumi.Input<List<String>> tokenSources;
  /// Available values: "JWT".
  final pulumi.Input<String> tokenType;

  /// Creates a new [GetTokenValidationConfigsResult].
  /// [createdAt] Required.
  /// [credentials] Required.
  /// [description] Required.
  /// [id] UUID.
  /// [lastUpdated] Required.
  /// [title] Required.
  /// [tokenSources] Required.
  /// [tokenType] Available values: "JWT".
  const GetTokenValidationConfigsResult({
    required this.createdAt,
    required this.credentials,
    required this.description,
    required this.id,
    required this.lastUpdated,
    required this.title,
    required this.tokenSources,
    required this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'credentials': pulumi.Input.mapInputValue<GetTokenValidationConfigsResultCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'description': description,
      'id': id,
      'lastUpdated': lastUpdated,
      'title': title,
      'tokenSources': tokenSources,
      'tokenType': tokenType,
    };
  }

  factory GetTokenValidationConfigsResult.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationConfigsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      credentials: pulumi.Input.fromValue(GetTokenValidationConfigsResultCredentials.fromMap((map['credentials']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
      tokenSources: pulumi.Input.fromValue((map['tokenSources'] as List).cast<String>()),
      tokenType: pulumi.Input.fromValue(map['tokenType'] as String),
    );
  }
}
