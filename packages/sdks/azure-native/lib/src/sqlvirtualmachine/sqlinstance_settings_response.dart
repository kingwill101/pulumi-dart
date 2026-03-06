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
  const SQLInstanceSettingsResponse({
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
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isIfiEnabled: (() { final guardedValue = map['isIfiEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isLpimEnabled: (() { final guardedValue = map['isLpimEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isOptimizeForAdHocWorkloadsEnabled: (() { final guardedValue = map['isOptimizeForAdHocWorkloadsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxDop: (() { final guardedValue = map['maxDop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxServerMemoryMB: (() { final guardedValue = map['maxServerMemoryMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minServerMemoryMB: (() { final guardedValue = map['minServerMemoryMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

