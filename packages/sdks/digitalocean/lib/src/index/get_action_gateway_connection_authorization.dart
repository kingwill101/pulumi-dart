// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGatewayConnectionAuthorization {
  /// (Sensitive) The URL the account holder opens to authorize the provider.
  final pulumi.Input<String> connectUrl;
  /// When the authorization link expires.
  final pulumi.Input<String> expiresAt;
  /// The status of the authorization.
  final pulumi.Input<String> status;
  /// (Sensitive) The code the account holder confirms during authorization.
  final pulumi.Input<String> verificationCode;

  /// Creates a new [GetActionGatewayConnectionAuthorization].
  /// [connectUrl] (Sensitive) The URL the account holder opens to authorize the provider.
  /// [expiresAt] When the authorization link expires.
  /// [status] The status of the authorization.
  /// [verificationCode] (Sensitive) The code the account holder confirms during authorization.
  const GetActionGatewayConnectionAuthorization({
    required this.connectUrl,
    required this.expiresAt,
    required this.status,
    required this.verificationCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectUrl': connectUrl,
      'expiresAt': expiresAt,
      'status': status,
      'verificationCode': verificationCode,
    };
  }

  factory GetActionGatewayConnectionAuthorization.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayConnectionAuthorization(
      connectUrl: pulumi.Input.fromValue(map['connectUrl'] as String),
      expiresAt: pulumi.Input.fromValue(map['expiresAt'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      verificationCode: pulumi.Input.fromValue(map['verificationCode'] as String),
    );
  }
}
