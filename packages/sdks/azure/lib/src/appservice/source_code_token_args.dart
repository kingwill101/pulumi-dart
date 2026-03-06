// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_source_code_token_source_code_token_args_doc}
/// The set of arguments for SourceCodeToken.
/// {@endtemplate}
/// {@macro pulumi_appservice_source_code_token_source_code_token_args_doc}
class SourceCodeTokenArgs {
  /// The OAuth access token.
  final pulumi.Input<String> token;
  /// The OAuth access token secret.
  final pulumi.Input<String>? tokenSecret;
  /// The source control type. Possible values are `BitBucket`, `Dropbox`, `GitHub` and `OneDrive`.
  final pulumi.Input<String> type;

  /// Creates a new [SourceCodeTokenArgs].
  /// [token] The OAuth access token.
  /// [tokenSecret] The OAuth access token secret.
  /// [type] The source control type. Possible values are `BitBucket`, `Dropbox`, `GitHub` and `OneDrive`.
  const SourceCodeTokenArgs({
    required this.token,
    this.tokenSecret,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'tokenSecret': ?tokenSecret,
      'type': type,
    };
  }

  factory SourceCodeTokenArgs.fromMap(Map<String, dynamic> map) {
    return SourceCodeTokenArgs(
      token: pulumi.Input.fromValue(map['token'] as String),
      tokenSecret: (() { final guardedValue = map['tokenSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

