// ignore_for_file: unused_element, unnecessary_cast

import 'execution_spec_response.dart';
import 'object_meta_response.dart';

/// ExecutionTemplateSpec describes the metadata and spec an Execution should have when created from a job.
class ExecutionTemplateSpecResponse {
  /// Optional. Optional metadata for this Execution, including labels and annotations. The following annotation keys set properties of the created execution: * `run.googleapis.com/cloudsql-instances` sets Cloud SQL connections. Multiple values should be comma separated. * `run.googleapis.com/vpc-access-connector` sets a Serverless VPC Access connector. * `run.googleapis.com/vpc-access-egress` sets VPC egress. Supported values are `all-traffic`, `all` (deprecated), and `private-ranges-only`. `all-traffic` and `all` provide the same functionality. `all` is deprecated but will continue to be supported. Prefer `all-traffic`.
  final ObjectMetaResponse metadata;
  /// ExecutionSpec holds the desired configuration for executions of this job.
  final ExecutionSpecResponse spec;

  /// Creates a new [ExecutionTemplateSpecResponse].
  /// [metadata] Optional. Optional metadata for this Execution, including labels and annotations. The following annotation keys set properties of the created execution: * `run.googleapis.com/cloudsql-instances` sets Cloud SQL connections. Multiple values should be comma separated. * `run.googleapis.com/vpc-access-connector` sets a Serverless VPC Access connector. * `run.googleapis.com/vpc-access-egress` sets VPC egress. Supported values are `all-traffic`, `all` (deprecated), and `private-ranges-only`. `all-traffic` and `all` provide the same functionality. `all` is deprecated but will continue to be supported. Prefer `all-traffic`.
  /// [spec] ExecutionSpec holds the desired configuration for executions of this job.
  ExecutionTemplateSpecResponse({
    required this.metadata,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': metadata.toMap(),
      'spec': spec.toMap(),
    };
  }

  factory ExecutionTemplateSpecResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionTemplateSpecResponse(
      metadata: ObjectMetaResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: ExecutionSpecResponse.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

