// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SourceControlToken resources.
class SourceControlTokenState {
  /// The Access Token.
  final pulumi.Input<String>? token;
  /// The Access Token Secret.
  ///
  /// &gt; **Note:** The token used for deploying App Service needs the following permissions: `repo` and `workflow`.
  final pulumi.Input<String>? tokenSecret;
  /// The Token type. Possible values include `Bitbucket`, `Dropbox`, `Github`, and `OneDrive`.
  final pulumi.Input<String>? type;

  /// Creates a new [SourceControlTokenState].
  /// [token] The Access Token.
  /// [tokenSecret] The Access Token Secret.
  /// [type] The Token type. Possible values include `Bitbucket`, `Dropbox`, `Github`, and `OneDrive`.
  const SourceControlTokenState({
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

  factory SourceControlTokenState.fromMap(Map<String, dynamic> map) {
    return SourceControlTokenState(
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenSecret: (() { final guardedValue = map['tokenSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

