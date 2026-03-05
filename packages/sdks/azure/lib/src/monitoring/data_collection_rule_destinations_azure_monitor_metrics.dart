// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleDestinationsAzureMonitorMetrics {
  /// The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  final pulumi.Input<String> name;

  /// Creates a new [DataCollectionRuleDestinationsAzureMonitorMetrics].
  /// [name] The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  DataCollectionRuleDestinationsAzureMonitorMetrics({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DataCollectionRuleDestinationsAzureMonitorMetrics.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDestinationsAzureMonitorMetrics(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

