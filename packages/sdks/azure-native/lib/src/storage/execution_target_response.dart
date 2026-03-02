// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target helps provide filter parameters for the objects in the storage account and forms the execution context for the storage task
class ExecutionTargetResponse {
  /// List of object prefixes to be excluded from task execution. If there is a conflict between include and exclude prefixes, the exclude prefix will be the determining factor
  final pulumi.Input<List<String>>? excludePrefix;
  /// Required list of object prefixes to be included for task execution
  final pulumi.Input<List<String>>? prefix;

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
      excludePrefix: map['excludePrefix'] == null ? null : ((map['excludePrefix']! as List).cast<String>()).input(),
      prefix: map['prefix'] == null ? null : ((map['prefix']! as List).cast<String>()).input(),
    );
  }
}

