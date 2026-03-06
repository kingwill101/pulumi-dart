// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OAuthAuthentication {
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

  /// Creates a new [OAuthAuthentication].
  /// [audience] Gets or sets the audience.
  /// [clientId] Gets or sets the client identifier.
  /// [secret] Gets or sets the secret, return value will always be empty.
  /// [tenant] Gets or sets the tenant.
  /// [type] Gets or sets the HTTP authentication type.
  const OAuthAuthentication({
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

  factory OAuthAuthentication.fromMap(Map<String, dynamic> map) {
    return OAuthAuthentication(
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

