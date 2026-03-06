// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSqlPoolWorkloadClassifier.
class GetSqlPoolWorkloadClassifierResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The workload classifier context.
  final String? context;
  /// The workload classifier end time for classification.
  final String? endTime;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The workload classifier importance.
  final String? importance;
  /// The workload classifier label.
  final String? label;
  /// The workload classifier member name.
  final String memberName;
  /// The name of the resource
  final String name;
  /// The workload classifier start time for classification.
  final String? startTime;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSqlPoolWorkloadClassifierResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [context] The workload classifier context.
  /// [endTime] The workload classifier end time for classification.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [importance] The workload classifier importance.
  /// [label] The workload classifier label.
  /// [memberName] The workload classifier member name.
  /// [name] The name of the resource
  /// [startTime] The workload classifier start time for classification.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSqlPoolWorkloadClassifierResult({
    required this.azureApiVersion,
    this.context,
    this.endTime,
    required this.id,
    this.importance,
    this.label,
    required this.memberName,
    required this.name,
    this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'context': ?context,
      'endTime': ?endTime,
      'id': id,
      'importance': ?importance,
      'label': ?label,
      'memberName': memberName,
      'name': name,
      'startTime': ?startTime,
      'type': type,
    };
  }

  factory GetSqlPoolWorkloadClassifierResult.fromMap(Map<String, dynamic> map) {
    return GetSqlPoolWorkloadClassifierResult(
      azureApiVersion: map['azureApiVersion'] as String,
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      importance: (() { final guardedValue = map['importance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memberName: map['memberName'] as String,
      name: map['name'] as String,
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

