// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BillingHubExecutionUsageDetailResponse {
  final pulumi.Input<String>? applicationName;
  final pulumi.Input<String>? applicationVersion;
  final pulumi.Input<double>? billedCharges;
  final pulumi.Input<String>? endTimeStamp;
  final pulumi.Input<String>? executionRequestId;
  final pulumi.Input<String>? meterId;
  final pulumi.Input<String>? osBuild;
  final pulumi.Input<String>? release;
  final pulumi.Input<String>? sku;
  final pulumi.Input<String>? startTimeStamp;
  final pulumi.Input<String>? testType;
  final pulumi.Input<String>? updateType;
  final pulumi.Input<double>? usedBillableHours;
  final pulumi.Input<double>? usedFreeHours;

  /// Creates a new [BillingHubExecutionUsageDetailResponse].
  /// [applicationName] Optional.
  /// [applicationVersion] Optional.
  /// [billedCharges] Optional.
  /// [endTimeStamp] Optional.
  /// [executionRequestId] Optional.
  /// [meterId] Optional.
  /// [osBuild] Optional.
  /// [release] Optional.
  /// [sku] Optional.
  /// [startTimeStamp] Optional.
  /// [testType] Optional.
  /// [updateType] Optional.
  /// [usedBillableHours] Optional.
  /// [usedFreeHours] Optional.
  BillingHubExecutionUsageDetailResponse({
    this.applicationName,
    this.applicationVersion,
    this.billedCharges,
    this.endTimeStamp,
    this.executionRequestId,
    this.meterId,
    this.osBuild,
    this.release,
    this.sku,
    this.startTimeStamp,
    this.testType,
    this.updateType,
    this.usedBillableHours,
    this.usedFreeHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'applicationVersion': ?applicationVersion,
      'billedCharges': ?billedCharges,
      'endTimeStamp': ?endTimeStamp,
      'executionRequestId': ?executionRequestId,
      'meterId': ?meterId,
      'osBuild': ?osBuild,
      'release': ?release,
      'sku': ?sku,
      'startTimeStamp': ?startTimeStamp,
      'testType': ?testType,
      'updateType': ?updateType,
      'usedBillableHours': ?usedBillableHours,
      'usedFreeHours': ?usedFreeHours,
    };
  }

  factory BillingHubExecutionUsageDetailResponse.fromMap(Map<String, dynamic> map) {
    return BillingHubExecutionUsageDetailResponse(
      applicationName: map['applicationName'] == null ? null : (map['applicationName'] as String).input(),
      applicationVersion: map['applicationVersion'] == null ? null : (map['applicationVersion'] as String).input(),
      billedCharges: map['billedCharges'] == null ? null : (map['billedCharges'] as double).input(),
      endTimeStamp: map['endTimeStamp'] == null ? null : (map['endTimeStamp'] as String).input(),
      executionRequestId: map['executionRequestId'] == null ? null : (map['executionRequestId'] as String).input(),
      meterId: map['meterId'] == null ? null : (map['meterId'] as String).input(),
      osBuild: map['osBuild'] == null ? null : (map['osBuild'] as String).input(),
      release: map['release'] == null ? null : (map['release'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku'] as String).input(),
      startTimeStamp: map['startTimeStamp'] == null ? null : (map['startTimeStamp'] as String).input(),
      testType: map['testType'] == null ? null : (map['testType'] as String).input(),
      updateType: map['updateType'] == null ? null : (map['updateType'] as String).input(),
      usedBillableHours: map['usedBillableHours'] == null ? null : (map['usedBillableHours'] as double).input(),
      usedFreeHours: map['usedFreeHours'] == null ? null : (map['usedFreeHours'] as double).input(),
    );
  }
}

