// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMage protected disk details.
class InMageProtectedDiskDetailsResponse {
  /// The disk capacity in bytes.
  final pulumi.Input<double>? diskCapacityInBytes;

  /// The disk id.
  final pulumi.Input<String>? diskId;

  /// The disk name.
  final pulumi.Input<String>? diskName;

  /// A value indicating whether disk is resized.
  final pulumi.Input<String>? diskResized;

  /// The file system capacity in bytes.
  final pulumi.Input<double>? fileSystemCapacityInBytes;

  /// The health error code for the disk.
  final pulumi.Input<String>? healthErrorCode;

  /// The last RPO calculated time.
  final pulumi.Input<String>? lastRpoCalculatedTime;

  /// The Progress Health.
  final pulumi.Input<String>? progressHealth;

  /// The Progress Status.
  final pulumi.Input<String>? progressStatus;

  /// The protection stage.
  final pulumi.Input<String>? protectionStage;

  /// The PS data transit in MB.
  final pulumi.Input<double>? psDataInMB;

  /// The resync duration in seconds.
  final pulumi.Input<double>? resyncDurationInSeconds;

  /// The resync last 15 minutes transferred bytes.
  final pulumi.Input<double>? resyncLast15MinutesTransferredBytes;

  /// The last data transfer time in UTC.
  final pulumi.Input<String>? resyncLastDataTransferTimeUTC;

  /// The resync processed bytes.
  final pulumi.Input<double>? resyncProcessedBytes;

  /// The resync progress percentage.
  final pulumi.Input<int>? resyncProgressPercentage;

  /// A value indicating whether resync is required for this disk.
  final pulumi.Input<String>? resyncRequired;

  /// The resync start time.
  final pulumi.Input<String>? resyncStartTime;

  /// The resync total transferred bytes.
  final pulumi.Input<double>? resyncTotalTransferredBytes;

  /// The RPO in seconds.
  final pulumi.Input<double>? rpoInSeconds;

  /// The source data transit in MB.
  final pulumi.Input<double>? sourceDataInMB;

  /// The target data transit in MB.
  final pulumi.Input<double>? targetDataInMB;

  /// Creates a new [InMageProtectedDiskDetailsResponse].
  /// [diskCapacityInBytes] The disk capacity in bytes.
  /// [diskId] The disk id.
  /// [diskName] The disk name.
  /// [diskResized] A value indicating whether disk is resized.
  /// [fileSystemCapacityInBytes] The file system capacity in bytes.
  /// [healthErrorCode] The health error code for the disk.
  /// [lastRpoCalculatedTime] The last RPO calculated time.
  /// [progressHealth] The Progress Health.
  /// [progressStatus] The Progress Status.
  /// [protectionStage] The protection stage.
  /// [psDataInMB] The PS data transit in MB.
  /// [resyncDurationInSeconds] The resync duration in seconds.
  /// [resyncLast15MinutesTransferredBytes] The resync last 15 minutes transferred bytes.
  /// [resyncLastDataTransferTimeUTC] The last data transfer time in UTC.
  /// [resyncProcessedBytes] The resync processed bytes.
  /// [resyncProgressPercentage] The resync progress percentage.
  /// [resyncRequired] A value indicating whether resync is required for this disk.
  /// [resyncStartTime] The resync start time.
  /// [resyncTotalTransferredBytes] The resync total transferred bytes.
  /// [rpoInSeconds] The RPO in seconds.
  /// [sourceDataInMB] The source data transit in MB.
  /// [targetDataInMB] The target data transit in MB.
  InMageProtectedDiskDetailsResponse({
    this.diskCapacityInBytes,
    this.diskId,
    this.diskName,
    this.diskResized,
    this.fileSystemCapacityInBytes,
    this.healthErrorCode,
    this.lastRpoCalculatedTime,
    this.progressHealth,
    this.progressStatus,
    this.protectionStage,
    this.psDataInMB,
    this.resyncDurationInSeconds,
    this.resyncLast15MinutesTransferredBytes,
    this.resyncLastDataTransferTimeUTC,
    this.resyncProcessedBytes,
    this.resyncProgressPercentage,
    this.resyncRequired,
    this.resyncStartTime,
    this.resyncTotalTransferredBytes,
    this.rpoInSeconds,
    this.sourceDataInMB,
    this.targetDataInMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCapacityInBytes': ?diskCapacityInBytes,
      'diskId': ?diskId,
      'diskName': ?diskName,
      'diskResized': ?diskResized,
      'fileSystemCapacityInBytes': ?fileSystemCapacityInBytes,
      'healthErrorCode': ?healthErrorCode,
      'lastRpoCalculatedTime': ?lastRpoCalculatedTime,
      'progressHealth': ?progressHealth,
      'progressStatus': ?progressStatus,
      'protectionStage': ?protectionStage,
      'psDataInMB': ?psDataInMB,
      'resyncDurationInSeconds': ?resyncDurationInSeconds,
      'resyncLast15MinutesTransferredBytes':
          ?resyncLast15MinutesTransferredBytes,
      'resyncLastDataTransferTimeUTC': ?resyncLastDataTransferTimeUTC,
      'resyncProcessedBytes': ?resyncProcessedBytes,
      'resyncProgressPercentage': ?resyncProgressPercentage,
      'resyncRequired': ?resyncRequired,
      'resyncStartTime': ?resyncStartTime,
      'resyncTotalTransferredBytes': ?resyncTotalTransferredBytes,
      'rpoInSeconds': ?rpoInSeconds,
      'sourceDataInMB': ?sourceDataInMB,
      'targetDataInMB': ?targetDataInMB,
    };
  }

  factory InMageProtectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageProtectedDiskDetailsResponse(
      diskCapacityInBytes: (() {
        final guardedValue = map['diskCapacityInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      diskId: (() {
        final guardedValue = map['diskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskName: (() {
        final guardedValue = map['diskName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskResized: (() {
        final guardedValue = map['diskResized'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileSystemCapacityInBytes: (() {
        final guardedValue = map['fileSystemCapacityInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      healthErrorCode: (() {
        final guardedValue = map['healthErrorCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastRpoCalculatedTime: (() {
        final guardedValue = map['lastRpoCalculatedTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      progressHealth: (() {
        final guardedValue = map['progressHealth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      progressStatus: (() {
        final guardedValue = map['progressStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protectionStage: (() {
        final guardedValue = map['protectionStage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      psDataInMB: (() {
        final guardedValue = map['psDataInMB'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      resyncDurationInSeconds: (() {
        final guardedValue = map['resyncDurationInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      resyncLast15MinutesTransferredBytes: (() {
        final guardedValue = map['resyncLast15MinutesTransferredBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      resyncLastDataTransferTimeUTC: (() {
        final guardedValue = map['resyncLastDataTransferTimeUTC'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resyncProcessedBytes: (() {
        final guardedValue = map['resyncProcessedBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      resyncProgressPercentage: (() {
        final guardedValue = map['resyncProgressPercentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resyncRequired: (() {
        final guardedValue = map['resyncRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resyncStartTime: (() {
        final guardedValue = map['resyncStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resyncTotalTransferredBytes: (() {
        final guardedValue = map['resyncTotalTransferredBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      rpoInSeconds: (() {
        final guardedValue = map['rpoInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      sourceDataInMB: (() {
        final guardedValue = map['sourceDataInMB'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      targetDataInMB: (() {
        final guardedValue = map['targetDataInMB'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
