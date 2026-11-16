// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryParameter {
  /// Required. The data type of the parameter, e.g. "STRING", "INT64", "DATE".
  final pulumi.Input<String> dataType;
  /// Optional. The description of the parameter that can be used by the LLM to extract the parameter value from the user question.
  final pulumi.Input<String?>? description;
  /// Required. The name of the parameter reference in the SQL query.
  final pulumi.Input<String> name;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryParameter].
  /// [dataType] Required. The data type of the parameter, e.g. "STRING", "INT64", "DATE".
  /// [description] Optional. The description of the parameter that can be used by the LLM to extract the parameter value from the user question.
  /// [name] Required. The name of the parameter reference in the SQL query.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryParameter({
    required this.dataType,
    this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'description': ?description,
      'name': name,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryParameter.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryParameter(
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
