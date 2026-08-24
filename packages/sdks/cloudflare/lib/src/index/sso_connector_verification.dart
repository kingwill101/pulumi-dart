// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SsoConnectorVerification {
  /// DNS verification code. Add this entire string to the DNS TXT record of the email domain to validate ownership.
  final pulumi.Input<String?>? code;
  /// The status of the verification code from the verification process.
  /// Available values: "awaiting", "pending", "failed", "verified".
  final pulumi.Input<String?>? status;

  /// Creates a new [SsoConnectorVerification].
  /// [code] DNS verification code. Add this entire string to the DNS TXT record of the email domain to validate ownership.
  /// [status] The status of the verification code from the verification process.
  const SsoConnectorVerification({
    this.code,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'status': ?status,
    };
  }

  factory SsoConnectorVerification.fromMap(Map<String, dynamic> map) {
    return SsoConnectorVerification(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
