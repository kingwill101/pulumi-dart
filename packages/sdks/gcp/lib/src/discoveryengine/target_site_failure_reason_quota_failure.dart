// ignore_for_file: unused_element, unnecessary_cast


class TargetSiteFailureReasonQuotaFailure {
  /// This number is an estimation on how much total quota this project
  /// needs to successfully complete indexing.
  final int? totalRequiredQuota;

  /// Creates a new [TargetSiteFailureReasonQuotaFailure].
  /// [totalRequiredQuota] This number is an estimation on how much total quota this project
  TargetSiteFailureReasonQuotaFailure({
    this.totalRequiredQuota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalRequiredQuota': ?totalRequiredQuota,
    };
  }

  factory TargetSiteFailureReasonQuotaFailure.fromMap(Map<String, dynamic> map) {
    return TargetSiteFailureReasonQuotaFailure(
      totalRequiredQuota: map['totalRequiredQuota'] == null ? null : map['totalRequiredQuota'] as int,
    );
  }
}

