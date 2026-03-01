// ignore_for_file: unused_element, unnecessary_cast


/// InMageAzureV2 protected disk details.
class InMageAzureV2ProtectedDiskDetailsResponse {
  /// The disk capacity in bytes.
  final double? diskCapacityInBytes;
  /// The disk id.
  final String? diskId;
  /// The disk name.
  final String? diskName;
  /// A value indicating whether disk is resized.
  final String? diskResized;
  /// The disk file system capacity in bytes.
  final double? fileSystemCapacityInBytes;
  /// The health error code for the disk.
  final String? healthErrorCode;
  /// The last RPO calculated time.
  final String? lastRpoCalculatedTime;
  /// The Progress Health.
  final String? progressHealth;
  /// The Progress Status.
  final String? progressStatus;
  /// The protection stage.
  final String? protectionStage;
  /// The PS data transit in MB.
  final double? psDataInMegaBytes;
  /// The resync duration in seconds.
  final double? resyncDurationInSeconds;
  /// The resync last 15 minutes transferred bytes.
  final double? resyncLast15MinutesTransferredBytes;
  /// The last data transfer time in UTC.
  final String? resyncLastDataTransferTimeUTC;
  /// The resync processed bytes.
  final double? resyncProcessedBytes;
  /// The resync progress percentage.
  final int? resyncProgressPercentage;
  /// A value indicating whether resync is required for this disk.
  final String? resyncRequired;
  /// The resync start time.
  final String? resyncStartTime;
  /// The resync total transferred bytes.
  final double? resyncTotalTransferredBytes;
  /// The RPO in seconds.
  final double? rpoInSeconds;
  /// The seconds to take for switch provider.
  final double? secondsToTakeSwitchProvider;
  /// The source data transit in MB.
  final double? sourceDataInMegaBytes;
  /// The target data transit in MB.
  final double? targetDataInMegaBytes;

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
      diskCapacityInBytes: map['diskCapacityInBytes'] == null ? null : map['diskCapacityInBytes'] as double,
      diskId: map['diskId'] == null ? null : map['diskId'] as String,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskResized: map['diskResized'] == null ? null : map['diskResized'] as String,
      fileSystemCapacityInBytes: map['fileSystemCapacityInBytes'] == null ? null : map['fileSystemCapacityInBytes'] as double,
      healthErrorCode: map['healthErrorCode'] == null ? null : map['healthErrorCode'] as String,
      lastRpoCalculatedTime: map['lastRpoCalculatedTime'] == null ? null : map['lastRpoCalculatedTime'] as String,
      progressHealth: map['progressHealth'] == null ? null : map['progressHealth'] as String,
      progressStatus: map['progressStatus'] == null ? null : map['progressStatus'] as String,
      protectionStage: map['protectionStage'] == null ? null : map['protectionStage'] as String,
      psDataInMegaBytes: map['psDataInMegaBytes'] == null ? null : map['psDataInMegaBytes'] as double,
      resyncDurationInSeconds: map['resyncDurationInSeconds'] == null ? null : map['resyncDurationInSeconds'] as double,
      resyncLast15MinutesTransferredBytes: map['resyncLast15MinutesTransferredBytes'] == null ? null : map['resyncLast15MinutesTransferredBytes'] as double,
      resyncLastDataTransferTimeUTC: map['resyncLastDataTransferTimeUTC'] == null ? null : map['resyncLastDataTransferTimeUTC'] as String,
      resyncProcessedBytes: map['resyncProcessedBytes'] == null ? null : map['resyncProcessedBytes'] as double,
      resyncProgressPercentage: map['resyncProgressPercentage'] == null ? null : map['resyncProgressPercentage'] as int,
      resyncRequired: map['resyncRequired'] == null ? null : map['resyncRequired'] as String,
      resyncStartTime: map['resyncStartTime'] == null ? null : map['resyncStartTime'] as String,
      resyncTotalTransferredBytes: map['resyncTotalTransferredBytes'] == null ? null : map['resyncTotalTransferredBytes'] as double,
      rpoInSeconds: map['rpoInSeconds'] == null ? null : map['rpoInSeconds'] as double,
      secondsToTakeSwitchProvider: map['secondsToTakeSwitchProvider'] == null ? null : map['secondsToTakeSwitchProvider'] as double,
      sourceDataInMegaBytes: map['sourceDataInMegaBytes'] == null ? null : map['sourceDataInMegaBytes'] as double,
      targetDataInMegaBytes: map['targetDataInMegaBytes'] == null ? null : map['targetDataInMegaBytes'] as double,
    );
  }
}

