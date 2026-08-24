// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ai_search_token_ai_search_token_args_doc}
/// The set of arguments for AiSearchToken.
/// {@endtemplate}
/// {@macro pulumi_index_ai_search_token_ai_search_token_args_doc}
class AiSearchTokenArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> cfApiId;
  final pulumi.Input<String> cfApiKey;
  final pulumi.Input<bool?>? legacy;
  final pulumi.Input<String> name;

  /// Creates a new [AiSearchTokenArgs].
  /// [accountId] Required.
  /// [cfApiId] Required.
  /// [cfApiKey] Required.
  /// [legacy] Optional.
  /// [name] Required.
  const AiSearchTokenArgs({
    required this.accountId,
    required this.cfApiId,
    required this.cfApiKey,
    this.legacy,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'cfApiId': cfApiId,
      'cfApiKey': cfApiKey,
      'legacy': ?legacy,
      'name': name,
    };
  }

  factory AiSearchTokenArgs.fromMap(Map<String, dynamic> map) {
    return AiSearchTokenArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      cfApiId: pulumi.Input.fromValue(map['cfApiId'] as String),
      cfApiKey: pulumi.Input.fromValue(map['cfApiKey'] as String),
      legacy: (() { final guardedValue = map['legacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
