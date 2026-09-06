// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkloadGroup.
class GetWorkloadGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
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
  /// Resource name.
  final String? name;
  /// The workload group query execution timeout.
  final int? queryExecutionTimeout;
  /// Resource type.
  final String? type;

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
  const GetWorkloadGroupResult({
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

  factory GetWorkloadGroupResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadGroupResult(
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
