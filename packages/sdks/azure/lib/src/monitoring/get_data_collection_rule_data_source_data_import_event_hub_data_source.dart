// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCollectionRuleDataSourceDataImportEventHubDataSource {
  /// The Event Hub consumer group name.
  final pulumi.Input<String> consumerGroup;

  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;

  /// The stream to collect from Event Hub. Possible value should be a custom stream name.
  final pulumi.Input<String> stream;

  /// Creates a new [GetDataCollectionRuleDataSourceDataImportEventHubDataSource].
  /// [consumerGroup] The Event Hub consumer group name.
  /// [name] Specifies the name of the Data Collection Rule.
  /// [stream] The stream to collect from Event Hub. Possible value should be a custom stream name.
  GetDataCollectionRuleDataSourceDataImportEventHubDataSource({
    required this.consumerGroup,
    required this.name,
    required this.stream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroup': consumerGroup,
      'name': name,
      'stream': stream,
    };
  }

  factory GetDataCollectionRuleDataSourceDataImportEventHubDataSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataCollectionRuleDataSourceDataImportEventHubDataSource(
      consumerGroup: pulumi.Input.fromValue(map['consumerGroup'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      stream: pulumi.Input.fromValue(map['stream'] as String),
    );
  }
}
