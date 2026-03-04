// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The `MembershipRole` expiry details.
class ExpiryDetailResponse {
  /// The time at which the `MembershipRole` will expire.
  final pulumi.Input<String> expireTime;

  /// Creates a new [ExpiryDetailResponse].
  /// [expireTime] The time at which the `MembershipRole` will expire.
  ExpiryDetailResponse({required this.expireTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expireTime': expireTime};
  }

  factory ExpiryDetailResponse.fromMap(Map<String, dynamic> map) {
    return ExpiryDetailResponse(
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
    );
  }
}
