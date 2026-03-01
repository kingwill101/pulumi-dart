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
  GetBillingHubServiceUsageResult({
    this.nextRequest,
    this.packageUsageEntries,
    this.totalCharges,
    this.totalUsedBillableHours,
    this.totalUsedFreeHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextRequest': ?nextRequest == null ? null : nextRequest!.toMap(),
      'packageUsageEntries': ?packageUsageEntries == null ? null : pulumi.Input.encodeList<BillingHubPackageUsageResponse, Map<String, dynamic>>(packageUsageEntries!, (value) => value.toMap()),
      'totalCharges': ?totalCharges,
      'totalUsedBillableHours': ?totalUsedBillableHours,
      'totalUsedFreeHours': ?totalUsedFreeHours,
    };
  }

  factory GetBillingHubServiceUsageResult.fromMap(Map<String, dynamic> map) {
    return GetBillingHubServiceUsageResult(
      nextRequest: map['nextRequest'] == null ? null : BillingHubGetUsageRequestResponse.fromMap((map['nextRequest'] as Map).cast<String, dynamic>()),
      packageUsageEntries: map['packageUsageEntries'] == null ? null : pulumi.Input.decodeList<BillingHubPackageUsageResponse>(map['packageUsageEntries'], (value) => BillingHubPackageUsageResponse.fromMap((value as Map).cast<String, dynamic>())),
      totalCharges: map['totalCharges'] == null ? null : map['totalCharges'] as double,
      totalUsedBillableHours: map['totalUsedBillableHours'] == null ? null : map['totalUsedBillableHours'] as double,
      totalUsedFreeHours: map['totalUsedFreeHours'] == null ? null : map['totalUsedFreeHours'] as double,
    );
  }
}

