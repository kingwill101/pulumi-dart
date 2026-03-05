// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SourceCodeToken resources.
class SourceCodeTokenState {
  /// The OAuth access token.
  final pulumi.Input<String>? token;
  /// The OAuth access token secret.
  final pulumi.Input<String>? tokenSecret;
  /// The source control type. Possible values are `BitBucket`, `Dropbox`, `GitHub` and `OneDrive`.
  final pulumi.Input<String>? type;

  /// Creates a new [SourceCodeTokenState].
  /// [token] The OAuth access token.
  /// [tokenSecret] The OAuth access token secret.
  /// [type] The source control type. Possible values are `BitBucket`, `Dropbox`, `GitHub` and `OneDrive`.
  SourceCodeTokenState({
    this.token,
    this.tokenSecret,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': ?token,
      'tokenSecret': ?tokenSecret,
      'type': ?type,
    };
  }

  factory SourceCodeTokenState.fromMap(Map<String, dynamic> map) {
    return SourceCodeTokenState(
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenSecret: (() { final guardedValue = map['tokenSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

