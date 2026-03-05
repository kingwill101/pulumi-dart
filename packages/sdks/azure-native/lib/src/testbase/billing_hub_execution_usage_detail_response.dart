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
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationVersion: (() { final guardedValue = map['applicationVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      billedCharges: (() { final guardedValue = map['billedCharges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      endTimeStamp: (() { final guardedValue = map['endTimeStamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRequestId: (() { final guardedValue = map['executionRequestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meterId: (() { final guardedValue = map['meterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osBuild: (() { final guardedValue = map['osBuild']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      release: (() { final guardedValue = map['release']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTimeStamp: (() { final guardedValue = map['startTimeStamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testType: (() { final guardedValue = map['testType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateType: (() { final guardedValue = map['updateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usedBillableHours: (() { final guardedValue = map['usedBillableHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      usedFreeHours: (() { final guardedValue = map['usedFreeHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

