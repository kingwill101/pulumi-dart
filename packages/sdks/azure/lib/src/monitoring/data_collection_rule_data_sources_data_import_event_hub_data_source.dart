// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleDataSourcesDataImportEventHubDataSource {
  /// The Event Hub consumer group name.
  final pulumi.Input<String>? consumerGroup;

  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final pulumi.Input<String> name;

  /// The stream to collect from Event Hub. Possible value should be a custom stream name.
  final pulumi.Input<String> stream;

  /// Creates a new [DataCollectionRuleDataSourcesDataImportEventHubDataSource].
  /// [consumerGroup] The Event Hub consumer group name.
  /// [name] The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  /// [stream] The stream to collect from Event Hub. Possible value should be a custom stream name.
  DataCollectionRuleDataSourcesDataImportEventHubDataSource({
    this.consumerGroup,
    required this.name,
    required this.stream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroup': ?consumerGroup,
      'name': name,
      'stream': stream,
    };
  }

  factory DataCollectionRuleDataSourcesDataImportEventHubDataSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataCollectionRuleDataSourcesDataImportEventHubDataSource(
      consumerGroup: (() {
        final guardedValue = map['consumerGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      stream: pulumi.Input.fromValue(map['stream'] as String),
    );
  }
}
