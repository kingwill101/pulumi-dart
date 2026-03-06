// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The `MembershipRole` expiry details.
class ExpiryDetail {
  /// The time at which the `MembershipRole` will expire.
  final pulumi.Input<String>? expireTime;

  /// Creates a new [ExpiryDetail].
  /// [expireTime] The time at which the `MembershipRole` will expire.
  const ExpiryDetail({
    this.expireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': ?expireTime,
    };
  }

  factory ExpiryDetail.fromMap(Map<String, dynamic> map) {
    return ExpiryDetail(
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

