// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocationQuotaRuleResponse {
  /// The location.
  final pulumi.Input<String>? location;
  /// The policy.
  final pulumi.Input<String>? policy;
  /// The quota id.
  final pulumi.Input<String>? quotaId;

  /// Creates a new [LocationQuotaRuleResponse].
  /// [location] The location.
  /// [policy] The policy.
  /// [quotaId] The quota id.
  LocationQuotaRuleResponse({
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

  factory LocationQuotaRuleResponse.fromMap(Map<String, dynamic> map) {
    return LocationQuotaRuleResponse(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      policy: map['policy'] == null ? null : (map['policy']! as String).input(),
      quotaId: map['quotaId'] == null ? null : (map['quotaId']! as String).input(),
    );
  }
}

