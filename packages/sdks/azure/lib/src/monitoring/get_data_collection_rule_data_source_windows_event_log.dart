// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCollectionRuleDataSourceWindowsEventLog {
  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final pulumi.Input<List<String>> streams;
  /// Specifies a list of Windows Event Log queries in XPath expression.
  final pulumi.Input<List<String>> xPathQueries;

  /// Creates a new [GetDataCollectionRuleDataSourceWindowsEventLog].
  /// [name] Specifies the name of the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  /// [xPathQueries] Specifies a list of Windows Event Log queries in XPath expression.
  GetDataCollectionRuleDataSourceWindowsEventLog({
    required this.name,
    required this.streams,
    required this.xPathQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'streams': streams,
      'xPathQueries': xPathQueries,
    };
  }

  factory GetDataCollectionRuleDataSourceWindowsEventLog.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataSourceWindowsEventLog(
      name: pulumi.Input.fromValue(map['name'] as String),
      streams: pulumi.Input.fromValue((map['streams'] as List).cast<String>()),
      xPathQueries: pulumi.Input.fromValue((map['xPathQueries'] as List).cast<String>()),
    );
  }
}

