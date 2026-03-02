// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_hub_execution_usage_detail_response.dart';

class BillingHubUsageGroupResponse {
  final pulumi.Input<List<BillingHubExecutionUsageDetailResponse>>? executionUsageDetails;
  final pulumi.Input<String>? osBuild;
  final pulumi.Input<String>? productFamily;
  final pulumi.Input<String>? release;
  final pulumi.Input<String>? releaseBuildDate;
  final pulumi.Input<double>? releaseBuildNumber;
  final pulumi.Input<double>? releaseBuildRevision;
  final pulumi.Input<String>? testType;
  final pulumi.Input<double>? totalCharges;
  final pulumi.Input<double>? totalUsedBillableHours;
  final pulumi.Input<double>? totalUsedFreeHours;

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
  BillingHubUsageGroupResponse({
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
      executionUsageDetails: map['executionUsageDetails'] == null ? null : (pulumi.Input.decodeList<BillingHubExecutionUsageDetailResponse>(map['executionUsageDetails'], (value) => BillingHubExecutionUsageDetailResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      osBuild: map['osBuild'] == null ? null : (map['osBuild'] as String).input(),
      productFamily: map['productFamily'] == null ? null : (map['productFamily'] as String).input(),
      release: map['release'] == null ? null : (map['release'] as String).input(),
      releaseBuildDate: map['releaseBuildDate'] == null ? null : (map['releaseBuildDate'] as String).input(),
      releaseBuildNumber: map['releaseBuildNumber'] == null ? null : (map['releaseBuildNumber'] as double).input(),
      releaseBuildRevision: map['releaseBuildRevision'] == null ? null : (map['releaseBuildRevision'] as double).input(),
      testType: map['testType'] == null ? null : (map['testType'] as String).input(),
      totalCharges: map['totalCharges'] == null ? null : (map['totalCharges'] as double).input(),
      totalUsedBillableHours: map['totalUsedBillableHours'] == null ? null : (map['totalUsedBillableHours'] as double).input(),
      totalUsedFreeHours: map['totalUsedFreeHours'] == null ? null : (map['totalUsedFreeHours'] as double).input(),
    );
  }
}

