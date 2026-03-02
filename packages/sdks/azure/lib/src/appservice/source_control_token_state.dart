// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SourceControlToken resources.
class SourceControlTokenState {
  /// The Access Token.
  final pulumi.Input<String>? token;
  /// The Access Token Secret.
  ///
  /// > **Note:** The token used for deploying App Service needs the following permissions: `repo` and `workflow`.
  final pulumi.Input<String>? tokenSecret;
  /// The Token type. Possible values include `Bitbucket`, `Dropbox`, `Github`, and `OneDrive`.
  final pulumi.Input<String>? type;

  /// Creates a new [SourceControlTokenState].
  /// [token] The Access Token.
  /// [tokenSecret] The Access Token Secret.
  /// [type] The Token type. Possible values include `Bitbucket`, `Dropbox`, `Github`, and `OneDrive`.
  SourceControlTokenState({
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
      token: map['token'] == null ? null : (map['token']! as String).input(),
      tokenSecret: map['tokenSecret'] == null ? null : (map['tokenSecret']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

