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
      diskConfigurationType: (() {
        final guardedValue = map['diskConfigurationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskCount: (() {
        final guardedValue = map['diskCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      startingDeviceId: (() {
        final guardedValue = map['startingDeviceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
