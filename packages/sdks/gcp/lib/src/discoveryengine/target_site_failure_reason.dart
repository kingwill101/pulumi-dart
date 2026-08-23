// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_site_failure_reason_quota_failure.dart';

class TargetSiteFailureReason {
  /// Site verification state indicating the ownership and validity.
  /// Structure is documented below.
  final pulumi.Input<TargetSiteFailureReasonQuotaFailure>? quotaFailure;

  /// Creates a new [TargetSiteFailureReason].
  /// [quotaFailure] Site verification state indicating the ownership and validity.
  const TargetSiteFailureReason({
    this.quotaFailure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quotaFailure': ?pulumi.Input.mapOptionalInputValue<TargetSiteFailureReasonQuotaFailure, Map<String, dynamic>>(quotaFailure, (value) => value.toMap()),
    };
  }

  factory TargetSiteFailureReason.fromMap(Map<String, dynamic> map) {
    return TargetSiteFailureReason(
      quotaFailure: (() { final guardedValue = map['quotaFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetSiteFailureReasonQuotaFailure.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
