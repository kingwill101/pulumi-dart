// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleDataSourcesIisLog {
  /// Specifies a list of absolute paths where the log files are located.
  final pulumi.Input<List<String>?>? logDirectories;
  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final pulumi.Input<String> name;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is `Microsoft-W3CIISLog`.
  final pulumi.Input<List<String>> streams;

  /// Creates a new [DataCollectionRuleDataSourcesIisLog].
  /// [logDirectories] Specifies a list of absolute paths where the log files are located.
  /// [name] The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is `Microsoft-W3CIISLog`.
  const DataCollectionRuleDataSourcesIisLog({
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
      logDirectories: (() { final guardedValue = map['logDirectories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      streams: pulumi.Input.fromValue((map['streams'] as List).cast<String>()),
    );
  }
}
