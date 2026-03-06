// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_collection_rule_data_source_log_file_setting.dart';

class GetDataCollectionRuleDataSourceLogFile {
  /// Specifies a list of file patterns where the log files are located. For example, `C:\\JavaLogs\\*.log`.
  final pulumi.Input<List<String>> filePatterns;
  /// The data format of the log files. possible value is `text`.
  final pulumi.Input<String> format;
  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;
  /// A `settings` block as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDataSourceLogFileSetting>> settings;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final pulumi.Input<List<String>> streams;

  /// Creates a new [GetDataCollectionRuleDataSourceLogFile].
  /// [filePatterns] Specifies a list of file patterns where the log files are located. For example, `C:\\JavaLogs\\*.log`.
  /// [format] The data format of the log files. possible value is `text`.
  /// [name] Specifies the name of the Data Collection Rule.
  /// [settings] A `settings` block as defined below.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  const GetDataCollectionRuleDataSourceLogFile({
    required this.filePatterns,
    required this.format,
    required this.name,
    required this.settings,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePatterns': filePatterns,
      'format': format,
      'name': name,
      'settings': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDataSourceLogFileSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourceLogFileSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'streams': streams,
    };
  }

  factory GetDataCollectionRuleDataSourceLogFile.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataSourceLogFile(
      filePatterns: pulumi.Input.fromValue((map['filePatterns'] as List).cast<String>()),
      format: pulumi.Input.fromValue(map['format'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      settings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataCollectionRuleDataSourceLogFileSetting>(map['settings']!, (value) => GetDataCollectionRuleDataSourceLogFileSetting.fromMap((value as Map).cast<String, dynamic>()))),
      streams: pulumi.Input.fromValue((map['streams'] as List).cast<String>()),
    );
  }
}

