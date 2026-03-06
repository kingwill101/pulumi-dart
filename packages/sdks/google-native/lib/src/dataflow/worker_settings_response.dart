// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides data to pass through to the worker harness.
class WorkerSettingsResponse {
  /// The base URL for accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, "Relative Uniform Resource Locators". If not specified, the default value is "http://www.googleapis.com/"
  final pulumi.Input<String> baseUrl;
  /// Whether to send work progress updates to the service.
  final pulumi.Input<bool> reportingEnabled;
  /// The Cloud Dataflow service path relative to the root URL, for example, "dataflow/v1b3/projects".
  final pulumi.Input<String> servicePath;
  /// The Shuffle service path relative to the root URL, for example, "shuffle/v1beta1".
  final pulumi.Input<String> shuffleServicePath;
  /// The prefix of the resources the system should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final pulumi.Input<String> tempStoragePrefix;
  /// The ID of the worker running this pipeline.
  final pulumi.Input<String> workerId;

  /// Creates a new [WorkerSettingsResponse].
  /// [baseUrl] The base URL for accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, "Relative Uniform Resource Locators". If not specified, the default value is "http://www.googleapis.com/"
  /// [reportingEnabled] Whether to send work progress updates to the service.
  /// [servicePath] The Cloud Dataflow service path relative to the root URL, for example, "dataflow/v1b3/projects".
  /// [shuffleServicePath] The Shuffle service path relative to the root URL, for example, "shuffle/v1beta1".
  /// [tempStoragePrefix] The prefix of the resources the system should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  /// [workerId] The ID of the worker running this pipeline.
  const WorkerSettingsResponse({
    required this.baseUrl,
    required this.reportingEnabled,
    required this.servicePath,
    required this.shuffleServicePath,
    required this.tempStoragePrefix,
    required this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': baseUrl,
      'reportingEnabled': reportingEnabled,
      'servicePath': servicePath,
      'shuffleServicePath': shuffleServicePath,
      'tempStoragePrefix': tempStoragePrefix,
      'workerId': workerId,
    };
  }

  factory WorkerSettingsResponse.fromMap(Map<String, dynamic> map) {
    return WorkerSettingsResponse(
      baseUrl: pulumi.Input.fromValue(map['baseUrl'] as String),
      reportingEnabled: pulumi.Input.fromValue(map['reportingEnabled'] as bool),
      servicePath: pulumi.Input.fromValue(map['servicePath'] as String),
      shuffleServicePath: pulumi.Input.fromValue(map['shuffleServicePath'] as String),
      tempStoragePrefix: pulumi.Input.fromValue(map['tempStoragePrefix'] as String),
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
    );
  }
}

