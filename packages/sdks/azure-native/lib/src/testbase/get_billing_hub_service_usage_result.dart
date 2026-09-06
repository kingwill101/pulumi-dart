// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_hub_get_usage_request_response.dart';
import 'billing_hub_package_usage_response.dart';

/// Result data returned by getBillingHubServiceUsage.
class GetBillingHubServiceUsageResult {
  final BillingHubGetUsageRequestResponse? nextRequest;
  final List<BillingHubPackageUsageResponse>? packageUsageEntries;
  final double? totalCharges;
  final double? totalUsedBillableHours;
  final double? totalUsedFreeHours;

  /// Creates a new [GetBillingHubServiceUsageResult].
  /// [nextRequest] Optional.
  /// [packageUsageEntries] Optional.
  /// [totalCharges] Optional.
  /// [totalUsedBillableHours] Optional.
  /// [totalUsedFreeHours] Optional.
  const GetBillingHubServiceUsageResult({
    this.nextRequest,
    this.packageUsageEntries,
    this.totalCharges,
    this.totalUsedBillableHours,
    this.totalUsedFreeHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextRequest': ?nextRequest?.toMap(),
      'packageUsageEntries': ?(() { final guardedValue = packageUsageEntries; if (guardedValue == null) return null; return pulumi.Input.encodeList<BillingHubPackageUsageResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'totalCharges': ?totalCharges,
      'totalUsedBillableHours': ?totalUsedBillableHours,
      'totalUsedFreeHours': ?totalUsedFreeHours,
    };
  }

  factory GetBillingHubServiceUsageResult.fromMap(Map<String, dynamic> map) {
    return GetBillingHubServiceUsageResult(
      nextRequest: (() { final guardedValue = map['nextRequest']; if (guardedValue == null) return null; return BillingHubGetUsageRequestResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      packageUsageEntries: (() { final guardedValue = map['packageUsageEntries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<BillingHubPackageUsageResponse>(guardedValue, (value) => BillingHubPackageUsageResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      totalCharges: (() { final guardedValue = map['totalCharges']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalUsedBillableHours: (() { final guardedValue = map['totalUsedBillableHours']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalUsedFreeHours: (() { final guardedValue = map['totalUsedFreeHours']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
