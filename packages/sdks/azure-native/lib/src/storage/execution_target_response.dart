// ignore_for_file: unused_element, unnecessary_cast


/// Target helps provide filter parameters for the objects in the storage account and forms the execution context for the storage task
class ExecutionTargetResponse {
  /// List of object prefixes to be excluded from task execution. If there is a conflict between include and exclude prefixes, the exclude prefix will be the determining factor
  final List<String>? excludePrefix;
  /// Required list of object prefixes to be included for task execution
  final List<String>? prefix;

  /// Creates a new [ExecutionTargetResponse].
  /// [excludePrefix] List of object prefixes to be excluded from task execution. If there is a conflict between include and exclude prefixes, the exclude prefix will be the determining factor
  /// [prefix] Required list of object prefixes to be included for task execution
  ExecutionTargetResponse({
    this.excludePrefix,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludePrefix': ?excludePrefix,
      'prefix': ?prefix,
    };
  }

  factory ExecutionTargetResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionTargetResponse(
      excludePrefix: map['excludePrefix'] == null ? null : (map['excludePrefix'] as List).cast<String>(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as List).cast<String>(),
    );
  }
}

