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

  factory BillingHubFreeHourIncrementEntryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BillingHubFreeHourIncrementEntryResponse(
      createTimeStamp: (() {
        final guardedValue = map['createTimeStamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expirationTimeStamp: (() {
        final guardedValue = map['expirationTimeStamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      freeHourStatus: (() {
        final guardedValue = map['freeHourStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      freeHourType: (() {
        final guardedValue = map['freeHourType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      incrementalFreeHours: (() {
        final guardedValue = map['incrementalFreeHours'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      remainingFreeHours: (() {
        final guardedValue = map['remainingFreeHours'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
