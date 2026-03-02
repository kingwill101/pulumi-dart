// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSqlPoolWorkloadGroup.
class GetSqlPoolWorkloadGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The workload group importance level.
  final String? importance;
  /// The workload group cap percentage resource.
  final int maxResourcePercent;
  /// The workload group request maximum grant percentage.
  final double? maxResourcePercentPerRequest;
  /// The workload group minimum percentage resource.
  final int minResourcePercent;
  /// The workload group request minimum grant percentage.
  final double minResourcePercentPerRequest;
  /// The name of the resource
  final String name;
  /// The workload group query execution timeout.
  final int? queryExecutionTimeout;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSqlPoolWorkloadGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [importance] The workload group importance level.
  /// [maxResourcePercent] The workload group cap percentage resource.
  /// [maxResourcePercentPerRequest] The workload group request maximum grant percentage.
  /// [minResourcePercent] The workload group minimum percentage resource.
  /// [minResourcePercentPerRequest] The workload group request minimum grant percentage.
  /// [name] The name of the resource
  /// [queryExecutionTimeout] The workload group query execution timeout.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSqlPoolWorkloadGroupResult({
    required this.azureApiVersion,
    required this.id,
    this.importance,
    required this.maxResourcePercent,
    this.maxResourcePercentPerRequest,
    required this.minResourcePercent,
    required this.minResourcePercentPerRequest,
    required this.name,
    this.queryExecutionTimeout,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'importance': ?importance,
      'maxResourcePercent': maxResourcePercent,
      'maxResourcePercentPerRequest': ?maxResourcePercentPerRequest,
      'minResourcePercent': minResourcePercent,
      'minResourcePercentPerRequest': minResourcePercentPerRequest,
      'name': name,
      'queryExecutionTimeout': ?queryExecutionTimeout,
      'type': type,
    };
  }

  factory GetSqlPoolWorkloadGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSqlPoolWorkloadGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      importance: map['importance'] == null ? null : map['importance']! as String,
      maxResourcePercent: map['maxResourcePercent'] as int,
      maxResourcePercentPerRequest: map['maxResourcePercentPerRequest'] == null ? null : map['maxResourcePercentPerRequest']! as double,
      minResourcePercent: map['minResourcePercent'] as int,
      minResourcePercentPerRequest: map['minResourcePercentPerRequest'] as double,
      name: map['name'] as String,
      queryExecutionTimeout: map['queryExecutionTimeout'] == null ? null : map['queryExecutionTimeout']! as int,
      type: map['type'] as String,
    );
  }
}

