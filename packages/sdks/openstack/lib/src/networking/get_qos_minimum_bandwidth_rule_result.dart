// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQosMinimumBandwidthRule.
class GetQosMinimumBandwidthRuleResult {
  final String direction;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final int minKbps;
  /// See Argument Reference above.
  final String qosPolicyId;
  /// See Argument Reference above.
  final String region;

  /// Creates a new [GetQosMinimumBandwidthRuleResult].
  /// [direction] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minKbps] See Argument Reference above.
  /// [qosPolicyId] See Argument Reference above.
  /// [region] See Argument Reference above.
  GetQosMinimumBandwidthRuleResult({
    required this.direction,
    required this.id,
    required this.minKbps,
    required this.qosPolicyId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'id': id,
      'minKbps': minKbps,
      'qosPolicyId': qosPolicyId,
      'region': region,
    };
  }

  factory GetQosMinimumBandwidthRuleResult.fromMap(Map<String, dynamic> map) {
    return GetQosMinimumBandwidthRuleResult(
      direction: map['direction'] as String,
      id: map['id'] as String,
      minKbps: map['minKbps'] as int,
      qosPolicyId: map['qosPolicyId'] as String,
      region: map['region'] as String,
    );
  }
}

