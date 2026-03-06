// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQosBandwidthLimitRule.
class GetQosBandwidthLimitRuleResult {
  /// See Argument Reference above.
  final String direction;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final int maxBurstKbps;
  /// See Argument Reference above.
  final int maxKbps;
  /// See Argument Reference above.
  final String qosPolicyId;
  /// See Argument Reference above.
  final String region;

  /// Creates a new [GetQosBandwidthLimitRuleResult].
  /// [direction] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [maxBurstKbps] See Argument Reference above.
  /// [maxKbps] See Argument Reference above.
  /// [qosPolicyId] See Argument Reference above.
  /// [region] See Argument Reference above.
  const GetQosBandwidthLimitRuleResult({
    required this.direction,
    required this.id,
    required this.maxBurstKbps,
    required this.maxKbps,
    required this.qosPolicyId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'id': id,
      'maxBurstKbps': maxBurstKbps,
      'maxKbps': maxKbps,
      'qosPolicyId': qosPolicyId,
      'region': region,
    };
  }

  factory GetQosBandwidthLimitRuleResult.fromMap(Map<String, dynamic> map) {
    return GetQosBandwidthLimitRuleResult(
      direction: map['direction'] as String,
      id: map['id'] as String,
      maxBurstKbps: map['maxBurstKbps'] as int,
      maxKbps: map['maxKbps'] as int,
      qosPolicyId: map['qosPolicyId'] as String,
      region: map['region'] as String,
    );
  }
}

