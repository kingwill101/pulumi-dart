// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkloadClassifier.
class GetWorkloadClassifierResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The workload classifier context.
  final String? context;
  /// The workload classifier end time for classification.
  final String? endTime;
  /// Resource ID.
  final String? id;
  /// The workload classifier importance.
  final String? importance;
  /// The workload classifier label.
  final String? label;
  /// The workload classifier member name.
  final String? memberName;
  /// Resource name.
  final String? name;
  /// The workload classifier start time for classification.
  final String? startTime;
  /// Resource type.
  final String? type;

  /// Creates a new [GetWorkloadClassifierResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [context] The workload classifier context.
  /// [endTime] The workload classifier end time for classification.
  /// [id] Resource ID.
  /// [importance] The workload classifier importance.
  /// [label] The workload classifier label.
  /// [memberName] The workload classifier member name.
  /// [name] Resource name.
  /// [startTime] The workload classifier start time for classification.
  /// [type] Resource type.
  const GetWorkloadClassifierResult({
    this.azureApiVersion,
    this.context,
    this.endTime,
    this.id,
    this.importance,
    this.label,
    this.memberName,
    this.name,
    this.startTime,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'context': ?context,
      'endTime': ?endTime,
      'id': ?id,
      'importance': ?importance,
      'label': ?label,
      'memberName': ?memberName,
      'name': ?name,
      'startTime': ?startTime,
      'type': ?type,
    };
  }

  factory GetWorkloadClassifierResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadClassifierResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importance: (() { final guardedValue = map['importance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memberName: (() { final guardedValue = map['memberName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
