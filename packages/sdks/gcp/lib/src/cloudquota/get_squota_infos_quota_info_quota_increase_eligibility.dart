// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility {
  /// The enumeration of reasons when it is ineligible to request increase adjustment.
  final pulumi.Input<String> ineligibilityReason;
  /// Whether a higher quota value can be requested for the quota.
  final pulumi.Input<bool> isEligible;

  /// Creates a new [GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility].
  /// [ineligibilityReason] The enumeration of reasons when it is ineligible to request increase adjustment.
  /// [isEligible] Whether a higher quota value can be requested for the quota.
  const GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility({
    required this.ineligibilityReason,
    required this.isEligible,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ineligibilityReason': ineligibilityReason,
      'isEligible': isEligible,
    };
  }

  factory GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility(
      ineligibilityReason: pulumi.Input.fromValue(map['ineligibilityReason'] as String),
      isEligible: pulumi.Input.fromValue(map['isEligible'] as bool),
    );
  }
}
