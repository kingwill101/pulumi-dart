// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CloudRunMetadata contains information from a Cloud Run deployment.
class CloudRunMetadataResponse {
  /// The name of the Cloud Run job that is associated with a `Rollout`. Format is `projects/{project}/locations/{location}/jobs/{job_name}`.
  final pulumi.Input<String> job;
  /// The Cloud Run Revision id associated with a `Rollout`.
  final pulumi.Input<String> revision;
  /// The name of the Cloud Run Service that is associated with a `Rollout`. Format is `projects/{project}/locations/{location}/services/{service}`.
  final pulumi.Input<String> service;
  /// The Cloud Run Service urls that are associated with a `Rollout`.
  final pulumi.Input<List<String>> serviceUrls;

  /// Creates a new [CloudRunMetadataResponse].
  /// [job] The name of the Cloud Run job that is associated with a `Rollout`. Format is `projects/{project}/locations/{location}/jobs/{job_name}`.
  /// [revision] The Cloud Run Revision id associated with a `Rollout`.
  /// [service] The name of the Cloud Run Service that is associated with a `Rollout`. Format is `projects/{project}/locations/{location}/services/{service}`.
  /// [serviceUrls] The Cloud Run Service urls that are associated with a `Rollout`.
  CloudRunMetadataResponse({
    required this.job,
    required this.revision,
    required this.service,
    required this.serviceUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'job': job,
      'revision': revision,
      'service': service,
      'serviceUrls': serviceUrls,
    };
  }

  factory CloudRunMetadataResponse.fromMap(Map<String, dynamic> map) {
    return CloudRunMetadataResponse(
      job: pulumi.Input.fromValue(map['job'] as String),
      revision: pulumi.Input.fromValue(map['revision'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
      serviceUrls: pulumi.Input.fromValue((map['serviceUrls'] as List).cast<String>()),
    );
  }
}

