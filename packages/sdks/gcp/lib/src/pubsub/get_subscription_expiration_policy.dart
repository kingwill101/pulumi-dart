// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubscriptionExpirationPolicy {
  /// Specifies the "time-to-live" duration for an associated resource. The
  /// resource expires if it is not active for a period of ttl.
  /// If ttl is set to "", the associated resource never expires.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'.
  /// Example - "3.5s".
  final pulumi.Input<String> ttl;

  /// Creates a new [GetSubscriptionExpirationPolicy].
  /// [ttl] Specifies the "time-to-live" duration for an associated resource. The
  const GetSubscriptionExpirationPolicy({
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ttl': ttl,
    };
  }

  factory GetSubscriptionExpirationPolicy.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionExpirationPolicy(
      ttl: pulumi.Input.fromValue(map['ttl'] as String),
    );
  }
}

