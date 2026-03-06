// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCollectionRuleDestinationAzureMonitorMetric {
  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;

  /// Creates a new [GetDataCollectionRuleDestinationAzureMonitorMetric].
  /// [name] Specifies the name of the Data Collection Rule.
  const GetDataCollectionRuleDestinationAzureMonitorMetric({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetDataCollectionRuleDestinationAzureMonitorMetric.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDestinationAzureMonitorMetric(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

