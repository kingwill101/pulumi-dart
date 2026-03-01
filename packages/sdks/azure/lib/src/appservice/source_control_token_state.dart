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
    pulumi.Output<String>? token,
    pulumi.Output<String>? tokenSecret,
    pulumi.Output<String>? type,
  }) :
      token = pulumi.Input.asOptionalInput<String>(token),
      tokenSecret = pulumi.Input.asOptionalInput<String>(tokenSecret),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': ?token,
      'tokenSecret': ?tokenSecret,
      'type': ?type,
    };
  }

  factory SourceControlTokenState.fromMap(Map<String, dynamic> map) {
    return SourceControlTokenState(
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
      tokenSecret: map['tokenSecret'] == null ? null : pulumi.Output.create<String>(map['tokenSecret'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

