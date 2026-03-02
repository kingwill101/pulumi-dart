// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OAuthAuthenticationResponse {
  /// Gets or sets the audience.
  final pulumi.Input<String>? audience;
  /// Gets or sets the client identifier.
  final pulumi.Input<String>? clientId;
  /// Gets or sets the secret, return value will always be empty.
  final pulumi.Input<String>? secret;
  /// Gets or sets the tenant.
  final pulumi.Input<String>? tenant;
  /// Gets or sets the HTTP authentication type.
  /// Expected value is 'ActiveDirectoryOAuth'.
  final pulumi.Input<String> type;

  /// Creates a new [OAuthAuthenticationResponse].
  /// [audience] Gets or sets the audience.
  /// [clientId] Gets or sets the client identifier.
  /// [secret] Gets or sets the secret, return value will always be empty.
  /// [tenant] Gets or sets the tenant.
  /// [type] Gets or sets the HTTP authentication type.
  OAuthAuthenticationResponse({
    this.audience,
    this.clientId,
    this.secret,
    this.tenant,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'clientId': ?clientId,
      'secret': ?secret,
      'tenant': ?tenant,
      'type': type,
    };
  }

  factory OAuthAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return OAuthAuthenticationResponse(
      audience: map['audience'] == null ? null : (map['audience'] as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      secret: map['secret'] == null ? null : (map['secret'] as String).input(),
      tenant: map['tenant'] == null ? null : (map['tenant'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

