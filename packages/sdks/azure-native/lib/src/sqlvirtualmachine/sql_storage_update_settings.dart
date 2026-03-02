// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set disk storage settings for SQL Server.
class SqlStorageUpdateSettings {
  /// Disk configuration to apply to SQL Server.
  final pulumi.Input<String>? diskConfigurationType;
  /// Virtual machine disk count.
  final pulumi.Input<int>? diskCount;
  /// Device id of the first disk to be updated.
  final pulumi.Input<int>? startingDeviceId;

  /// Creates a new [SqlStorageUpdateSettings].
  /// [diskConfigurationType] Disk configuration to apply to SQL Server.
  /// [diskCount] Virtual machine disk count.
  /// [startingDeviceId] Device id of the first disk to be updated.
  SqlStorageUpdateSettings({
    this.diskConfigurationType,
    this.diskCount,
    this.startingDeviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfigurationType': ?diskConfigurationType,
      'diskCount': ?diskCount,
      'startingDeviceId': ?startingDeviceId,
    };
  }

  factory SqlStorageUpdateSettings.fromMap(Map<String, dynamic> map) {
    return SqlStorageUpdateSettings(
      diskConfigurationType: map['diskConfigurationType'] == null ? null : (map['diskConfigurationType']! as String).input(),
      diskCount: map['diskCount'] == null ? null : (map['diskCount']! as int).input(),
      startingDeviceId: map['startingDeviceId'] == null ? null : (map['startingDeviceId']! as int).input(),
    );
  }
}

