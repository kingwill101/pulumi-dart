// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_token_token_args_doc}
/// The set of arguments for Token.
/// {@endtemplate}
/// {@macro pulumi_index_token_token_args_doc}
class TokenArgs {
  /// When this token will expire. Personal Access Tokens cannot be renewed, so after this time the token will be completely unusable and a new token will need to be generated. Tokens may be created with 'null' as their expiry and will never expire unless revoked.
  final pulumi.Input<String>? expiry;
  /// A label for the Token.
  final pulumi.Input<String>? label;
  /// The scopes this token was created with. These define what parts of the Account the token can be used to access. Many command-line tools, such as the Linode CLI, require tokens with access to *. Tokens with more restrictive scopes are generally more secure. All scopes can be viewed in [the Linode API documentation](https://techdocs.akamai.com/linode-api/reference/get-started#oauth-reference).
  final pulumi.Input<String> scopes;

  /// Creates a new [TokenArgs].
  /// [expiry] When this token will expire. Personal Access Tokens cannot be renewed, so after this time the token will be completely unusable and a new token will need to be generated. Tokens may be created with 'null' as their expiry and will never expire unless revoked.
  /// [label] A label for the Token.
  /// [scopes] The scopes this token was created with. These define what parts of the Account the token can be used to access. Many command-line tools, such as the Linode CLI, require tokens with access to *. Tokens with more restrictive scopes are generally more secure. All scopes can be viewed in [the Linode API documentation](https://techdocs.akamai.com/linode-api/reference/get-started#oauth-reference).
  TokenArgs({
    this.expiry,
    this.label,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiry': ?expiry,
      'label': ?label,
      'scopes': scopes,
    };
  }

  factory TokenArgs.fromMap(Map<String, dynamic> map) {
    return TokenArgs(
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: pulumi.Input.fromValue(map['scopes'] as String),
    );
  }
}

