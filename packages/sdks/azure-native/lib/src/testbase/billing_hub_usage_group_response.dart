// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_hub_execution_usage_detail_response.dart';

class BillingHubUsageGroupResponse {
  final pulumi.Input<List<BillingHubExecutionUsageDetailResponse>?>? executionUsageDetails;
  final pulumi.Input<String?>? osBuild;
  final pulumi.Input<String?>? productFamily;
  final pulumi.Input<String?>? release;
  final pulumi.Input<String?>? releaseBuildDate;
  final pulumi.Input<double?>? releaseBuildNumber;
  final pulumi.Input<double?>? releaseBuildRevision;
  final pulumi.Input<String?>? testType;
  final pulumi.Input<double?>? totalCharges;
  final pulumi.Input<double?>? totalUsedBillableHours;
  final pulumi.Input<double?>? totalUsedFreeHours;

  /// Creates a new [BillingHubUsageGroupResponse].
  /// [executionUsageDetails] Optional.
  /// [osBuild] Optional.
  /// [productFamily] Optional.
  /// [release] Optional.
  /// [releaseBuildDate] Optional.
  /// [releaseBuildNumber] Optional.
  /// [releaseBuildRevision] Optional.
  /// [testType] Optional.
  /// [totalCharges] Optional.
  /// [totalUsedBillableHours] Optional.
  /// [totalUsedFreeHours] Optional.
  const BillingHubUsageGroupResponse({
    this.executionUsageDetails,
    this.osBuild,
    this.productFamily,
    this.release,
    this.releaseBuildDate,
    this.releaseBuildNumber,
    this.releaseBuildRevision,
    this.testType,
    this.totalCharges,
    this.totalUsedBillableHours,
    this.totalUsedFreeHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionUsageDetails': ?pulumi.Input.mapOptionalInputValue<List<BillingHubExecutionUsageDetailResponse>, List<Map<String, dynamic>>>(executionUsageDetails, (value) => pulumi.Input.encodeList<BillingHubExecutionUsageDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osBuild': ?osBuild,
      'productFamily': ?productFamily,
      'release': ?release,
      'releaseBuildDate': ?releaseBuildDate,
      'releaseBuildNumber': ?releaseBuildNumber,
      'releaseBuildRevision': ?releaseBuildRevision,
      'testType': ?testType,
      'totalCharges': ?totalCharges,
      'totalUsedBillableHours': ?totalUsedBillableHours,
      'totalUsedFreeHours': ?totalUsedFreeHours,
    };
  }

  factory BillingHubUsageGroupResponse.fromMap(Map<String, dynamic> map) {
    return BillingHubUsageGroupResponse(
      executionUsageDetails: (() { final guardedValue = map['executionUsageDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BillingHubExecutionUsageDetailResponse>(guardedValue, (value) => BillingHubExecutionUsageDetailResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      osBuild: (() { final guardedValue = map['osBuild']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productFamily: (() { final guardedValue = map['productFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      release: (() { final guardedValue = map['release']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseBuildDate: (() { final guardedValue = map['releaseBuildDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseBuildNumber: (() { final guardedValue = map['releaseBuildNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      releaseBuildRevision: (() { final guardedValue = map['releaseBuildRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      testType: (() { final guardedValue = map['testType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalCharges: (() { final guardedValue = map['totalCharges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      totalUsedBillableHours: (() { final guardedValue = map['totalUsedBillableHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      totalUsedFreeHours: (() { final guardedValue = map['totalUsedFreeHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
