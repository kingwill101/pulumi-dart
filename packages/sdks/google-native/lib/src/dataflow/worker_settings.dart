// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides data to pass through to the worker harness.
class WorkerSettings {
  /// The base URL for accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, "Relative Uniform Resource Locators". If not specified, the default value is "http://www.googleapis.com/"
  final pulumi.Input<String>? baseUrl;
  /// Whether to send work progress updates to the service.
  final pulumi.Input<bool>? reportingEnabled;
  /// The Cloud Dataflow service path relative to the root URL, for example, "dataflow/v1b3/projects".
  final pulumi.Input<String>? servicePath;
  /// The Shuffle service path relative to the root URL, for example, "shuffle/v1beta1".
  final pulumi.Input<String>? shuffleServicePath;
  /// The prefix of the resources the system should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final pulumi.Input<String>? tempStoragePrefix;
  /// The ID of the worker running this pipeline.
  final pulumi.Input<String>? workerId;

  /// Creates a new [WorkerSettings].
  /// [baseUrl] The base URL for accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, "Relative Uniform Resource Locators". If not specified, the default value is "http://www.googleapis.com/"
  /// [reportingEnabled] Whether to send work progress updates to the service.
  /// [servicePath] The Cloud Dataflow service path relative to the root URL, for example, "dataflow/v1b3/projects".
  /// [shuffleServicePath] The Shuffle service path relative to the root URL, for example, "shuffle/v1beta1".
  /// [tempStoragePrefix] The prefix of the resources the system should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  /// [workerId] The ID of the worker running this pipeline.
  WorkerSettings({
    this.baseUrl,
    this.reportingEnabled,
    this.servicePath,
    this.shuffleServicePath,
    this.tempStoragePrefix,
    this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': ?baseUrl,
      'reportingEnabled': ?reportingEnabled,
      'servicePath': ?servicePath,
      'shuffleServicePath': ?shuffleServicePath,
      'tempStoragePrefix': ?tempStoragePrefix,
      'workerId': ?workerId,
    };
  }

  factory WorkerSettings.fromMap(Map<String, dynamic> map) {
    return WorkerSettings(
      baseUrl: map['baseUrl'] == null ? null : (map['baseUrl']! as String).input(),
      reportingEnabled: map['reportingEnabled'] == null ? null : (map['reportingEnabled']! as bool).input(),
      servicePath: map['servicePath'] == null ? null : (map['servicePath']! as String).input(),
      shuffleServicePath: map['shuffleServicePath'] == null ? null : (map['shuffleServicePath']! as String).input(),
      tempStoragePrefix: map['tempStoragePrefix'] == null ? null : (map['tempStoragePrefix']! as String).input(),
      workerId: map['workerId'] == null ? null : (map['workerId']! as String).input(),
    );
  }
}

