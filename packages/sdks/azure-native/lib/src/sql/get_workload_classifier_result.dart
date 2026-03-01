// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkloadClassifier.
class GetWorkloadClassifierResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The workload classifier context.
  final String? context;
  /// The workload classifier end time for classification.
  final String? endTime;
  /// Resource ID.
  final String id;
  /// The workload classifier importance.
  final String? importance;
  /// The workload classifier label.
  final String? label;
  /// The workload classifier member name.
  final String memberName;
  /// Resource name.
  final String name;
  /// The workload classifier start time for classification.
  final String? startTime;
  /// Resource type.
  final String type;

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
  GetWorkloadClassifierResult({
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

  factory GetWorkloadClassifierResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadClassifierResult(
      azureApiVersion: map['azureApiVersion'] as String,
      context: map['context'] == null ? null : map['context'] as String,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      id: map['id'] as String,
      importance: map['importance'] == null ? null : map['importance'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      memberName: map['memberName'] as String,
      name: map['name'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      type: map['type'] as String,
    );
  }
}

