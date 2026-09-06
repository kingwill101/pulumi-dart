// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KeyPolicy assigned to the storage account.
class KeyPolicyResponse {
  /// The key expiration period in days.
  final pulumi.Input<int> keyExpirationPeriodInDays;

  /// Creates a new [KeyPolicyResponse].
  /// [keyExpirationPeriodInDays] The key expiration period in days.
  const KeyPolicyResponse({
    required this.keyExpirationPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyExpirationPeriodInDays': keyExpirationPeriodInDays,
    };
  }

  factory KeyPolicyResponse.fromMap(Map<String, dynamic> map) {
    return KeyPolicyResponse(
      keyExpirationPeriodInDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['keyExpirationPeriodInDays'])),
    );
  }
}
