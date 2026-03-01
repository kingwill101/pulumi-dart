// ignore_for_file: unused_element, unnecessary_cast


class DataCollectionRuleDataSourcesIisLog {
  /// Specifies a list of absolute paths where the log files are located.
  final List<String>? logDirectories;
  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final String name;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is `Microsoft-W3CIISLog`.
  final List<String> streams;

  /// Creates a new [DataCollectionRuleDataSourcesIisLog].
  /// [logDirectories] Specifies a list of absolute paths where the log files are located.
  /// [name] The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is `Microsoft-W3CIISLog`.
  DataCollectionRuleDataSourcesIisLog({
    this.logDirectories,
    required this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDirectories': ?logDirectories,
      'name': name,
      'streams': streams,
    };
  }

  factory DataCollectionRuleDataSourcesIisLog.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSourcesIisLog(
      logDirectories: map['logDirectories'] == null ? null : (map['logDirectories'] as List).cast<String>(),
      name: map['name'] as String,
      streams: (map['streams'] as List).cast<String>(),
    );
  }
}

