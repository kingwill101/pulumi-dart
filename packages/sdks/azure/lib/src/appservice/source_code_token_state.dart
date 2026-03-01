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

  factory SourceCodeTokenState.fromMap(Map<String, dynamic> map) {
    return SourceCodeTokenState(
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
      tokenSecret: map['tokenSecret'] == null ? null : pulumi.Output.create<String>(map['tokenSecret'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

