// ignore_for_file: unused_element, unnecessary_cast


/// Set the server/instance-level settings for SQL Server.
class SQLInstanceSettingsResponse {
  /// SQL Server Collation.
  final String? collation;
  /// SQL Server IFI.
  final bool? isIfiEnabled;
  /// SQL Server LPIM.
  final bool? isLpimEnabled;
  /// SQL Server Optimize for Adhoc workloads.
  final bool? isOptimizeForAdHocWorkloadsEnabled;
  /// SQL Server MAXDOP.
  final int? maxDop;
  /// SQL Server maximum memory.
  final int? maxServerMemoryMB;
  /// SQL Server minimum memory.
  final int? minServerMemoryMB;

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
      collation: map['collation'] == null ? null : map['collation'] as String,
      isIfiEnabled: map['isIfiEnabled'] == null ? null : map['isIfiEnabled'] as bool,
      isLpimEnabled: map['isLpimEnabled'] == null ? null : map['isLpimEnabled'] as bool,
      isOptimizeForAdHocWorkloadsEnabled: map['isOptimizeForAdHocWorkloadsEnabled'] == null ? null : map['isOptimizeForAdHocWorkloadsEnabled'] as bool,
      maxDop: map['maxDop'] == null ? null : map['maxDop'] as int,
      maxServerMemoryMB: map['maxServerMemoryMB'] == null ? null : map['maxServerMemoryMB'] as int,
      minServerMemoryMB: map['minServerMemoryMB'] == null ? null : map['minServerMemoryMB'] as int,
    );
  }
}

