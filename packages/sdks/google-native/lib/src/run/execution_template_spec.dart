// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_spec.dart';
import 'object_meta.dart';

/// ExecutionTemplateSpec describes the metadata and spec an Execution should have when created from a job.
class ExecutionTemplateSpec {
  /// Optional. Optional metadata for this Execution, including labels and annotations. The following annotation keys set properties of the created execution: * `run.googleapis.com/cloudsql-instances` sets Cloud SQL connections. Multiple values should be comma separated. * `run.googleapis.com/vpc-access-connector` sets a Serverless VPC Access connector. * `run.googleapis.com/vpc-access-egress` sets VPC egress. Supported values are `all-traffic`, `all` (deprecated), and `private-ranges-only`. `all-traffic` and `all` provide the same functionality. `all` is deprecated but will continue to be supported. Prefer `all-traffic`.
  final pulumi.Input<ObjectMeta>? metadata;

  /// ExecutionSpec holds the desired configuration for executions of this job.
  final pulumi.Input<ExecutionSpec> spec;

  /// Creates a new [ExecutionTemplateSpec].
  /// [metadata] Optional. Optional metadata for this Execution, including labels and annotations. The following annotation keys set properties of the created execution: * `run.googleapis.com/cloudsql-instances` sets Cloud SQL connections. Multiple values should be comma separated. * `run.googleapis.com/vpc-access-connector` sets a Serverless VPC Access connector. * `run.googleapis.com/vpc-access-egress` sets VPC egress. Supported values are `all-traffic`, `all` (deprecated), and `private-ranges-only`. `all-traffic` and `all` provide the same functionality. `all` is deprecated but will continue to be supported. Prefer `all-traffic`.
  /// [spec] ExecutionSpec holds the desired configuration for executions of this job.
  ExecutionTemplateSpec({this.metadata, required this.spec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(
            metadata,
            (value) => value.toMap(),
          ),
      'spec': pulumi.Input.mapInputValue<ExecutionSpec, Map<String, dynamic>>(
        spec,
        (value) => value.toMap(),
      ),
    };
  }

  factory ExecutionTemplateSpec.fromMap(Map<String, dynamic> map) {
    return ExecutionTemplateSpec(
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      spec: pulumi.Input.fromValue(
        ExecutionSpec.fromMap((map['spec']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
