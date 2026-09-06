// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSqlPoolWorkloadGroup.
class GetSqlPoolWorkloadGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The workload group importance level.
  final String? importance;
  /// The workload group cap percentage resource.
  final int? maxResourcePercent;
  /// The workload group request maximum grant percentage.
  final double? maxResourcePercentPerRequest;
  /// The workload group minimum percentage resource.
  final int? minResourcePercent;
  /// The workload group request minimum grant percentage.
  final double? minResourcePercentPerRequest;
  /// The name of the resource
  final String? name;
  /// The workload group query execution timeout.
  final int? queryExecutionTimeout;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetSqlPoolWorkloadGroupResult({
    this.azureApiVersion,
    this.id,
    this.importance,
    this.maxResourcePercent,
    this.maxResourcePercentPerRequest,
    this.minResourcePercent,
    this.minResourcePercentPerRequest,
    this.name,
    this.queryExecutionTimeout,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'importance': ?importance,
      'maxResourcePercent': ?maxResourcePercent,
      'maxResourcePercentPerRequest': ?maxResourcePercentPerRequest,
      'minResourcePercent': ?minResourcePercent,
      'minResourcePercentPerRequest': ?minResourcePercentPerRequest,
      'name': ?name,
      'queryExecutionTimeout': ?queryExecutionTimeout,
      'type': ?type,
    };
  }

  factory GetSqlPoolWorkloadGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSqlPoolWorkloadGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importance: (() { final guardedValue = map['importance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxResourcePercent: (() { final guardedValue = map['maxResourcePercent']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      maxResourcePercentPerRequest: (() { final guardedValue = map['maxResourcePercentPerRequest']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      minResourcePercent: (() { final guardedValue = map['minResourcePercent']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      minResourcePercentPerRequest: (() { final guardedValue = map['minResourcePercentPerRequest']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryExecutionTimeout: (() { final guardedValue = map['queryExecutionTimeout']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
