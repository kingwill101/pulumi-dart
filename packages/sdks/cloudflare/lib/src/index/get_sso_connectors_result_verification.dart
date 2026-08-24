// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSsoConnectorsResultVerification {
  /// DNS verification code. Add this entire string to the DNS TXT record of the email domain to validate ownership.
  final pulumi.Input<String> code;
  /// The status of the verification code from the verification process.
  /// Available values: "awaiting", "pending", "failed", "verified".
  final pulumi.Input<String> status;

  /// Creates a new [GetSsoConnectorsResultVerification].
  /// [code] DNS verification code. Add this entire string to the DNS TXT record of the email domain to validate ownership.
  /// [status] The status of the verification code from the verification process.
  const GetSsoConnectorsResultVerification({
    required this.code,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'status': status,
    };
  }

  factory GetSsoConnectorsResultVerification.fromMap(Map<String, dynamic> map) {
    return GetSsoConnectorsResultVerification(
      code: pulumi.Input.fromValue(map['code'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
