// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleDataSourcesPlatformTelemetry {
  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final pulumi.Input<String> name;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to `Microsoft.Cache/redis:Metrics-Group-All`.
  final pulumi.Input<List<String>> streams;

  /// Creates a new [DataCollectionRuleDataSourcesPlatformTelemetry].
  /// [name] The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to `Microsoft.Cache/redis:Metrics-Group-All`.
  const DataCollectionRuleDataSourcesPlatformTelemetry({
    required this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'streams': streams,
    };
  }

  factory DataCollectionRuleDataSourcesPlatformTelemetry.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSourcesPlatformTelemetry(
      name: pulumi.Input.fromValue(map['name'] as String),
      streams: pulumi.Input.fromValue((map['streams'] as List).cast<String>()),
    );
  }
}
