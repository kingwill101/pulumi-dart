// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWorkloadGroup.
class GetWorkloadGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Resource ID.
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

  /// Resource name.
  final String name;

  /// The workload group query execution timeout.
  final int? queryExecutionTimeout;

  /// Resource type.
  final String type;

  /// Creates a new [GetWorkloadGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [importance] The workload group importance level.
  /// [maxResourcePercent] The workload group cap percentage resource.
  /// [maxResourcePercentPerRequest] The workload group request maximum grant percentage.
  /// [minResourcePercent] The workload group minimum percentage resource.
  /// [minResourcePercentPerRequest] The workload group request minimum grant percentage.
  /// [name] Resource name.
  /// [queryExecutionTimeout] The workload group query execution timeout.
  /// [type] Resource type.
  GetWorkloadGroupResult({
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

  factory GetWorkloadGroupResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      importance: (() {
        final guardedValue = map['importance'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      maxResourcePercent: map['maxResourcePercent'] as int,
      maxResourcePercentPerRequest: (() {
        final guardedValue = map['maxResourcePercentPerRequest'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      minResourcePercent: map['minResourcePercent'] as int,
      minResourcePercentPerRequest:
          map['minResourcePercentPerRequest'] as double,
      name: map['name'] as String,
      queryExecutionTimeout: (() {
        final guardedValue = map['queryExecutionTimeout'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      type: map['type'] as String,
    );
  }
}
