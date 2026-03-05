// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetSiteFailureReasonQuotaFailure {
  /// This number is an estimation on how much total quota this project
  /// needs to successfully complete indexing.
  final pulumi.Input<int>? totalRequiredQuota;

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
      totalRequiredQuota: (() { final guardedValue = map['totalRequiredQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

