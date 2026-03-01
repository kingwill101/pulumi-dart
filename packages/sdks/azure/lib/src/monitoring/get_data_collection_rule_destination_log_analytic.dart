// ignore_for_file: unused_element, unnecessary_cast


class GetDataCollectionRuleDestinationLogAnalytic {
  /// Specifies the name of the Data Collection Rule.
  final String name;
  /// The ID of a Log Analytic Workspace resource.
  final String workspaceResourceId;

  /// Creates a new [GetDataCollectionRuleDestinationLogAnalytic].
  /// [name] Specifies the name of the Data Collection Rule.
  /// [workspaceResourceId] The ID of a Log Analytic Workspace resource.
  GetDataCollectionRuleDestinationLogAnalytic({
    required this.name,
    required this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'workspaceResourceId': workspaceResourceId,
    };
  }

  factory GetDataCollectionRuleDestinationLogAnalytic.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDestinationLogAnalytic(
      name: map['name'] as String,
      workspaceResourceId: map['workspaceResourceId'] as String,
    );
  }
}

