// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipLeftSchemaPaths {
  /// Required. The ordered list of paths within the table schema.
  final pulumi.Input<List<String>> paths;
  /// Required. The service-qualified full resource name of the table.
  final pulumi.Input<String> tableFqn;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipLeftSchemaPaths].
  /// [paths] Required. The ordered list of paths within the table schema.
  /// [tableFqn] Required. The service-qualified full resource name of the table.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipLeftSchemaPaths({
    required this.paths,
    required this.tableFqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': paths,
      'tableFqn': tableFqn,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipLeftSchemaPaths.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipLeftSchemaPaths(
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      tableFqn: pulumi.Input.fromValue(map['tableFqn'] as String),
    );
  }
}
