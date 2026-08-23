// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleDataSourcesWindowsEventLog {
  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final pulumi.Input<String> name;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to `Microsoft-Event`,and `Microsoft-WindowsEvent` and `Microsoft-SecurityEvent`.
  final pulumi.Input<List<String>> streams;
  /// Specifies a list of Windows Event Log queries in XPath expression. Please see [this document](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/data-collection-rule-azure-monitor-agent?tabs=cli#filter-events-using-xpath-queries) for more information.
  final pulumi.Input<List<String>> xPathQueries;

  /// Creates a new [DataCollectionRuleDataSourcesWindowsEventLog].
  /// [name] The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to `Microsoft-Event`,and `Microsoft-WindowsEvent` and `Microsoft-SecurityEvent`.
  /// [xPathQueries] Specifies a list of Windows Event Log queries in XPath expression. Please see [this document](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/data-collection-rule-azure-monitor-agent?tabs=cli#filter-events-using-xpath-queries) for more information.
  const DataCollectionRuleDataSourcesWindowsEventLog({
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

  factory DataCollectionRuleDataSourcesWindowsEventLog.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSourcesWindowsEventLog(
      name: pulumi.Input.fromValue(map['name'] as String),
      streams: pulumi.Input.fromValue((map['streams'] as List).cast<String>()),
      xPathQueries: pulumi.Input.fromValue((map['xPathQueries'] as List).cast<String>()),
    );
  }
}
