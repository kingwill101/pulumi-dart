// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set the server/instance-level settings for SQL Server.
class SQLInstanceSettingsResponse {
  /// SQL Server Collation.
  final pulumi.Input<String>? collation;
  /// SQL Server IFI.
  final pulumi.Input<bool>? isIfiEnabled;
  /// SQL Server LPIM.
  final pulumi.Input<bool>? isLpimEnabled;
  /// SQL Server Optimize for Adhoc workloads.
  final pulumi.Input<bool>? isOptimizeForAdHocWorkloadsEnabled;
  /// SQL Server MAXDOP.
  final pulumi.Input<int>? maxDop;
  /// SQL Server maximum memory.
  final pulumi.Input<int>? maxServerMemoryMB;
  /// SQL Server minimum memory.
  final pulumi.Input<int>? minServerMemoryMB;

  /// Creates a new [SQLInstanceSettingsResponse].
  /// [collation] SQL Server Collation.
  /// [isIfiEnabled] SQL Server IFI.
  /// [isLpimEnabled] SQL Server LPIM.
  /// [isOptimizeForAdHocWorkloadsEnabled] SQL Server Optimize for Adhoc workloads.
  /// [maxDop] SQL Server MAXDOP.
  /// [maxServerMemoryMB] SQL Server maximum memory.
  /// [minServerMemoryMB] SQL Server minimum memory.
  SQLInstanceSettingsResponse({
    this.collation,
    this.isIfiEnabled,
    this.isLpimEnabled,
    this.isOptimizeForAdHocWorkloadsEnabled,
    this.maxDop,
    this.maxServerMemoryMB,
    this.minServerMemoryMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collation': ?collation,
      'isIfiEnabled': ?isIfiEnabled,
      'isLpimEnabled': ?isLpimEnabled,
      'isOptimizeForAdHocWorkloadsEnabled': ?isOptimizeForAdHocWorkloadsEnabled,
      'maxDop': ?maxDop,
      'maxServerMemoryMB': ?maxServerMemoryMB,
      'minServerMemoryMB': ?minServerMemoryMB,
    };
  }

  factory SQLInstanceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SQLInstanceSettingsResponse(
      collation: map['collation'] == null ? null : (map['collation'] as String).input(),
      isIfiEnabled: map['isIfiEnabled'] == null ? null : (map['isIfiEnabled'] as bool).input(),
      isLpimEnabled: map['isLpimEnabled'] == null ? null : (map['isLpimEnabled'] as bool).input(),
      isOptimizeForAdHocWorkloadsEnabled: map['isOptimizeForAdHocWorkloadsEnabled'] == null ? null : (map['isOptimizeForAdHocWorkloadsEnabled'] as bool).input(),
      maxDop: map['maxDop'] == null ? null : (map['maxDop'] as int).input(),
      maxServerMemoryMB: map['maxServerMemoryMB'] == null ? null : (map['maxServerMemoryMB'] as int).input(),
      minServerMemoryMB: map['minServerMemoryMB'] == null ? null : (map['minServerMemoryMB'] as int).input(),
    );
  }
}

