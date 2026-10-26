// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipRightSchemaPaths {
  /// Required. The ordered list of paths within the table schema.
  ///
  /// &lt;a name="nestedDataAnalyticsAgentLastPublishedContext"&gt;&lt;/a&gt;The `lastPublishedContext` block contains:
  final pulumi.Input<List<String>> paths;
  /// Required. The service-qualified full resource name of the table.
  final pulumi.Input<String> tableFqn;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipRightSchemaPaths].
  /// [paths] Required. The ordered list of paths within the table schema.
  /// [tableFqn] Required. The service-qualified full resource name of the table.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipRightSchemaPaths({
    required this.paths,
    required this.tableFqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': paths,
      'tableFqn': tableFqn,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipRightSchemaPaths.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipRightSchemaPaths(
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      tableFqn: pulumi.Input.fromValue(map['tableFqn'] as String),
    );
  }
}
