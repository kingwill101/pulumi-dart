// ignore_for_file: unused_element, unnecessary_cast


/// Common settings field for backup management
class SettingsResponse {
  /// Workload compression flag. This has been added so that 'isSqlCompression'
  /// will be deprecated once clients upgrade to consider this flag.
  final bool? isCompression;
  /// SQL compression flag
  final bool? issqlcompression;
  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final String? timeZone;

  /// Creates a new [SettingsResponse].
  /// [isCompression] Workload compression flag. This has been added so that 'isSqlCompression'
  /// [issqlcompression] SQL compression flag
  /// [timeZone] TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  SettingsResponse({
    this.isCompression,
    this.issqlcompression,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCompression': ?isCompression,
      'issqlcompression': ?issqlcompression,
      'timeZone': ?timeZone,
    };
  }

  factory SettingsResponse.fromMap(Map<String, dynamic> map) {
    return SettingsResponse(
      isCompression: map['isCompression'] == null ? null : map['isCompression'] as bool,
      issqlcompression: map['issqlcompression'] == null ? null : map['issqlcompression'] as bool,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

