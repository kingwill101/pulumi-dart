// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGatewayConnectionAuthorization {
  /// (Sensitive) The URL the account holder opens to authorize the provider. Share it only with the intended account holder.
  final pulumi.Input<String?>? connectUrl;
  /// When the authorization link expires.
  final pulumi.Input<String?>? expiresAt;
  /// The status of the authorization.
  final pulumi.Input<String?>? status;
  /// (Sensitive) The code the account holder confirms during authorization.
  final pulumi.Input<String?>? verificationCode;

  /// Creates a new [ActionGatewayConnectionAuthorization].
  /// [connectUrl] (Sensitive) The URL the account holder opens to authorize the provider. Share it only with the intended account holder.
  /// [expiresAt] When the authorization link expires.
  /// [status] The status of the authorization.
  /// [verificationCode] (Sensitive) The code the account holder confirms during authorization.
  const ActionGatewayConnectionAuthorization({
    this.connectUrl,
    this.expiresAt,
    this.status,
    this.verificationCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectUrl': ?connectUrl,
      'expiresAt': ?expiresAt,
      'status': ?status,
      'verificationCode': ?verificationCode,
    };
  }

  factory ActionGatewayConnectionAuthorization.fromMap(Map<String, dynamic> map) {
    return ActionGatewayConnectionAuthorization(
      connectUrl: (() { final guardedValue = map['connectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verificationCode: (() { final guardedValue = map['verificationCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
