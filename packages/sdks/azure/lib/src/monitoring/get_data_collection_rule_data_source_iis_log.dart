// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCollectionRuleDataSourceIisLog {
  /// Specifies a list of absolute paths where the log files are located.
  final pulumi.Input<List<String>> logDirectories;
  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final pulumi.Input<List<String>> streams;

  /// Creates a new [GetDataCollectionRuleDataSourceIisLog].
  /// [logDirectories] Specifies a list of absolute paths where the log files are located.
  /// [name] Specifies the name of the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  GetDataCollectionRuleDataSourceIisLog({
    required this.logDirectories,
    required this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDirectories': logDirectories,
      'name': name,
      'streams': streams,
    };
  }

  factory GetDataCollectionRuleDataSourceIisLog.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataSourceIisLog(
      logDirectories: ((map['logDirectories'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      streams: ((map['streams'] as List).cast<String>()).input(),
    );
  }
}

