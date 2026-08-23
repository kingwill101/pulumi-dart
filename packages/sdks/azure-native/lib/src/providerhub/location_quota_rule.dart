// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocationQuotaRule {
  /// The location.
  final pulumi.Input<String>? location;
  /// The policy.
  final pulumi.Input<String>? policy;
  /// The quota id.
  final pulumi.Input<String>? quotaId;

  /// Creates a new [LocationQuotaRule].
  /// [location] The location.
  /// [policy] The policy.
  /// [quotaId] The quota id.
  const LocationQuotaRule({
    this.location,
    this.policy,
    this.quotaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'policy': ?policy,
      'quotaId': ?quotaId,
    };
  }

  factory LocationQuotaRule.fromMap(Map<String, dynamic> map) {
    return LocationQuotaRule(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaId: (() { final guardedValue = map['quotaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
