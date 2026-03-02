// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageAzureV2 protected disk details.
class InMageAzureV2ProtectedDiskDetailsResponse {
  /// The disk capacity in bytes.
  final pulumi.Input<double>? diskCapacityInBytes;
  /// The disk id.
  final pulumi.Input<String>? diskId;
  /// The disk name.
  final pulumi.Input<String>? diskName;
  /// A value indicating whether disk is resized.
  final pulumi.Input<String>? diskResized;
  /// The disk file system capacity in bytes.
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
  final pulumi.Input<double>? psDataInMegaBytes;
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
  /// The seconds to take for switch provider.
  final pulumi.Input<double>? secondsToTakeSwitchProvider;
  /// The source data transit in MB.
  final pulumi.Input<double>? sourceDataInMegaBytes;
  /// The target data transit in MB.
  final pulumi.Input<double>? targetDataInMegaBytes;

  /// Creates a new [InMageAzureV2ProtectedDiskDetailsResponse].
  /// [diskCapacityInBytes] The disk capacity in bytes.
  /// [diskId] The disk id.
  /// [diskName] The disk name.
  /// [diskResized] A value indicating whether disk is resized.
  /// [fileSystemCapacityInBytes] The disk file system capacity in bytes.
  /// [healthErrorCode] The health error code for the disk.
  /// [lastRpoCalculatedTime] The last RPO calculated time.
  /// [progressHealth] The Progress Health.
  /// [progressStatus] The Progress Status.
  /// [protectionStage] The protection stage.
  /// [psDataInMegaBytes] The PS data transit in MB.
  /// [resyncDurationInSeconds] The resync duration in seconds.
  /// [resyncLast15MinutesTransferredBytes] The resync last 15 minutes transferred bytes.
  /// [resyncLastDataTransferTimeUTC] The last data transfer time in UTC.
  /// [resyncProcessedBytes] The resync processed bytes.
  /// [resyncProgressPercentage] The resync progress percentage.
  /// [resyncRequired] A value indicating whether resync is required for this disk.
  /// [resyncStartTime] The resync start time.
  /// [resyncTotalTransferredBytes] The resync total transferred bytes.
  /// [rpoInSeconds] The RPO in seconds.
  /// [secondsToTakeSwitchProvider] The seconds to take for switch provider.
  /// [sourceDataInMegaBytes] The source data transit in MB.
  /// [targetDataInMegaBytes] The target data transit in MB.
  InMageAzureV2ProtectedDiskDetailsResponse({
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
    this.psDataInMegaBytes,
    this.resyncDurationInSeconds,
    this.resyncLast15MinutesTransferredBytes,
    this.resyncLastDataTransferTimeUTC,
    this.resyncProcessedBytes,
    this.resyncProgressPercentage,
    this.resyncRequired,
    this.resyncStartTime,
    this.resyncTotalTransferredBytes,
    this.rpoInSeconds,
    this.secondsToTakeSwitchProvider,
    this.sourceDataInMegaBytes,
    this.targetDataInMegaBytes,
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
      'psDataInMegaBytes': ?psDataInMegaBytes,
      'resyncDurationInSeconds': ?resyncDurationInSeconds,
      'resyncLast15MinutesTransferredBytes': ?resyncLast15MinutesTransferredBytes,
      'resyncLastDataTransferTimeUTC': ?resyncLastDataTransferTimeUTC,
      'resyncProcessedBytes': ?resyncProcessedBytes,
      'resyncProgressPercentage': ?resyncProgressPercentage,
      'resyncRequired': ?resyncRequired,
      'resyncStartTime': ?resyncStartTime,
      'resyncTotalTransferredBytes': ?resyncTotalTransferredBytes,
      'rpoInSeconds': ?rpoInSeconds,
      'secondsToTakeSwitchProvider': ?secondsToTakeSwitchProvider,
      'sourceDataInMegaBytes': ?sourceDataInMegaBytes,
      'targetDataInMegaBytes': ?targetDataInMegaBytes,
    };
  }

  factory InMageAzureV2ProtectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageAzureV2ProtectedDiskDetailsResponse(
      diskCapacityInBytes: map['diskCapacityInBytes'] == null ? null : (map['diskCapacityInBytes']! as double).input(),
      diskId: map['diskId'] == null ? null : (map['diskId']! as String).input(),
      diskName: map['diskName'] == null ? null : (map['diskName']! as String).input(),
      diskResized: map['diskResized'] == null ? null : (map['diskResized']! as String).input(),
      fileSystemCapacityInBytes: map['fileSystemCapacityInBytes'] == null ? null : (map['fileSystemCapacityInBytes']! as double).input(),
      healthErrorCode: map['healthErrorCode'] == null ? null : (map['healthErrorCode']! as String).input(),
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : (map['lastRpoCalculatedTime']! as String).input(),
      progressHealth: map['progressHealth'] == null ? null : (map['progressHealth']! as String).input(),
      progressStatus: map['progressStatus'] == null ? null : (map['progressStatus']! as String).input(),
      protectionStage: map['protectionStage'] == null ? null : (map['protectionStage']! as String).input(),
      psDataInMegaBytes: map['psDataInMegaBytes'] == null ? null : (map['psDataInMegaBytes']! as double).input(),
      resyncDurationInSeconds: map['resyncDurationInSeconds'] == null ? null : (map['resyncDurationInSeconds']! as double).input(),
      resyncLast15MinutesTransferredBytes: map['resyncLast15MinutesTransferredBytes'] == null ? null : (map['resyncLast15MinutesTransferredBytes']! as double).input(),
      resyncLastDataTransferTimeUTC: map['resyncLastDataTransferTimeUTC'] == null ? null : (map['resyncLastDataTransferTimeUTC']! as String).input(),
      resyncProcessedBytes: map['resyncProcessedBytes'] == null ? null : (map['resyncProcessedBytes']! as double).input(),
      resyncProgressPercentage: map['resyncProgressPercentage'] == null ? null : (map['resyncProgressPercentage']! as int).input(),
      resyncRequired: map['resyncRequired'] == null ? null : (map['resyncRequired']! as String).input(),
      resyncStartTime: map['resyncStartTime'] == null ? null : (map['resyncStartTime']! as String).input(),
      resyncTotalTransferredBytes: map['resyncTotalTransferredBytes'] == null ? null : (map['resyncTotalTransferredBytes']! as double).input(),
      rpoInSeconds: map['rpoInSeconds'] == null ? null : (map['rpoInSeconds']! as double).input(),
      secondsToTakeSwitchProvider: map['secondsToTakeSwitchProvider'] == null ? null : (map['secondsToTakeSwitchProvider']! as double).input(),
      sourceDataInMegaBytes: map['sourceDataInMegaBytes'] == null ? null : (map['sourceDataInMegaBytes']! as double).input(),
      targetDataInMegaBytes: map['targetDataInMegaBytes'] == null ? null : (map['targetDataInMegaBytes']! as double).input(),
    );
  }
}

