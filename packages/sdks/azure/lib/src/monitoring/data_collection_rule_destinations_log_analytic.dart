// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleDestinationsLogAnalytic {
  /// The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  final pulumi.Input<String> name;
  /// The ID of a Log Analytic Workspace resource.
  final pulumi.Input<String> workspaceResourceId;

  /// Creates a new [DataCollectionRuleDestinationsLogAnalytic].
  /// [name] The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
  /// [workspaceResourceId] The ID of a Log Analytic Workspace resource.
  DataCollectionRuleDestinationsLogAnalytic({
    required this.name,
    required this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'workspaceResourceId': workspaceResourceId,
    };
  }

  factory DataCollectionRuleDestinationsLogAnalytic.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDestinationsLogAnalytic(
      name: pulumi.Input.fromValue(map['name'] as String),
      workspaceResourceId: pulumi.Input.fromValue(map['workspaceResourceId'] as String),
    );
  }
}

