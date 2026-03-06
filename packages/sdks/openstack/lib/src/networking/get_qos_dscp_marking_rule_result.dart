// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQosDscpMarkingRule.
class GetQosDscpMarkingRuleResult {
  /// See Argument Reference above.
  final int dscpMark;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final String qosPolicyId;
  /// See Argument Reference above.
  final String region;

  /// Creates a new [GetQosDscpMarkingRuleResult].
  /// [dscpMark] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [qosPolicyId] See Argument Reference above.
  /// [region] See Argument Reference above.
  const GetQosDscpMarkingRuleResult({
    required this.dscpMark,
    required this.id,
    required this.qosPolicyId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscpMark': dscpMark,
      'id': id,
      'qosPolicyId': qosPolicyId,
      'region': region,
    };
  }

  factory GetQosDscpMarkingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetQosDscpMarkingRuleResult(
      dscpMark: map['dscpMark'] as int,
      id: map['id'] as String,
      qosPolicyId: map['qosPolicyId'] as String,
      region: map['region'] as String,
    );
  }
}

