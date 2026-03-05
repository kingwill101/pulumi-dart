// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The `MembershipRole` expiry details.
class ExpiryDetailCloudidentityV1beta1 {
  /// The time at which the `MembershipRole` will expire.
  final pulumi.Input<String>? expireTime;

  /// Creates a new [ExpiryDetailCloudidentityV1beta1].
  /// [expireTime] The time at which the `MembershipRole` will expire.
  ExpiryDetailCloudidentityV1beta1({
    this.expireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': ?expireTime,
    };
  }

  factory ExpiryDetailCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return ExpiryDetailCloudidentityV1beta1(
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

