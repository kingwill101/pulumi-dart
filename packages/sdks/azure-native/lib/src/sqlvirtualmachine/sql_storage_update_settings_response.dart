// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set disk storage settings for SQL Server.
class SqlStorageUpdateSettingsResponse {
  /// Disk configuration to apply to SQL Server.
  final pulumi.Input<String?>? diskConfigurationType;
  /// Virtual machine disk count.
  final pulumi.Input<int?>? diskCount;
  /// Device id of the first disk to be updated.
  final pulumi.Input<int?>? startingDeviceId;

  /// Creates a new [SqlStorageUpdateSettingsResponse].
  /// [diskConfigurationType] Disk configuration to apply to SQL Server.
  /// [diskCount] Virtual machine disk count.
  /// [startingDeviceId] Device id of the first disk to be updated.
  const SqlStorageUpdateSettingsResponse({
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

  factory SqlStorageUpdateSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlStorageUpdateSettingsResponse(
      diskConfigurationType: (() { final guardedValue = map['diskConfigurationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskCount: (() { final guardedValue = map['diskCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      startingDeviceId: (() { final guardedValue = map['startingDeviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
