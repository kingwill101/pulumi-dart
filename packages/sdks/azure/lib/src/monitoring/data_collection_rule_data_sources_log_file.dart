// ignore_for_file: unused_element, unnecessary_cast

import 'data_collection_rule_data_sources_log_file_settings.dart';

class DataCollectionRuleDataSourcesLogFile {
  /// Specifies a list of file patterns where the log files are located. For example, `C:\\JavaLogs\\*.log`.
  final List<String> filePatterns;
  /// The data format of the log files. Possible values are `text` and `json`.
  final String format;
  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final String name;
  /// A `settings` block as defined below.
  final DataCollectionRuleDataSourcesLogFileSettings? settings;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value should be custom stream names.
  final List<String> streams;

  /// Creates a new [DataCollectionRuleDataSourcesLogFile].
  /// [filePatterns] Specifies a list of file patterns where the log files are located. For example, `C:\\JavaLogs\\*.log`.
  /// [format] The data format of the log files. Possible values are `text` and `json`.
  /// [name] The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  /// [settings] A `settings` block as defined below.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value should be custom stream names.
  DataCollectionRuleDataSourcesLogFile({
    required this.filePatterns,
    required this.format,
    required this.name,
    this.settings,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePatterns': filePatterns,
      'format': format,
      'name': name,
      'settings': ?settings == null ? null : settings!.toMap(),
      'streams': streams,
    };
  }

  factory DataCollectionRuleDataSourcesLogFile.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSourcesLogFile(
      filePatterns: (map['filePatterns'] as List).cast<String>(),
      format: map['format'] as String,
      name: map['name'] as String,
      settings: map['settings'] == null ? null : DataCollectionRuleDataSourcesLogFileSettings.fromMap((map['settings'] as Map).cast<String, dynamic>()),
      streams: (map['streams'] as List).cast<String>(),
    );
  }
}

