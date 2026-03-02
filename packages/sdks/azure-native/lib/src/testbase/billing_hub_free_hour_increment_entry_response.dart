// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BillingHubFreeHourIncrementEntryResponse {
  final pulumi.Input<String>? createTimeStamp;
  final pulumi.Input<String>? expirationTimeStamp;
  final pulumi.Input<String>? freeHourStatus;
  final pulumi.Input<String>? freeHourType;
  final pulumi.Input<double>? incrementalFreeHours;
  final pulumi.Input<double>? remainingFreeHours;

  /// Creates a new [BillingHubFreeHourIncrementEntryResponse].
  /// [createTimeStamp] Optional.
  /// [expirationTimeStamp] Optional.
  /// [freeHourStatus] Optional.
  /// [freeHourType] Optional.
  /// [incrementalFreeHours] Optional.
  /// [remainingFreeHours] Optional.
  BillingHubFreeHourIncrementEntryResponse({
    this.createTimeStamp,
    this.expirationTimeStamp,
    this.freeHourStatus,
    this.freeHourType,
    this.incrementalFreeHours,
    this.remainingFreeHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTimeStamp': ?createTimeStamp,
      'expirationTimeStamp': ?expirationTimeStamp,
      'freeHourStatus': ?freeHourStatus,
      'freeHourType': ?freeHourType,
      'incrementalFreeHours': ?incrementalFreeHours,
      'remainingFreeHours': ?remainingFreeHours,
    };
  }

  factory BillingHubFreeHourIncrementEntryResponse.fromMap(Map<String, dynamic> map) {
    return BillingHubFreeHourIncrementEntryResponse(
      createTimeStamp: map['createTimeStamp'] == null ? null : (map['createTimeStamp'] as String).input(),
      expirationTimeStamp: map['expirationTimeStamp'] == null ? null : (map['expirationTimeStamp'] as String).input(),
      freeHourStatus: map['freeHourStatus'] == null ? null : (map['freeHourStatus'] as String).input(),
      freeHourType: map['freeHourType'] == null ? null : (map['freeHourType'] as String).input(),
      incrementalFreeHours: map['incrementalFreeHours'] == null ? null : (map['incrementalFreeHours'] as double).input(),
      remainingFreeHours: map['remainingFreeHours'] == null ? null : (map['remainingFreeHours'] as double).input(),
    );
  }
}

