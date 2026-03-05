// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud endpoint change enumeration status object
class CloudEndpointLastChangeEnumerationStatusResponse {
  /// Timestamp when change enumeration completed
  final pulumi.Input<String> completedTimestamp;
  /// Count of directories in the namespace
  final pulumi.Input<double> namespaceDirectoriesCount;
  /// Count of files in the namespace
  final pulumi.Input<double> namespaceFilesCount;
  /// Namespace size in bytes
  final pulumi.Input<double> namespaceSizeBytes;
  /// Timestamp of when change enumeration is expected to run again
  final pulumi.Input<String> nextRunTimestamp;
  /// Timestamp when change enumeration started
  final pulumi.Input<String> startedTimestamp;

  /// Creates a new [CloudEndpointLastChangeEnumerationStatusResponse].
  /// [completedTimestamp] Timestamp when change enumeration completed
  /// [namespaceDirectoriesCount] Count of directories in the namespace
  /// [namespaceFilesCount] Count of files in the namespace
  /// [namespaceSizeBytes] Namespace size in bytes
  /// [nextRunTimestamp] Timestamp of when change enumeration is expected to run again
  /// [startedTimestamp] Timestamp when change enumeration started
  CloudEndpointLastChangeEnumerationStatusResponse({
    required this.completedTimestamp,
    required this.namespaceDirectoriesCount,
    required this.namespaceFilesCount,
    required this.namespaceSizeBytes,
    required this.nextRunTimestamp,
    required this.startedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedTimestamp': completedTimestamp,
      'namespaceDirectoriesCount': namespaceDirectoriesCount,
      'namespaceFilesCount': namespaceFilesCount,
      'namespaceSizeBytes': namespaceSizeBytes,
      'nextRunTimestamp': nextRunTimestamp,
      'startedTimestamp': startedTimestamp,
    };
  }

  factory CloudEndpointLastChangeEnumerationStatusResponse.fromMap(Map<String, dynamic> map) {
    return CloudEndpointLastChangeEnumerationStatusResponse(
      completedTimestamp: pulumi.Input.fromValue(map['completedTimestamp'] as String),
      namespaceDirectoriesCount: pulumi.Input.fromValue(map['namespaceDirectoriesCount'] as double),
      namespaceFilesCount: pulumi.Input.fromValue(map['namespaceFilesCount'] as double),
      namespaceSizeBytes: pulumi.Input.fromValue(map['namespaceSizeBytes'] as double),
      nextRunTimestamp: pulumi.Input.fromValue(map['nextRunTimestamp'] as String),
      startedTimestamp: pulumi.Input.fromValue(map['startedTimestamp'] as String),
    );
  }
}

