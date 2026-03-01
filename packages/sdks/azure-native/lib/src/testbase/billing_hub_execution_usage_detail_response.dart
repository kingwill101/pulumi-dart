// ignore_for_file: unused_element, unnecessary_cast


class BillingHubExecutionUsageDetailResponse {
  final String? applicationName;
  final String? applicationVersion;
  final double? billedCharges;
  final String? endTimeStamp;
  final String? executionRequestId;
  final String? meterId;
  final String? osBuild;
  final String? release;
  final String? sku;
  final String? startTimeStamp;
  final String? testType;
  final String? updateType;
  final double? usedBillableHours;
  final double? usedFreeHours;

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
      applicationName: map['applicationName'] == null ? null : map['applicationName'] as String,
      applicationVersion: map['applicationVersion'] == null ? null : map['applicationVersion'] as String,
      billedCharges: map['billedCharges'] == null ? null : map['billedCharges'] as double,
      endTimeStamp: map['endTimeStamp'] == null ? null : map['endTimeStamp'] as String,
      executionRequestId: map['executionRequestId'] == null ? null : map['executionRequestId'] as String,
      meterId: map['meterId'] == null ? null : map['meterId'] as String,
      osBuild: map['osBuild'] == null ? null : map['osBuild'] as String,
      release: map['release'] == null ? null : map['release'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      startTimeStamp: map['startTimeStamp'] == null ? null : map['startTimeStamp'] as String,
      testType: map['testType'] == null ? null : map['testType'] as String,
      updateType: map['updateType'] == null ? null : map['updateType'] as String,
      usedBillableHours: map['usedBillableHours'] == null ? null : map['usedBillableHours'] as double,
      usedFreeHours: map['usedFreeHours'] == null ? null : map['usedFreeHours'] as double,
    );
  }
}

