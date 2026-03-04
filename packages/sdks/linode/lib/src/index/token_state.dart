// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Token resources.
class TokenState {
  /// The date this Token was created.
  final pulumi.Input<String>? created;

  /// When this token will expire. Personal Access Tokens cannot be renewed, so after this time the token will be completely unusable and a new token will need to be generated. Tokens may be created with 'null' as their expiry and will never expire unless revoked.
  final pulumi.Input<String>? expiry;

  /// A label for the Token.
  final pulumi.Input<String>? label;

  /// The scopes this token was created with. These define what parts of the Account the token can be used to access. Many command-line tools, such as the Linode CLI, require tokens with access to *. Tokens with more restrictive scopes are generally more secure. All scopes can be viewed in [the Linode API documentation](https://techdocs.akamai.com/linode-api/reference/get-started#oauth-reference).
  final pulumi.Input<String>? scopes;

  /// The token used to access the API.
  final pulumi.Input<String>? token;

  /// Creates a new [TokenState].
  /// [created] The date this Token was created.
  /// [expiry] When this token will expire. Personal Access Tokens cannot be renewed, so after this time the token will be completely unusable and a new token will need to be generated. Tokens may be created with 'null' as their expiry and will never expire unless revoked.
  /// [label] A label for the Token.
  /// [scopes] The scopes this token was created with. These define what parts of the Account the token can be used to access. Many command-line tools, such as the Linode CLI, require tokens with access to *. Tokens with more restrictive scopes are generally more secure. All scopes can be viewed in [the Linode API documentation](https://techdocs.akamai.com/linode-api/reference/get-started#oauth-reference).
  /// [token] The token used to access the API.
  TokenState({this.created, this.expiry, this.label, this.scopes, this.token});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'expiry': ?expiry,
      'label': ?label,
      'scopes': ?scopes,
      'token': ?token,
    };
  }

  factory TokenState.fromMap(Map<String, dynamic> map) {
    return TokenState(
      created: (() {
        final guardedValue = map['created'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expiry: (() {
        final guardedValue = map['expiry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopes: (() {
        final guardedValue = map['scopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      token: (() {
        final guardedValue = map['token'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
